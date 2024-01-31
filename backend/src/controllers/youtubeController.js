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
}

module.exports = YoutubeController;
