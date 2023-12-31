const database = require("../../database/client");

class VideoManager {
  static async create(video) {
    try {
      const [result] = await database.query(
        `insert into video (ytId,
        title,
        playlistTitle,
        playlistId,
        description,
        thumbnails,
        duration,
        publishDate,
        tags,
        isPublic)
         values (?,?,?,?,?,?,?,?,?,?)`,
        [
          video.ytId,
          video.title,
          video.playlistTitle,
          video.playlistId,
          video.description,
          video.thumbnails,
          video.duration,
          video.publishDate,
          video.tags,
          video.isPublic ?? 0,
        ]
      );
      return { message: "Vidéo ajoutée!!!", insertId: result.insertId };
    } catch (err) {
      console.error("error while inserting new video in user manager: ", err);
      return { message: "Video non ajoutée!!!", insertId: 0 };
    }
  }
  // The Rs of CRUD - Read operations

  static async read(ytId) {
    // Execute the SQL SELECT query to retrieve a specific item by its ID
    const [rows] = await database.query(`select * from video where ytId = ?`, [
      ytId,
    ]);
    if (rows[0]) {
      return rows[0];
    }
    return null;
  }

  static async readAll() {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(`select * from video`);

    // Return the array of items
    return rows;
  }

  static async readPlayList(playListId) {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(
      `select * from video where playlistId = ? `,
      [playListId]
    );

    // Return the array of items
    return rows;
  }

  // The U of CRUD - Update operation
  // TODO: Implement the update operation to modify an existing item

  static async update(ytId, title, isPublic) {
    const [videodb] = await database.query(
      `select * from video where ytId = ?`,
      [ytId]
    );
    if (videodb[0]) {
      const [res] = await database.query(
        "update video set title = ?, isPublic = ?   WHERE ytId = ?",
        [title, isPublic, ytId]
      );
      return res.affectedRows;
    }
    return 0;
  }

  // The D of CRUD - Delete operation
  // TODO: Implement the delete operation to remove an item by its ID

  static async delete(ytId) {
    const res = await database.query("delete from video WHERE ytId = ?", [
      ytId,
    ]);
    return res.affectedRows;
  }
}

module.exports = VideoManager;
