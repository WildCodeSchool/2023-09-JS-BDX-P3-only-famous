const express = require("express");

const routerYoutube = express.Router();

// Import itemControllers module for handling item-related operations
const youtubeController = require("./controllers/youtubeController");

// routerYoutube.get("/playlist/:playlistId", youtubeController.addPlaylist);

routerYoutube.post("/playlist", youtubeController.fetchPlaylistById);

module.exports = routerYoutube;
