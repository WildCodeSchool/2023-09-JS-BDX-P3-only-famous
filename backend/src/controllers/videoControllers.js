// Import access to database tables
const videoManager = require("../models/videoManager");

// The B of BREAD - Browse (Read All) operation
const browse = async (req, res, next) => {
  try {
    // Fetch all items from the database
    const items = await videoManager.readAll();

    // Respond with the items in JSON format
    res.json(items);
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

const browsePlaylists = async (req, res, next) => {
  try {
    // Fetch all items from the database
    const items = await videoManager.readAllPlaylists();

    // Respond with the items in JSON format
    res.json(items);
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

// The R of BREAD - Read operation
const read = async (req, res) => {
  try {
    const { ytId } = req.params;
    // Fetch a specific item from the database based on the provided ID
    const rows = await videoManager.readAllById(ytId);
    res.status(200).json({ rows, message: "Vidéo reçue", success: true });
  } catch (err) {
    res.sendStatus(404);
  }
};

const readPlaylist = async (req, res) => {
  try {
    const { playlistId } = req.query;
    // Fetch a specific item from the database based on the provided ID
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
// The E of BREAD - Edit (Update) operation
// This operation is not yet implemented
async function edit(req, res) {
  try {
    const { ytId } = req.params;
    const video = req.body;

    // console.log("user from body", user);
    // Fetch a specific item from the database based on the provided ID
    const affectedRows = await videoManager.update(ytId, video);

    // console.log("row affected ", affectedRow);
    // If the item is not found, respond with HTTP 404 (Not Found)
    // Otherwise, respond with the item in JSON format
    if (+affectedRows === 0) {
      res
        .status(500)
        .send({ message: "Video n'est pas mise à jour!!!", affectedRow: 0 });
    } else {
      res.status(203).json({ message: "Video mise à jour!!!", affectedRow: 1 });
    }
  } catch (err) {
    // Pass any errors to the error-handling middleware
    res.status(404).json({ message: "Erreur !!!", affectedRow: 0 });
  }
}

// The A of BREAD - Add (Create) operation
async function add(req, res) {
  // Extract the item data from the request body
  try {
    const video = req.body;
    // console.log("user added : ", user);
    // Insert the item into the database
    const { insertId, message } = await videoManager.create(video);

    // Respond with HTTP 201 (Created) and the ID of the newly inserted item
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
// check for existant user in the db
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

// The D of BREAD - Destroy (Delete) operation
// This operation is not yet implemented
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
    // console.log("user added : ", user);
    // Insert the item into the database
    const { insertId, message } = await videoManager.createPlaylist(playlist);

    // Respond with HTTP 201 (Created) and the ID of the newly inserted item
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

    const result = await videoManager.deletePlaylist(playlistId);
    if (+result !== 0) {
      res.status(200).json({ message: "Playliste supprimée ", success: true });
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

    // console.log("user from body", user);
    // Fetch a specific item from the database based on the provided ID
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
    // Pass any errors to the error-handling middleware
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
  getPlaylists,
  getPlaylistsByCategory,
  addPlaylist,
  destroyPlaylist,
  editPlaylist,
  getPlaylistsPagination,
};
