const express = require("express");
const adminController = require("./controllers/adminController");

const routerAdmin = express.Router();

routerAdmin.get("/users", adminController.browse);
routerAdmin.delete("/users/:email", adminController.destroy);

module.exports = routerAdmin;
