// Import access to database tables
const jwt = require("jsonwebtoken");
const jwtDecode = require("jwt-decode");
const userManager = require("../models/userManager");
const activationManager = require("../models/activationManager");

async function getProfile(req, res) {
  try {
    const user = await userManager.readUserViaEmail(req.userInfo.email);
    res.status(200).json(user);
    res.end();
  } catch (error) {
    res.sendStatus(401);
  }
}

function generateAccessToken(user) {
  return jwt.sign(user, process.env.APP_SECRET, {
    expiresIn: "36000s",
  });
}

const browse = async (req, res, next) => {
  try {
    const items = await userManager.readAll();
    res.json(items);
  } catch (err) {
    next(err);
  }
};

const browseByEmail = async (req, res) => {
  try {
    const { email } = req.params;
    const items = await userManager.readAllByEmail(email);
    res.status(200).json(items);
  } catch (err) {
    res.status(400).json({ message: "Erreur coté back end" });
  }
};

function validatePassword(password) {
  const regex =
    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
  return regex.test(password);
}

async function add(req, res) {
  try {
    const user = req.body;
    if (!validatePassword(user.password)) {
      return res
        .status(401)
        .json({ message: "password non-conforme", insertId: 0 });
    }
    const { message, insertId } = await userManager.create(user);

    if (+insertId !== 0) {
      return res.status(201).json({ message, insertId });
    }
    return res.status(500).json({ message, insertId });
  } catch (err) {
    // console.error("catch triggered ", err.message);
    return res.status(409).json({ message: "Email existant!!!", insertId: 0 });
  }
}
async function check(req, res) {
  try {
    const user = req.body;
    // const { email, password } = req.query;
    const userdb = await userManager.read(user.email, user.password);
    // const userdb = await userManager.read(email, password);
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
async function destroy(req, res) {
  try {
    const { email } = req.body;
    const result = await userManager.delete(email);
    if (+result !== 0) {
      res.status(202).json({ message: "Utilisateur supprimé" });
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
async function updateImage(req, res) {
  try {
    const token = req.headers.authorization.split(" ")[1];
    const { email } = jwtDecode.jwtDecode(token);

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
async function activate(req, res) {
  try {
    const { code, email } = req.params;
    const { activationCode, isActive } = await userManager.readUserViaEmail(
      email
    );
    if (activationCode === code && activationCode !== null && !isActive) {
      const { affectedRows } = await userManager.activateAccount(email);
      if (affectedRows) {
        await userManager.deleteActivationCode(email);
        res.redirect(`${process.env.FRONTEND_URL}?activated=true`);
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

async function generateNewActivation(req, res) {
  const { email } = req.body;
  const { affectedRows } = await userManager.createActivationCode(email);
  if (affectedRows) {
    res.status(200).json({ message: "email de validation envoyé!!!" });
  } else {
    res.status(404).json({ message: "Essayer une autre fois !!!" });
  }
}

async function updatePassword(req, res) {
  try {
    const { password, code, email } = req.body;

    const userdb = await userManager.readUserViaEmail(email);
    if (userdb.activationCode === code) {
      const { affectedRows } = await userManager.updatePassword({
        email,
        password,
      });
      if (affectedRows !== 0) {
        res
          .status(200)
          .json({ message: "Mot de passe actualisé!!!", result: true });
      } else {
        res.status(400).json({ message: "Erreur coté serveur", result: false });
      }
    } else {
      res.status(400).json({ message: "Mauvais code", result: false });
    }
  } catch (err) {
    res.status(400).json({ message: err.message, result: false });
  }
}
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

async function updateDescription(req, res) {
  try {
    const { description, email } = req.body;
    const { affectedRows } = await userManager.update({
      description,
      email,
    });
    if (affectedRows !== 0) {
      res
        .status(200)
        .json({ message: "description actualisée!!!", result: true });
    } else {
      res
        .status(400)
        .json({ message: "Utilisateur non existant", result: false });
    }
  } catch (err) {
    res.status(404).json({ message: err.message, result: false });
  }
}

async function updateRole(req, res) {
  try {
    const { email, role } = req.params;
    const isAdmin = +role;
    const { affectedRows } = await userManager.update({
      isAdmin,
      email,
    });
    if (affectedRows !== 0) {
      res.status(200).json({
        message: "Nom et prénom actualisés!!!",
        result: true,
      });
    } else {
      res
        .status(404)
        .json({ message: "Utilisateur non existant", result: false });
    }
  } catch (err) {
    res.status(404).json({ message: err.message, result: false });
  }
}

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

async function recieveMail(req, res) {
  try {
    const { email, firstname, lastname } = req.userInfo;
    const { title, text } = req.body;
    activationManager.sendMail(email, firstname, lastname, title, text);
    activationManager.autoAnswerMail(email, firstname, title, text);
    res.status(200).send("Mail envoyé");
  } catch (err) {
    console.error(err.message);
    res.status(404).json({ message: "Aucun mail envoyé " });
  }
}

module.exports = {
  recieveMail,
  browse,
  add,
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
  getProfile,
  updateDescription,
  updateRole,
};
