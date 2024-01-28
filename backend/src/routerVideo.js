const express = require("express");

const routerVideo = express.Router();

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

// route to get all playlists by category
routerVideo.get(
  "/playlists/:category",
  videoControllers.getPlaylistsByCategory
);

module.exports = routerVideo;
