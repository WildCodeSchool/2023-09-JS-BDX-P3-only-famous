const database = require("../../database/client");

class FavoriteManager {
  static async getFavoriById(id) {
    try {
      const [rows] = await database.query(
        `select * from favorite where userId = ?`,
        [id]
      );
      return rows;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  // static async addPlayListToUserFavorite(playlistId, userId) {
  //   try {
  //     await database.query("START TRANSACTION");

  //     const [countResult] = await database.query(
  //       `
  //         SELECT COUNT(*) AS count
  //         FROM favorite
  //         WHERE playlistId = ? AND userId = ?
  //     `,
  //       [playlistId, userId]
  //     );

  //     const existCount = countResult[0].count;
  //     console.log(existCount);
  //     let res = null;
  //     if (existCount === 0) {
  //       res = await database.query(
  //         `
  //             INSERT INTO favorite (playlistId, userId)
  //             VALUES (?, ?)
  //         `,
  //         [playlistId, userId]
  //       );
  //       console.log("result", res);
  //     }

  //     await database.query("COMMIT");
  //     return res;
  //   } catch (error) {
  //     await database.query("ROLLBACK");
  //     console.error("Erreur lors de l'exécution de la transaction :", error);
  //   }
  // }

  static async addPlayListToUserFavorite(playlistId, userId) {
    try {
      const res = await database.query(
        `
              INSERT INTO favorite (playlistId, userId)
              VALUES (?, ?)
          `,
        [playlistId, userId]
      );
      return res;
    } catch (error) {
      console.error("Erreur lors de l'exécution de la transaction :", error);
      throw new Error(error.message);
    }
  }

  static async delete(playlistId, userId) {
    try {
      const [res] = await database.query(
        "delete from favorite WHERE playlistId = ? and userId = ?",
        [playlistId, userId]
      );

      return res;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async getFavorites(userId) {
    try {
      const [res] = await database.query(
        "select playlistId from favorite WHERE userId = ?",
        [userId]
      );

      return res;
    } catch (err) {
      throw new Error(err.message);
    }
  }
}

module.exports = FavoriteManager;
