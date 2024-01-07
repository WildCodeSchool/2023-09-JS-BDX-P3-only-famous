const bcrypt = require("bcrypt");
const database = require("../../database/client");
const activationManager = require("./activationManager");

class UserManager {
  static async Hashing(password) {
    const res = await bcrypt.hash(password, 3);
    return res;
  }

  static async compare(password, passwordHash) {
    const res = await bcrypt.compare(password, passwordHash);
    return res;
  }

  static async create(user) {
    // Execute the SQL INSERT query to add a new item to the "item" table
    const hashedPassword = await this.Hashing(user.password);
    try {
      const randomCode = Math.ceil(Math.random() * (9999 - 1000) + 1000);
      const [result] = await database.query(
        `insert into user (firstname, lastname, email, password, birthday, isAdmin, imgUrl, activationCode) values (?,?,?,?,?,?,?,?)`,
        [
          user.firstname,
          user.lastname,
          user.email,
          hashedPassword,
          user.birthday,
          user.isAdmin,
          user.imgUrl,
          randomCode,
        ]
      );

      activationManager.sendValidationCode(user.email, randomCode);
      return { message: "Utilisateur ajouté!!!", insertId: result.insertId };
    } catch (err) {
      console.error("error while inserting new user in user manager: ", err);
      return { message: "Email existant!!!", insertId: 0 };
    }

    // Return the ID of the newly inserted item
  }
  // The Rs of CRUD - Read operations

  static async read(email, password) {
    // Execute the SQL SELECT query to retrieve a specific item by its ID
    const [rows] = await database.query(`select * from user where email = ?`, [
      email,
    ]);
    if (rows[0]) {
      const res = await this.compare(password, rows[0].password);
      if (res) {
        return rows[0];
      }
    }
    return null;
  }

  static async readAll() {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await database.query(`select * from user`);

    // Return the array of items
    return rows;
  }

  // The U of CRUD - Update operation
  // TODO: Implement the update operation to modify an existing item

  static async update(user) {
    const [userdb] = await database.query(
      `select * from user where email = ?`,
      [user.email]
    );
    if (userdb[0]) {
      const keys = Object.keys(user);
      // console.log("keys ", keys);
      keys.forEach((ele) => {
        userdb[0][ele] = user[ele];
      });

      const [res] = await database.query(
        "update user set firstname = ?, lastname = ?, birthday = ?, imgUrl = ?, password = ?  WHERE email = ?",
        [
          userdb.firstname,
          userdb.lastname,
          userdb.birthday,
          userdb.imgUrl,
          userdb.password,
          userdb.email,
        ]
      );
      return res.affectedRows;
    }
    return 0;
  }

  static async updateImage(email, imgUrl) {
    const [userdb] = await database.query(
      `select * from user where email = ?`,
      [email]
    );
    if (userdb[0]) {
      const [res] = await database.query(
        "update user set imgUrl =?  WHERE email = ?",
        [imgUrl, email]
      );
      return res.affectedRows;
    }
    return 0;
  }

  // The D of CRUD - Delete operation
  // TODO: Implement the delete operation to remove an item by its ID

  static async delete(email) {
    const res = await database.query("delete from user WHERE email = ?", [
      email,
    ]);
    // console.log("res ", res);
    return res.affectedRows;
  }

  // activation via email
  static async getActivationCode(email) {
    const [userdb] = await database.query(
      `select * from user where email = ?`,
      [email]
    );
    if (userdb[0]) {
      return { activationCode: userdb[0].activationCode };
    }
    return { activationCode: 0 };
  }

  static async activateAccount(email) {
    const [res] = await database.query(
      "update user set isActive = 1  WHERE email = ?",
      [email]
    );
    return { affectedRows: res.affectedRows };
  }

  static async deleteActivationCode(email) {
    const [res] = await database.query(
      "update user set activationCode = NULL  WHERE email = ?",
      [email]
    );
    return { affectedRows: res.affectedRows };
  }

  static async createActivationCode(email) {
    // Execute the SQL INSERT query to add a new item to the "item" table
    const randomCode = Math.ceil(Math.random() * (9999 - 1000) + 1000);
    try {
      const [res] = await database.query(
        "update user set activationCode = ?  WHERE email = ?",
        [randomCode, email]
      );
      activationManager.sendValidationCode(email, randomCode);
      return { affectedRows: res.affectedRows };
    } catch (err) {
      console.error(
        "error while creating new validation code in user manager: ",
        err
      );
      return { message: "failed to create new validation!!!", insertId: 0 };
    }

    // Return the ID of the newly inserted item
  }
}

module.exports = UserManager;
