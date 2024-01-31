const VideoManager = require("../models/videoManager");
const youtubeManager = require("../models/youtubeManager");

class YoutubeController {
  static async addPlaylist(req, res) {
    try {
      const { playlistId } = req.params;
      const items = await youtubeManager.fetchPlaylistItems(playlistId);
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
      if (insertId === 1) {
        res.status(200).json({ message: "done" });
      } else {
        res.status(200).json({ message: "nothing done" });
      }
    }
    // res.json(result);
  }
}

module.exports = YoutubeController;
