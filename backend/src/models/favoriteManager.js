const database = require("../../database/client");

class FavoriteManager {
  static async getFavoriById(email) {
    try {
      const [rows] = await database.query(
        `select * from favorite where email = ?`,
        [email]
      );
      return rows;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async addPlayListToUserFavorite(playlistId, email) {
    try {
      const res = await database.query(
        `
              INSERT INTO favorite (playlistId, email)
              VALUES (?, ?)
          `,
        [playlistId, email]
      );
      return res;
    } catch (error) {
      console.error("Erreur lors de l'exécution de la transaction :", error);
      throw new Error(error.message);
    }
  }

  static async delete(playlistId, email) {
    try {
      const [res] = await database.query(
        "delete from favorite WHERE playlistId = ? and email = ?",
        [playlistId, email]
      );

      return res;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async getFavorites(email) {
    try {
      const [res] = await database.query(
        `select playlistId from favorite WHERE email = ?`,
        [email]
      );

      return res;
    } catch (err) {
      throw new Error(err.message);
    }
  }
}

module.exports = FavoriteManager;
