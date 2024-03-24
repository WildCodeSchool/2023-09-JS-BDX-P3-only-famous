const express = require("express");
const multer = require("multer");
const uploadController = require("./controllers/uploadController");
const multerMiddle = require("./middlewares/multerMiddle");
const userMiddle = require("./middlewares/userMiddle");

const routerUpload = express.Router();

const upload = multer({ dest: "./public/uploads/" });
routerUpload.post(
  "/video",
  userMiddle.verifyAdminToken,
  upload.single("file"),
  multerMiddle.renameFile,
  uploadController.uploadVideo
);
routerUpload.get(
  "/initialize",
  userMiddle.verifyAdminToken,
  uploadController.initiateAuth
);
routerUpload.get("/setuptoken", uploadController.getYoutubeCodeBackUp);
routerUpload.post(
  "/uploadvideo",
  userMiddle.verifyAdminToken,
  uploadController.uploadVideo
);

module.exports = routerUpload;
