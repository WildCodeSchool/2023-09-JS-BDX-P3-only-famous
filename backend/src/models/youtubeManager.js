const axios = require("axios");
const VideoManager = require("./videoManager");

class youtubeManager {
  static convertToTimeFormat(input) {
    const reptms = /^PT(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?$/;
    let hours = 0;
    let minutes = 0;
    let seconds = 0;
    let totalseconds = 0;
    if (reptms.test(input)) {
      // console.log("win");
      const matches = reptms.exec(input);
      if (matches[1]) hours = Number(matches[1]);
      if (matches[2]) minutes = Number(matches[2]);
      if (matches[3]) seconds = Number(matches[3]);
      totalseconds = hours * 3600 + minutes * 60 + seconds;
      return new Date(totalseconds * 1000).toISOString().slice(11, 19);
    }
    // console.log("fail");

    return new Date(0).toISOString().slice(11, 19);
  }

  static async fetchSingleVideo(ytId) {
    const apiUrl = `https://www.googleapis.com/youtube/v3/videos?key=${process.env.API_KEY}&id=${ytId}&part=snippet,contentDetails`;

    const response = await axios.get(apiUrl);
    // console.log(response.data.items[0]);

    const video = response.data.items[0];
    // console.log("video details: ", video.snippet.thumbnails);
    const { id } = video;
    // const { playlistId } = video.snippet;
    const title = video.snippet.title.replaceAll('"', "");
    const thumbnails = video.snippet.thumbnails.high.url;
    // console.log("thumbnail :", thumbnails.default.url);
    const description = video.snippet.description.replaceAll('"', "");
    const duration = youtubeManager.convertToTimeFormat(
      video.contentDetails.duration
    );
    const publishedAt = video.snippet.publishedAt.split("T")[0];

    const { tags } = video.snippet;

    await youtubeManager.timeOut();
    return {
      id,
      title,
      thumbnails,
      description,
      publishedAt,
      duration,
      tags,
    };
  }

  static async timeOut(time = 50) {
    setTimeout(() => {}, time + Math.random() * 40);
  }

  static async fetchPlaylistItems(playlistId, playlistTitle) {
    try {
      const response = await axios.get(
        `https://www.googleapis.com/youtube/v3/playlistItems`,
        {
          params: {
            part: "snippet,contentDetails",
            playlistId,
            maxResults: 100,
            key: process.env.API_KEY,
          },
        }
      );
      const obj = [];
      await youtubeManager.fetchSinglePlaylist(
        response.data.items,
        obj,
        playlistId,
        playlistTitle
      );
      return { obj, succed: true };
    } catch (error) {
      console.error("Error fetching playlist items:", error.message);
      throw error;
    }
  }

  static async fetchAsyncVideosList(items, index, output) {
    if (index >= 0) {
      const result = await this.fetchSingleVideo(
        items[index].snippet.resourceId.videoId
      );
      // console.log(result);
      // console.log("Index after printing ", index);
      output.push(result);
      // const { message } = await VideoManager.create(result);
      // console.warn(message);
      youtubeManager.fetchAsyncVideosList(items, index - 1);
    }
  }

  static async fetchSinglePlaylist(items, obj, playlistId, playlistTitle) {
    try {
      /* eslint-disable no-await-in-loop */
      for (let i = 0; i < items.length; i += 1) {
        const result = await youtubeManager.fetchSingleVideo(
          items[i].snippet.resourceId.videoId
        );
        await VideoManager.create({
          ...result,
          playlistId,
          playlistTitle,
          ytId: result.id,
          publishDate: result.publishedAt,
        });
        obj.push({ ...result, playlistId, playlistTitle, ytId: result.id });
      }
      return { message: "all videos added", succeed: true };
    } catch (error) {
      throw new Error(error.message);
    }
  }
}

module.exports = youtubeManager;
