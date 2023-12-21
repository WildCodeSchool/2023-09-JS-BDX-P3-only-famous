const bcrypt = require("bcrypt");
const database = require("../../database/client");

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
      const [result] = await database.query(
        `insert into user (firstname, lastname, email, password, birthday, isAdmin) values (?,?,?,?,?,?)`,
        [
          user.firstname,
          user.lastname,
          user.email,
          hashedPassword,
          user.birthday,
          user.isAdmin,
        ]
      );
      return result.insertId;
    } catch (err) {
      console.error("error while inserting new user in user manager: ", err);
      return null;
    }

    // Return the ID of the newly inserted item
  }
  // The Rs of CRUD - Read operations

  static async read(email, password) {
    // Execute the SQL SELECT query to retrieve a specific item by its ID
    const [rows] = await database.query(`select * from user where email = ?`, [
      email,
    ]);
    const res = await this.compare(password, rows[0].password);
    if (res) {
      return rows[0];
    }
    return null;
    // Return the first row of the result, which represents the item
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
        "update user set firstname = ?, lastname = ?, password = ?  WHERE email = ?",
        [user.firstname, user.lastname, user.password, user.email]
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
}

module.exports = UserManager;
