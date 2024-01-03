const express = require("express");
const multer = require("multer");

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
router.get("/users", userControllers.browse);

// Route to get a specific item by ID
router.get("/users", userControllers.read);

// Route to add a new item
router.post("/users", userControllers.add);

// Route to check existed user
router.post("/user", userControllers.check);

// Route to edit existed user
router.put("/user", userControllers.edit);

// Route to delete existed users
router.delete("/user", userControllers.destroy);

// to be deleted

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./public/images/");
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}_${file.originalname}`);
  },
});
const upload = multer({ storage });
router.post("/userimage", upload.single("file"), (req, res) => {
  res.json({ message: "fileUploaded" });
});

/* ************************************************************************* */

module.exports = router;
