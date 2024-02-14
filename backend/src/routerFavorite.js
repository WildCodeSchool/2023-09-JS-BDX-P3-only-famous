const express = require("express");
const FavoriteController = require("./controllers/favoriController");

const routerFavorite = express.Router();

routerFavorite.get("/favori/:id", FavoriteController.readById);
routerFavorite.post("/favori", FavoriteController.addPlaylistToUserFavorite);
routerFavorite.delete(
  "/favori",
  FavoriteController.deletePlaylistToUserFavorite
);
routerFavorite.get("/favori/:id", FavoriteController.getFavorite);

module.exports = routerFavorite;
