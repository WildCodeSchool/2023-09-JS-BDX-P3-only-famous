const VideoManager = require("../models/videoManager");
const youtubeManager = require("../models/youtubeManager");

class YoutubeController {
  static async addPlaylist(req, res) {
    try {
      const { playlistId, playlistTitle } = req.params;
      const items = await youtubeManager.fetchPlaylistItems(
        playlistId,
        playlistTitle
      );
      res.json(items);
    } catch (error) {
      console.warn(error.message);
      res.json({ message: error.message });
    }
  }

  static async fetchPlaylistById(req, res) {
    const { playlistId, playlistTitle, category } = req.body;
    const result = await youtubeManager.fetchPlaylistItems(
      playlistId,
      playlistTitle
    );
    if (result.succed) {
      const { insertId } = await VideoManager.createPlaylist({
        playlistId,
        playlistTitle,
        category,
      });

      if (insertId !== 0) {
        res.status(200).json({ message: "done" });
      } else {
        res.status(200).json({ message: "nothing done" });
      }
    }
  }
}

module.exports = YoutubeController;
