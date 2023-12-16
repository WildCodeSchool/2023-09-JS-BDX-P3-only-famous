// Import access to database tables
const tables = require("../tables");

// The B of BREAD - Browse (Read All) operation
const browse = async (req, res, next) => {
  try {
    // Fetch all items from the database
    const items = await tables.user.readAll();

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
    // Fetch a specific item from the database based on the provided ID
    const item = await tables.user.read(req.params.email);

    // If the item is not found, respond with HTTP 404 (Not Found)
    // Otherwise, respond with the item in JSON format
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

// The A of BREAD - Add (Create) operation
const add = async (req, res, next) => {
  // Extract the item data from the request body
  const user = req.body;

  try {
    // Insert the item into the database
    const insertId = await tables.user.create(user);

    // Respond with HTTP 201 (Created) and the ID of the newly inserted item
    res.status(201).json({ insertId });
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};
async function check(req, res, next) {
  try {
    const user = req.body;
    const userdb = await tables.user.read(req.body.email);
    // console.log("user ", userdb);

    if (!userdb) {
      // console.log("user not found");
      res.sendStatus(404);
      return 0;
    }
    if (userdb.password !== user.password) {
      // console.log("wrong password");

      res.sendStatus(404);
      return 0;
    }
    // console.log("user found");

    res.status(200).json(userdb.id);

    return 1;
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
    return 0;
  }
}

// The D of BREAD - Destroy (Delete) operation
// This operation is not yet implemented

// Ready to export the controller functions
module.exports = {
  browse,
  read,
  // edit,
  add,
  check,
  // destroy,
};
