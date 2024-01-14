const jwt = require("jsonwebtoken");

async function verifyToken(req, res, next) {
  try {
    const token = req.headers.authorization?.split(" ")[1] ?? "no token ";
    const userInfo = jwt.verify(token, process.env.APP_SECRET);
    req.isAdmin = userInfo.isAdmin;

    return next();
  } catch (err) {
    return res.status(401).json({ message: err.message, success: false });
  }
}

module.exports = { verifyToken };
