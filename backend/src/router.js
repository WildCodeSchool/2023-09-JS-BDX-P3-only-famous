const express = require("express");

const router = express.Router();

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// Import itemControllers module for handling item-related operations
const userControllers = require("./controllers/userControllers");

// Route to get a list of items
router.get("/users", userControllers.browse);

// Route to get a specific item by ID
router.get("/users", userControllers.read);

// Route to add a new item
router.post("/users", userControllers.add);

// Route to check existed user
router.post("/user", userControllers.check);

// Route to edit existed user
router.put("/user", userControllers.edit);

// Route to delete existed users
router.delete("/user", userControllers.destroy);

/* ************************************************************************* */

module.exports = router;
