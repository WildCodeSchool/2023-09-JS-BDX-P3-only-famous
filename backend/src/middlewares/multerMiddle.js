const fs = require("fs");

function renameFile(req, res, next) {
  const { originalname, filename } = req.file;

  // const token = req.headers.authorization?.split(" ")[1] ?? "";
  // if (token) {
  //   console.log("token", token);
  // } else {
  //   res.sendStatus(404);
  //   return;
  // }
  const relativePath = `uploads/${Date.now()}_${originalname}`;
  const newPath = `./public/${relativePath}`;
  const fullPath = `http://localhost:3310/${relativePath}`;
  fs.rename(`./public/uploads/${filename}`, newPath, (err) => {
    if (err) {
      return;
    }
    req.newPath = fullPath;
    next();
  });
}

module.exports = { renameFile };
