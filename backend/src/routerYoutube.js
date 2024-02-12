const express = require("express");

const routerYoutube = express.Router();

const youtubeController = require("./controllers/youtubeController");

routerYoutube.post("/playlist", youtubeController.fetchPlaylistById);

module.exports = routerYoutube;
