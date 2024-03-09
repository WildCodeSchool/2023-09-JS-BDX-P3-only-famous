const express = require("express");
const multer = require("multer");
const multerMiddle = require("./middlewares/multerMiddle");
const userMiddle = require("./middlewares/userMiddle");
const { verifyToken } = require("./middlewares/userMiddle");

const router = express.Router();

// const jwt = require("jsonwebtoken");

// generation du token

// function generateAccessToken(req, res, next) {
//   const user = req.body;
//   req.body.token = jwt.sign(user, process.env.APP_SECRET, {
//     expiresIn: "3600s",
//   });
//   next();
// }

// function authenticateToken(req, res, next) {
//   const authHeader = req.headers.authorization;
//   const token = authHeader && authHeader.split(" ")[1];

//   if (token == null) return res.sendStatus(401);

//   jwt.verify(token, process.env.APP_SECRET, (err, user) => {
//     if (err) {
//       res.sendStatus(401);
//       return;
//     }
//     req.user = user;
//     next();
//   });
//   console.log(result);
// }

// authentificate Token

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// Import itemControllers module for handling item-related operations
const userControllers = require("./controllers/userControllers");

// Route to get a list of items
router.get("/users", userMiddle.verifyAdminToken, userControllers.browse);

router.get(
  "/users/:email",
  userMiddle.verifyAdminToken,
  userControllers.browseByEmail
);

// Route to get a specific item by ID
// router.get("/users", userControllers.read);

// Route to add a new item
router.post("/users", userControllers.add);

// Route to check existed user
router.post("/user", userControllers.check);

// Route to edit existed user
// router.put("/user", userControllers.edit);

// Route to delete existed users
router.delete("/user", userMiddle.verifyAdminToken, userControllers.destroy);

router.get("/getprofile", verifyToken, userControllers.getProfile);

// to be deleted
const upload = multer({ dest: "./public/uploads/" });
router.post(
  "/userimage",
  userMiddle.verifyToken,
  // multerMiddle.saveFile,
  upload.single("file"),
  multerMiddle.renameFile, // fonction pour renomer le fichier
  userControllers.updateImage
);
// activateAccount
router.get("/validation/:code/:email", userControllers.activate);
// re-send activation code
router.post("/reactivate", userControllers.generateNewActivation);
// re-send activation code
// router.patch("/npassword", userControllers.updatePassword);
// resend code  used to reset password
router.post("/sendreset", userControllers.sendResetPassword);
// reset password
router.post("/reset", userControllers.updatePassword);
// update first and lastname
router.post("/updatename", userMiddle.verifyToken, userControllers.updateName);

router.post(
  "/updatedescription",
  userMiddle.verifyToken,
  userControllers.updateDescription
);

/* ************************************************************************* */

module.exports = router;
