const express = require("express");
const adminController = require("./controllers/adminController");
const middleware = require("./middlewares/userMiddle");

const routerAdmin = express.Router();

routerAdmin.get(
  "/users",
  middleware.verifyToken,
  middleware.verifyAdminToken,
  adminController.browse
);
routerAdmin.delete(
  "/users/:email",
  middleware.verifyToken,
  middleware.verifyAdminToken,
  adminController.destroy
);

module.exports = routerAdmin;
