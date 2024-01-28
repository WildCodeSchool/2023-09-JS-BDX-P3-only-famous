const fs = require("fs");
// const path = require("path");

// const absolutePath = path.join(__dirname, "../public");

function renameFile(req, res, next) {
  const proxyHost = req.headers["x-forwarded-host"];
  const host = proxyHost ?? req.headers.host;
  const { originalname, filename } = req.file;
  const relativePath = `uploads/${Date.now()}_${originalname}`;
  const newPath = `./public/${relativePath}`;
  const fullPath = `http://${host}/${relativePath}`;
  // console.log("host", host);
  // console.log("host env", process.env.BACKEND_URL);

  fs.rename(`./public/uploads/${filename}`, newPath, (err) => {
    if (err) {
      return;
    }
    req.newPath = fullPath;
    next();
  });
}

module.exports = { renameFile };
