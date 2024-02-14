const express = require("express");
const FavoriteController = require("./controllers/favoriController");

const routerFavorite = express.Router();

routerFavorite.post("/favori", FavoriteController.addPlaylistToUserFavorite);
routerFavorite.delete(
  "/favori",
  FavoriteController.deletePlaylistToUserFavorite
);
routerFavorite.get("/favori/:email", FavoriteController.getFavorite);

module.exports = routerFavorite;
