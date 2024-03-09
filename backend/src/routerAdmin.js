const express = require("express");
const adminController = require("./controllers/adminController");
const middleware = require("./middlewares/userMiddle");
const userControllers = require("./controllers/userControllers");

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

// Route to change role
routerAdmin.patch(
  "/users/:email/:role",
  middleware.verifyAdminToken,
  userControllers.updateRole
);

module.exports = routerAdmin;
