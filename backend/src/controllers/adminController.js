const userManager = require("../models/userManager");

class Admincontroller {
  static async browse(req, res) {
    try {
      const users = await userManager.readAll();
      res.status(200).json({ message: "All good", users, success: true });
    } catch (err) {
      res.status(404).json({ message: err, success: false });
    }
  }

  static async destroy(req, res) {
    try {
      const { email } = req.params;
      const affectedRows = await userManager.deleteAdmin(email);
      if (affectedRows !== 0) {
        res.status(200).json({ message: "Compte supprimé", success: true });
      } else {
        res
          .status(200)
          .json({ message: " Compte n'existe pas ", success: true });
      }
    } catch (err) {
      res.status(404).json({ message: err.message, success: false });
    }
  }
}
module.exports = Admincontroller;
