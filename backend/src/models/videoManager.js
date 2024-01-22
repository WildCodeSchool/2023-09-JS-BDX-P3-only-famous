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

  static async readAllPlaylists() {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(`select * from playlist`);
    // Return the array of items
    return rows;
  }

  static async readPlaylistById(playlistId) {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(
      `select * from video where playlistId like '${playlistId}%'`
    );
    // Return the array of items
    return rows[0];
  }

  static async readAllById(ytId) {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(
      `select * from video where ytId like '${ytId}%'`
    );
    // Return the array of items
    return rows;
  }

  static async readPlayList(playListId) {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(
      `select * from video where playlistId = ? `,
      [playListId]
    );
    const [playlist] = await database.query(
      `select playlistTitle from playlist where playlistId = ? `,
      [playListId]
    );

    // Return the array of items
    return { rows, title: playlist[0].playlistTitle };
  }

  // The U of CRUD - Update operation
  // TODO: Implement the update operation to modify an existing item

  static async update(ytId, video) {
    // console.log(video);
    let sql = "UPDATE video set";
    const sqlValues = [];
    for (const [key, value] of Object.entries(video)) {
      sql += `${sqlValues.length ? "," : ""} ${key} = ?`;

      sqlValues.push(value);
    }
    sql += " where ytId = ?";
    sqlValues.push(ytId);
    const [res] = await database.query(sql, sqlValues);
    return res.affectedRows;
  }

  // The D of CRUD - Delete operation
  // TODO: Implement the delete operation to remove an item by its ID

  static async delete(ytId) {
    try {
      const [res] = await database.query("delete from video WHERE ytId = ?", [
        ytId,
      ]);
      return res.affectedRows;
    } catch (error) {
      throw new Error(error.message);
    }
  }
}

module.exports = VideoManager;
