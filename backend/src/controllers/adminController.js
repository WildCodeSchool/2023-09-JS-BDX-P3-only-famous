const userManager = require("../models/userManager");

class Admincontroller {
  static async browse(req, res) {
    const result = await userManager.readAll();
    res.status(200).json({ message: "All good", result });
  }
}
module.exports = Admincontroller;
