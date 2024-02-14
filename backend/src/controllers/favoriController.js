const FavoriteManager = require("../models/favoriteManager");

class FavoriteController {
  static async readById(req, res) {
    try {
      const { id } = req.params;
      const rows = await FavoriteManager.getFavoriById(id);
      res.status(200).json(rows);
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }

  static async addPlaylistToUserFavorite(req, res) {
    try {
      const { playlistId, userId } = req.body;
      const result = await FavoriteManager.addPlayListToUserFavorite(
        playlistId,
        userId
      );
      res.status(200).json({ message: `Added element ${result[0].insertId}` });
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }

  static async deletePlaylistToUserFavorite(req, res) {
    try {
      const { playlistId, userId } = req.body;
      const result = await FavoriteManager.delete(playlistId, userId);
      res
        .status(200)
        .json({ message: `deleted element ${result.affectedRows}` });
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }

  static async getFavorite(req, res) {
    try {
      const { userId } = req.params;
      const result = await FavoriteManager.getFavorites(userId);
      res.status(200).json(result);
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
  }
}

module.exports = FavoriteController;
