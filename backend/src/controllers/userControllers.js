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

const browseByEmail = async (req, res) => {
  try {
    const { email } = req.params;
    // Fetch all items from the database
    const items = await userManager.readAllByEmail(email);

    // Respond with the items in JSON format
    res.status(200).json(items);
  } catch (err) {
    // Pass any errors to the error-handling middleware
    res.status(400).json({ message: "Erreur coté back end" });
  }
};
// // The R of BREAD - Read operation
// const read = async (req, res, next) => {
//   try {
//     const { email, password } = req.body;
//     // Fetch a specific item from the database based on the provided ID
//     const item = await userManager.read(email, password);
//     // console.log("item ", item);
//     // If the item is not found, respond with HTTP 404 (Not Found)
//     // Otherwise, respond with the item in JSON format
//     if (item == null) {
//       res.status(404).json({ message: "Mauvais identifiants!!!" });
//     } else {
//       res.json(item);
//     }
//   } catch (err) {
//     res.status(404).json({ message: "Mauvais identifiants!!!" });
//     // Pass any errors to the error-handling middleware
//     next(err);
//   }
// };
// // The E of BREAD - Edit (Update) operation
// async function edit(req, res) {
//   try {
//     const user = req.body;
//     // console.log("user from body", user);
//     // Fetch a specific item from the database based on the provided ID
//     const affectedRow = await userManager.update(user);

//     // console.log("row affected ", affectedRow);
//     // If the item is not found, respond with HTTP 404 (Not Found)
//     // Otherwise, respond with the item in JSON format
//     if (+affectedRow === 0) {
//       res.status(500).json({
//         message: "Aucune modification réalisée, sans erreurs",
//         affectedRow: 0,
//       });
//     } else {
//       res.status(202).json({ message: "Utilisateur modifé", affectedRow });
//     }
//   } catch (err) {
//     res
//       .status(401)
//       .json({ message: "Aucune modification réalisée", affectedRow: 0 });
//   }
// }
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
      return;
    }
    res.status(500).json({ message, insertId });
  } catch (err) {
    console.error("catch triggered ", err.message);
    res.status(409).json({ message: "Email existant!!!", insertId: 0 });
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
  }
}
// The D of BREAD - Destroy (Delete) operation
// This operation is not yet implemented
async function destroy(req, res) {
  try {
    const { email, password } = req.body;
    const result = await userManager.delete(email, password);
    // console.log("deleted rows number", result);
    if (+result !== 0) {
      res.status(200).json({ message: "Utilisateur supprimé" });
    } else {
      res
        .status(404)
        .json({ message: "Mauvais identifiants ou utilisateur non existant" });
    }
  } catch (err) {
    console.error(err.message);
    res.status(401).json({ message: "Suppression non autorisée" });
  }
}
// update imgUrl f
async function updateImage(req, res) {
  try {
    // console.log(req);
    const token = req.headers.authorization.split(" ")[1];
    const { email } = jwtDecode.jwtDecode(token);
    // const result = await userManager.update({
    //   email,
    //   imgUrl: req.newPath,
    // });

    const result = await userManager.updateGeneric(email, {
      imgUrl: req.newPath,
    });

    if (result !== 0) {
      res.json({ message: "fileUploaded", result, imgUrl: req.newPath });
    } else {
      res.json({
        message: "Le compte n'est pas mis à jour",
        result,
      });
    }
  } catch (err) {
    res.status(401).json({ message: "Action non autorisée", result: 0 });
  }
}
// activer email f
async function activate(req, res) {
  try {
    const { code, email } = req.params;
    const { activationCode, isActive } = await userManager.readUserViaEmail(
      email
    );
    if (activationCode === code && activationCode !== null && !isActive) {
      const { affectedRows } = await userManager.activateAccount(email);
      if (affectedRows) {
        // delete activation code when account is validated
        await userManager.deleteActivationCode(email);
        res.redirect(`${process.env.FRONTEND_URL}?activated=true`);
        // res
        //   .status(200)
        //   .json({ message: "Votre compte est activé!!!", affectedRows });
      } else {
        res.status(404).json({
          message: "Aucune modification realisée!!!",
          affectedRows,
        });
      }
    } else
      res.status(404).json({ message: "Serieux Amigo !!! ", affectedRow: 0 });
  } catch (err) {
    console.error(err.message);
    res.status(404).json({ message: "Compte non activé !!! ", affectedRow: 0 });
  }
}

// envoie email de validation f
async function generateNewActivation(req, res) {
  const { email } = req.body;
  const { affectedRows } = await userManager.createActivationCode(email);
  if (affectedRows) {
    res.status(200).json({ message: "email de validation envoyé!!!" });
  } else {
    res.status(404).json({ message: "Essayer une autre fois !!!" });
  }
}

// update password f
async function updatePassword(req, res) {
  try {
    const { password, code, email } = req.body;
    const userdb = await userManager.readUserViaEmail(email);
    if (userdb.activationCode === code) {
      const { affectedRows } = await userManager.update({
        password,
        email,
      });
      if (affectedRows !== 0) {
        res
          .status(200)
          .json({ message: "Mot de passe actualisé!!!", result: true });
      } else {
        res.status(200).json({ message: "Erreur coté serveur", result: false });
      }
    } else {
      res.status(200).json({ message: "Mauvais code", result: false });
    }
  } catch (err) {
    res.status(409).json({ message: err.message, result: false });
  }
}

// update name f
async function updateName(req, res) {
  try {
    const { firstname, lastname, email } = req.body;
    const { affectedRows } = await userManager.update({
      firstname,
      lastname,
      email,
    });
    if (affectedRows !== 0) {
      res
        .status(200)
        .json({ message: "Nom et prénom actualisés!!!", result: true });
    } else {
      res
        .status(404)
        .json({ message: "Utilisateur non existant", result: false });
    }
  } catch (err) {
    res.status(404).json({ message: err.message, result: false });
  }
}

// send reset password email
async function sendResetPassword(req, res) {
  try {
    const { email } = req.body;
    const { affectedRows, message } = await userManager.createResetCode(email);
    if (affectedRows !== 0) {
      res.status(200).json({ message, affectedRow: 0 });
    } else {
      res.status(404).json({ message, affectedRow: 0 });
    }
  } catch (err) {
    console.error(err.message);
    res.status(404).json({ message: err.message, affectedRow: 0 });
  }
}

async function resetPassword(req, res) {
  const { password, code, email } = req.body;
  const userdb = await userManager.readUserViaEmail(email);
  if (+userdb.activationCode === +code) {
    const { affectedRows } = await userManager.updatePassword({
      password,
      email,
    });
    if (affectedRows !== 0) {
      res
        .status(200)
        .json({ message: "Mot de passe actualisé!!!", result: true });
    } else {
      res.status(500).json({ message: "Erreur coté serveur", result: false });
    }
  } else {
    res.status(500).json({ message: "Mauvais code", result: false });
  }
}

// Ready to export the controller functions
module.exports = {
  browse,
  // read,
  add,
  // edit,
  destroy,
  check,
  updateImage,
  generateNewActivation,
  updatePassword,
  activate,
  sendResetPassword,
  resetPassword,
  updateName,
  browseByEmail,
};
