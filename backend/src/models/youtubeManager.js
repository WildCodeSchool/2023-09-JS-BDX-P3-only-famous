const axios = require("axios");
const VideoManager = require("./videoManager");

class youtubeManager {
  static async fetchSingleVideo(ytId) {
    const apiUrl = `https://www.googleapis.com/youtube/v3/videos?key=${process.env.API_KEY}&id=${ytId}&part=snippet,contentDetails`;

    const response = await axios.get(apiUrl);

    const video = response.data.items[0];
    // console.log("video details: ", video.snippet.thumbnails);
    const { id } = video;
    const title = video.snippet.title.replaceAll('"', "");
    const thumbnails = video.snippet.thumbnails.high.url;
    // console.log("thumbnail :", thumbnails.default.url);
    const description = video.snippet.description.replaceAll('"', "");
    const duration = video.contentDetails.duration
      .replace("PT", "")
      .replace("H", ":")
      .replace("M", ":")
      .replace("S", "");
    const publishedAt = video.snippet.publishedAt.split("T")[0];

    const { tags } = video.snippet;

    await youtubeManager.timeOut();
    return { id, title, thumbnails, description, publishedAt, duration, tags };
  }

  static async timeOut(time = 50) {
    setTimeout(() => {}, time + Math.random() * 40);
  }

  static async fetchPlaylistItems(playlistId) {
    try {
      const response = await axios.get(
        `https://www.googleapis.com/youtube/v3/playlistItems`,
        {
          params: {
            part: "snippet,contentDetails",
            playlistId,
            maxResults: 100, // Adjust as needed
            key: process.env.API_KEY,
          },
        }
      );

      return response.data.items;
    } catch (error) {
      console.error("Error fetching playlist items:", error.message);
      throw error;
    }
  }

  static async fetchAsyncVideosList(items, index) {
    if (index >= 0) {
      const result = await this.fetchSingleVideo(
        items[index].snippet.resourceId.videoId
      );
      const { message } = await VideoManager.create(result);
      console.warn(message);
      const next = index - 1;
      this.fetchAsyncVideosList(items, next);
    }
  }
}

module.exports = youtubeManager;
