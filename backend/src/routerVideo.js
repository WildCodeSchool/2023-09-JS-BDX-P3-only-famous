const express = require("express");

const routerVideo = express.Router();

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
const videoControllers = require("./controllers/videoControllers");

routerVideo.get("/playlist", videoControllers.readPlaylist);

// Route to get a list of items
routerVideo.get("/videos", videoControllers.browse);

// Route to get a specific item by ID
routerVideo.get("/video/:ytId", videoControllers.read);

// Route to add a new item
routerVideo.post("/videos", videoControllers.add);

// Route to check existed user
routerVideo.post("/video", videoControllers.check);

// Route to edit existed user readPlaylist
routerVideo.patch("/video/:ytId", videoControllers.edit);

// Route to delete existed users
routerVideo.delete("/video/:ytId", videoControllers.destroy);

// route to get specific all playlists
routerVideo.get("/playlists", videoControllers.getPlaylists);
/* **
// route to get specific playlist by id
routerVideo.get("/playlists/:playlistId", videoControllers.getPlaylistById);
/* ************************************************************************* */

module.exports = routerVideo;
