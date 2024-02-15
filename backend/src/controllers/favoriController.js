const FavoriteManager = require("../models/favoriteManager");

class FavoriteController {
  static async addPlaylistToUserFavorite(req, res) {
    try {
      const { playlistId, email } = req.body;
      const result = await FavoriteManager.addPlayListToUserFavorite(
        playlistId,
        email
      );
      res.status(200).json({ message: `Added element ${result[0].insertId}` });
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }

  static async deletePlaylistToUserFavorite(req, res) {
    try {
      const { email, playlistId } = req.params;
      const result = await FavoriteManager.delete(playlistId, email);
      res
        .status(200)
        .json({ message: `deleted element ${result.affectedRows}` });
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }

  static async getFavorite(req, res) {
    try {
      const { email } = req.params;
      const result = await FavoriteManager.getFavorites(email);
      res.status(200).json(result);
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }
}

module.exports = FavoriteController;
