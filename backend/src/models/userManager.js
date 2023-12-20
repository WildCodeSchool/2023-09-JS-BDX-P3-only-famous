const database = require("../../database/client");

class UserManager {
  static async create(user) {
    // console.log("create user called");
    // Execute the SQL INSERT query to add a new item to the "item" table
    const [result] = await database.query(
      `insert into user (firstname, lastname, email, password, birthday, isAdmin) values (?,?,?,?,?,?)`,
      [
        user.firstname,
        user.lastname,
        user.email,
        user.password,
        user.birthday,
        user.isAdmin,
      ]
    );

    // Return the ID of the newly inserted item
    return result.insertId;
  }
  // The Rs of CRUD - Read operations

  static async read(email) {
    // Execute the SQL SELECT query to retrieve a specific item by its ID
    const [rows] = await database.query(`select * from user where email = ?`, [
      email,
    ]);

    // Return the first row of the result, which represents the item
    return rows[0];
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
