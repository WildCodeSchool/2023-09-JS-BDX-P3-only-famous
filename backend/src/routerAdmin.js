const express = require("express");
const adminController = require("./controllers/adminController");

const routerAdmin = express.Router();

routerAdmin.get("/users", adminController.browse);

module.exports = routerAdmin;
