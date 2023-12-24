// Import access to database tables
const jwt = require("jsonwebtoken");
const userManager = require("../models/userManager");

// function authenticateToken(req, res) {
//   if (req.body.token === null) {
//     res.sendStatus(401);
//     return;
//   }

//   jwt.verify(req.body.token, process.env.APP_SECRET, (err, user) => {
//     if (err) {
//       res.sendStatus(401);
//       return;
//     }
//     req.user = user;
//     // console.log("user when we verify token", user);
//   });
// }

function generateAccessToken(user) {
  return jwt.sign(user, process.env.APP_SECRET, {
    expiresIn: "3600s",
  });
}

// The B of BREAD - Browse (Read All) operation
const browse = async (req, res, next) => {
  try {
    // Fetch all items from the database
    const items = await userManager.readAll();

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
    const { email, password } = req.body;
    // Fetch a specific item from the database based on the provided ID
    const item = await userManager.read(email, password);
    // console.log("item ", item);
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
async function edit(req, res, next) {
  try {
    const user = req.body;
    // console.log("user from body", user);
    // Fetch a specific item from the database based on the provided ID
    const affectedRow = await userManager.update(user);

    // console.log("row affected ", affectedRow);
    // If the item is not found, respond with HTTP 404 (Not Found)
    // Otherwise, respond with the item in JSON format
    if (+affectedRow === 0) {
      res.sendStatus(500);
    } else {
      res.json(affectedRow);
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
    const user = req.body;
    // console.log("user added : ", user);
    // Insert the item into the database
    const insertId = await userManager.create(user);

    // Respond with HTTP 201 (Created) and the ID of the newly inserted item
    if (+insertId !== 0) {
      res.status(201).json({ message: "Well done", insertId });
    } else {
      res
        .status(500)
        .json({ message: "email exists , try to sign in", insertId });
    }
  } catch (err) {
    res
      .status(500)
      .json({ message: "Error while registering new user", insertId: 0 });
  }
}
// check for existant user in the db
async function check(req, res) {
  try {
    const user = req.body;
    const userdb = await userManager.read(user.email, user.password);
    if (!userdb) {
      res.sendStatus(404).send(null);
    } else {
      const token = generateAccessToken({
        isAdmin: userdb.isAdmin,
        firstname: userdb.firstname,
        lastname: userdb.lastname,
      });
      res.setHeader("token", token);
      res.status(200).json({
        token,
      });
    }
  } catch (err) {
    console.error(err);
  }
}

// The D of BREAD - Destroy (Delete) operation
// This operation is not yet implemented
async function destroy(req, res) {
  const { email } = req.body;
  const result = await userManager.delete(email);
  // console.log("deleted rows number", result);
  if (+result !== 0) {
    res.json({ deleted: result });
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
};
