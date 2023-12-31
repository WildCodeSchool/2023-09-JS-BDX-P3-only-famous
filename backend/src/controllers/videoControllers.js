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

// The R of BREAD - Read operation
const read = async (req, res, next) => {
  try {
    const { ytId } = req.body;
    // Fetch a specific item from the database based on the provided ID
    const item = await videoManager.read(ytId);
    if (item == null) {
      res.sendStatus(404);
    } else {
      res.json(item);
    }
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

const readPlaylist = async (req, res, next) => {
  try {
    const { playlistId } = req.body;
    // Fetch a specific item from the database based on the provided ID
    const item = await videoManager.readPlayList(playlistId);
    if (item == null) {
      res.sendStatus(404);
    } else {
      res.json(item);
    }
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

// The E of BREAD - Edit (Update) operation
// This operation is not yet implemented
async function edit(req, res, next) {
  try {
    const { ytId, title, isPublic } = req.body;
    // console.log("user from body", user);
    // Fetch a specific item from the database based on the provided ID
    const affectedRow = await videoManager.update(ytId, title, isPublic);

    // console.log("row affected ", affectedRow);
    // If the item is not found, respond with HTTP 404 (Not Found)
    // Otherwise, respond with the item in JSON format
    if (+affectedRow === 0) {
      res
        .status(500)
        .send({ message: "Video n'est pas mise à jour!!!", affectedRow: 0 });
    } else {
      res.status(203).json({ message: "Video mise à jour!!!", affectedRow: 1 });
    }
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
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
      res.sendStatus(404).send(null);
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
  const { ytId } = req.body;
  const result = await videoManager.delete(ytId);
  // console.log("deleted rows number", result);
  if (+result !== 0) {
    res.status(200).json({ deleted: result });
  } else {
    res.status(404).send("element not found");
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
};
