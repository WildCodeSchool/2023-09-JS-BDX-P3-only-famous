const videoManager = require("../models/videoManager");

const browse = async (req, res, next) => {
  const { max } = req.params;
  try {
    const items = await videoManager.readAll(max);

    res.json(items);
  } catch (err) {
    next(err);
  }
};

async function browsePagination(req, res) {
  try {
    const { start, offset } = req.query;
    const videos = await videoManager.browsePagination(start, offset);
    res.status(200).json({
      videos: videos.rows,
      count: videos.length,
      message: "all good",
    });
  } catch (err) {
    res.sendStatus(404);
  }
}

const browsePlaylists = async (req, res, next) => {
  try {
    const items = await videoManager.readAllPlaylists();

    res.json(items);
  } catch (err) {
    next(err);
  }
};

const read = async (req, res) => {
  try {
    const { ytId } = req.params;
    const rows = await videoManager.readAllById(ytId);
    res.status(200).json({ rows, message: "Vidéo reçue", success: true });
  } catch (err) {
    res.sendStatus(404);
  }
};

const readPlaylist = async (req, res) => {
  try {
    const { playlistId } = req.query;
    const { rows, title } = await videoManager.readPlayList(playlistId);
    if (rows == null) {
      res
        .status(200)
        .json({ message: "Playliste non existante", success: true });
    } else {
      res
        .status(200)
        .json({ rows, title, message: "play list récu", success: true });
    }
  } catch (err) {
    // Pass any errors to the error-handling middleware
    res.status(404).json({ message: err.message, success: false });
  }
};

const browseVideosFromPlaylist = async (req, res) => {
  try {
    const { playlistId } = req.params;
    const { start, offset } = req.query;
    // Fetch a specific item from the database based on the provided ID
    const { videos, title, count } = await videoManager.readPlayListPagination(
      playlistId,
      start,
      offset
    );
    if (videos == null) {
      res
        .status(200)
        .json({ message: "Playliste non existante", success: false });
    } else {
      res.status(200).json({
        videos,
        title,
        message: "play list récu",
        success: true,
        count,
      });
    }
  } catch (err) {
    res.status(404).json({ message: err.message, success: false });
  }
};
async function edit(req, res) {
  try {
    const { ytId } = req.params;
    const video = req.body;
    const affectedRows = await videoManager.update(ytId, video);

    if (+affectedRows === 0) {
      res
        .status(500)
        .send({ message: "Video n'est pas mise à jour!!!", affectedRow: 0 });
    } else {
      res.status(203).json({ message: "Video mise à jour!!!", affectedRow: 1 });
    }
  } catch (err) {
    res.status(404).json({ message: "Erreur !!!", affectedRow: 0 });
  }
}
async function add(req, res) {
  try {
    const video = req.body;
    const { insertId, message } = await videoManager.create(video);

    if (+insertId !== 0) {
      res.status(201).json({ message, insertId });
      return { message, insertId };
    }
    res.status(500).json({ message, insertId });
    return { message, insertId };
  } catch (err) {
    res.status(500).json({ message: "Video non ajoutée!!!", insertId: 0 });
    return { message: "Video non ajoutée!!!", insertId: 0 };
  }
}
async function check(req, res) {
  try {
    const { ytId } = req.body;
    const videodb = await videoManager.read(ytId);
    if (!videodb) {
      res.sendStatus(404);
    } else {
      res.status(200).json({ message: "Video existe" });
    }
  } catch (err) {
    console.error(err);
  }
}

async function destroy(req, res) {
  try {
    const { ytId } = req.params;

    const result = await videoManager.delete(ytId);
    if (+result !== 0) {
      res.status(200).json({ message: "Vidéo supprimé e ", success: true });
    } else {
      res
        .status(404)
        .json({ message: "Aucune vidéo supprimée ", success: false });
    }
  } catch (error) {
    res.status(404).json({ message: error.message, success: false });
  }
}

// playlist manipulation
async function addPlaylist(req, res) {
  try {
    const playlist = req.body;
    const { insertId, message } = await videoManager.createPlaylist(playlist);

    if (+insertId !== 0) {
      res.status(201).json({ message, insertId });
    } else {
      res.status(500).json({ message, insertId });
    }
  } catch (err) {
    res.status(500).json({ message: err.message, insertId: 0 });
  }
}

async function destroyPlaylist(req, res) {
  try {
    const { playlistId } = req.params;
    const resVideos = await videoManager.deleteAllVideosFromPlayList(
      playlistId
    );
    const result = await videoManager.deletePlaylist(playlistId);
    if (+result !== 0) {
      res.status(200).json({
        message: `Playliste supprimée (${resVideos} videos supprimées)`,
        success: true,
      });
    } else {
      res
        .status(404)
        .json({ message: "Aucune playliste supprimée ", success: false });
    }
  } catch (error) {
    res.status(404).json({ message: error.message, success: false });
  }
}

async function editPlaylist(req, res) {
  try {
    const { playlistId } = req.params;
    const playlist = req.body;

    const affectedRows = await videoManager.updatePlaylist(
      playlistId,
      playlist
    );
    if (+affectedRows === 0) {
      res.status(500).send({
        message: "Playliste n'est pas mise à jour!!!",
        affectedRow: 0,
      });
    } else {
      res
        .status(203)
        .json({ message: "Playliste mise à jour!!!", affectedRow: 1 });
    }
  } catch (err) {
    res.status(404).json({ message: err.message, affectedRow: 0 });
  }
}

async function getPlaylistsByCategory(req, res) {
  try {
    const { category } = req.params;
    const playlists = await videoManager.readAllPlaylistsByCategory(category);
    res.status(200).json({ playlists, message: "all good" });
  } catch (err) {
    res.sendStatus(404);
  }
}

async function getPlaylists(req, res) {
  try {
    const playlistId = req.params;
    const playlists = await videoManager.readAllPlaylists(playlistId);
    res.status(200).json({ playlists, message: "all good" });
  } catch (err) {
    res.sendStatus(404);
  }
}

async function getPlaylistsPagination(req, res) {
  try {
    const { start, offset } = req.query;
    const playlists = await videoManager.readAllPlaylistsPagination(
      start,
      offset
    );
    res.status(200).json({
      playlists: playlists.rows,
      count: playlists.length,
      message: "all good",
    });
  } catch (err) {
    res.sendStatus(404);
  }
}

async function getPlaylistsByCategoryPagination(req, res) {
  try {
    const { category } = req.params;
    const { start, offset } = req.query;
    const playlists = await videoManager.readAllPlaylistsByCategoryPagination(
      category,
      start,
      offset
    );
    res.status(200).json({
      playlists: playlists.rows,
      count: playlists.length,
      message: "all good",
    });
  } catch (err) {
    res.sendStatus(404);
  }
}

async function addPlaylistFromYoutube(req, res) {
  const { playlistId } = req.prams;
  res.send(playlistId);
}
// Ready to export the controller functions
module.exports = {
  browse,
  read,
  add,
  edit,
  destroy,
  check,
  readPlaylist,
  browsePlaylists,
  browsePagination,
  getPlaylists,
  getPlaylistsByCategory,
  addPlaylist,
  destroyPlaylist,
  editPlaylist,
  getPlaylistsPagination,
  addPlaylistFromYoutube,
  getPlaylistsByCategoryPagination,
  browseVideosFromPlaylist,
};
