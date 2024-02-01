const express = require("express");
const multer = require("multer");
const uploadController = require("./controllers/uploadController");
const multerMiddle = require("./middlewares/multerMiddle");

const routerUpload = express.Router();

const upload = multer({ dest: "./public/uploads/" });
routerUpload.post(
  "/video",
  // userMiddle.verifyToken,
  // multerMiddle.saveFile,
  upload.single("file"),
  multerMiddle.renameFile,
  uploadController.uploadVideo
);
routerUpload.get("/initialize", uploadController.initiateAuth);
routerUpload.get("/setuptoken", uploadController.getYoutubeCodeBackUp);
routerUpload.post("/uploadvideo", uploadController.uploadVideo);

module.exports = routerUpload;
