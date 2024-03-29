const database = require("../../database/client");

class VideoManager {
  static async create(video) {
    try {
      const [result] = await database.query(
        `insert into video (ytId,
        title,
        playlistId,
        description,
        thumbnails,
        duration,
        publishDate,
        tags,
        isPublic)
         values (?,?,?,?,?,?,?,?,?)`,
        [
          video.ytId,
          video.title,
          video.playlistId,
          video.description,
          video.thumbnails,
          video.duration,
          video.publishDate,
          video.tags,
          video.isPublic ?? 1,
        ]
      );
      return { message: "Vidéo ajoutée!!!", insertId: result.insertId };
    } catch (err) {
      console.error("error while inserting new video in user manager: ", err);
      return { message: "Video non ajoutée!!!", insertId: 0 };
    }
  }

  static async deleteAllVideosFromPlayList(playlistId) {
    try {
      const [res] = await database.query(
        "delete from video WHERE playlistId = ?",
        [playlistId]
      );
      return res.affectedRows;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async read(ytId) {
    const [rows] = await database.query(`select * from video where ytId = ?`, [
      ytId,
    ]);
    if (rows[0]) {
      return rows[0];
    }
    return null;
  }

  static async readAll(max) {
    const [rows] = await database.query(`select * from video limit ${max}`);
    return rows;
  }

  static async browsePagination(start, offset) {
    try {
      const [count] = await database.query(
        `select count(*) as length  from video`
      );
      // console.log(count[0]);
      const [rows] = await database.query(
        `select * from video limit ${start}, ${offset}`
      );
      // console.log(rows);
      return { rows, ...count[0] };
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async readAllById(ytId) {
    const [rows] = await database.query(
      `select * from video where ytId like '${ytId}%'`
    );
    return rows;
  }

  static async readPlayList(playListId) {
    const [rows] = await database.query(
      `select * from video where playlistId = ? `,
      [playListId]
    );
    const [playlist] = await database.query(
      `select playlistTitle from playlist where playlistId = ? `,
      [playListId]
    );

    return { rows, title: playlist[0].playlistTitle };
  }

  // static async readPlaylist(playlistId) {
  //   try {
  //     const [result] = await database.query(
  //       `
  //       SELECT video.*, playlist.playlistTitle as title
  //       FROM video
  //       JOIN playlist ON video.playlistId = playlist.playlistId
  //       WHERE video.playlistId = ?
  //     `,
  //       [playlistId]
  //     );

  //     const { title, ...videos } = result[0];
  //     return { rows: videos, title };
  //   } catch (error) {
  //     throw new Error(error.message);
  //   }
  // }

  static async readPlayListPagination(playListId, start, offset) {
    const [count] = await database.query(
      `select count(*) as length  from video where playlistId = ?`,
      [playListId]
    );
    const [rows] = await database.query(
      `select * from video where playlistId = ? limit ${start}, ${offset}`,
      [playListId]
    );
    const [playlist] = await database.query(
      `select playlistTitle from playlist where playlistId = ?  `,
      [playListId]
    );

    return {
      videos: rows,
      title: playlist[0].playlistTitle,
      count: count[0].length,
    };
  }

  static async update(ytId, video) {
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

  // playlists manipulation
  static async createPlaylist(playlist) {
    try {
      const [result] = await database.query(
        `insert into playlist (
        playlistTitle,
        playlistId,
        category)
         values (?,?,?)`,
        [playlist.playlistTitle, playlist.playlistId, playlist.category]
      );
      return { message: "Playliste ajoutée!!!", insertId: result.insertId };
    } catch (err) {
      throw new Error("Playlist non ajoutée");
    }
  }

  static async deletePlaylist(playlistId) {
    try {
      const [res] = await database.query(
        "delete from playlist WHERE playlistId = ?",
        [playlistId]
      );

      return res.affectedRows;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async updatePlaylist(playlistId, playlist) {
    try {
      let sql = "UPDATE playlist set";
      const sqlValues = [];
      for (const [key, value] of Object.entries(playlist)) {
        sql += `${sqlValues.length ? "," : ""} ${key} = ?`;

        sqlValues.push(value);
      }
      sql += " where playlistId = ?";
      sqlValues.push(playlistId);
      const [res] = await database.query(sql, sqlValues);
      return res.affectedRows;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async readAllPlaylistsByCategory(category) {
    try {
      const [rows] = await database.query(
        `select * from playlist where category like '%${category}%'`
      );
      return rows;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async readAllPlaylistsByCategoryPagination(category, start, offset) {
    try {
      // console.log("test");
      const [count] = await database.query(
        `select count(*) as length  from playlist where category like '%${category}%'`
      );
      // console.log(count[0]);
      const [rows] = await database.query(
        `select * from playlist where category like '%${category}%' limit ${start}, ${offset}`
      );
      // console.log(rows);
      return { rows, ...count[0] };
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async readAllPlaylists() {
    try {
      const [rows] = await database.query(`select * from playlist`);
      return rows;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  // pagination

  static async readAllPlaylistsPagination(start, offset) {
    try {
      // console.log("test");
      const [count] = await database.query(
        `select count(*) as length  from playlist`
      );
      // console.log(count[0]);
      const [rows] = await database.query(
        `select * from playlist limit ${start}, ${offset}`
      );
      // console.log(rows);
      return { rows, ...count[0] };
    } catch (error) {
      throw new Error(error.message);
    }
  }
}

module.exports = VideoManager;
