// Import access to database tables
const jwt = require("jsonwebtoken");
const jwtDecode = require("jwt-decode");
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
    const { message, insertId } = await userManager.create(user);

    // Respond with HTTP 201 (Created) and the ID of the newly inserted item
    if (+insertId !== 0) {
      res.status(201).json({ message, insertId });
      return { message, insertId };
    }
    res.status(500).json({ message, insertId });
    return { message, insertId };
  } catch (err) {
    console.error("catch triggered ");
    res.status(500).json({ message: "Email existant!!!", insertId: 0 });
    return { message: "Email existant!!!", insertId: 0 };
  }
}
// check for existant user in the db
async function check(req, res) {
  try {
    const user = req.body;
    const userdb = await userManager.read(user.email, user.password);
    if (!userdb) {
      res.status(404).json({
        user: null,
        message: "Identifiants incorrects!!!",
      });
    } else {
      const token = generateAccessToken({
        isAdmin: userdb.isAdmin,
        firstname: userdb.firstname,
        lastname: userdb.lastname,
        email: user.email,
        isActive: user.isActive,
        imgUrl: user.imgUrl,
      });
      delete userdb.password;
      res.setHeader("token", token);
      res.status(200).json({
        user: userdb,
        message: "Bravo!!! Vous êtes connecté",
      });
    }
  } catch (err) {
    res.status(404).json({
      user: null,
      message: "Mauvais identifiants",
    });
    console.error("My error : ", err);
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

async function updateImage(req, res) {
  const token = req.headers.authorization.split(" ")[1];
  const { email } = jwtDecode.jwtDecode(token);
  const result = await userManager.updateImage(email, req.newPath);
  if (result !== 0) {
    res.json({ message: "fileUploaded", result, imgUrl: req.newPath });
  } else {
    res.json({
      message: "failed to update database",
      result,
    });
  }
}

async function activateAccount(req, res) {
  const { email, code } = req.body;

  const { activationCode } = await userManager.getActivationCode(email);
  if (+activationCode === +code && +activationCode !== 0) {
    const { affectedRows } = await userManager.activateAccount(email);
    if (affectedRows) {
      // delete activation code when account is validated
      await userManager.deleteActivationCode(email);
      res
        .status(200)
        .json({ message: "Votre compte est activé!!!", affectedRows });
    } else {
      res.status(404).json({
        message: "Erreur coté serveur, essaie une autre fois!!!",
        affectedRows,
      });
    }
  } else
    res.status(404).json({ message: "Serieux Amigo !!! ", affectedRow: 0 });
}

async function generateNewActivation(req, res) {
  const { email } = req.body;
  const { affectedRows } = await userManager.createActivationCode(email);
  if (affectedRows) {
    res.status(200).json({ message: "email de validation envoyé!!!" });
  } else {
    res.status(404).json({ message: "Essayer une autre fois!!!" });
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
  updateImage,
  activateAccount,
  generateNewActivation,
};
