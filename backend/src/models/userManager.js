const AbstractManager = require("./AbstractManager");

class UserManager extends AbstractManager {
  constructor() {
    // Call the constructor of the parent class (AbstractManager)
    // and pass the table name "item" as configuration
    super({ table: "user" });
  }

  // The C of CRUD - Create operation

  async create(user) {
    // console.log("create user called");
    // Execute the SQL INSERT query to add a new item to the "item" table
    const [result] = await this.database.query(
      `insert into ${this.table} (firstname, lastname, email, password, birthday, isAdmin) values (?,?,?,?,?,?)`,
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

  async read(email) {
    // Execute the SQL SELECT query to retrieve a specific item by its ID
    const [rows] = await this.database.query(
      `select * from ${this.table} where email = ?`,
      [email]
    );

    // Return the first row of the result, which represents the item
    return rows[0];
  }

  async readAll() {
    // Execute the SQL SELECT query to retrieve all items from the "item" table
    const [rows] = await this.database.query(`select * from ${this.table}`);

    // Return the array of items
    return rows;
  }

  // The U of CRUD - Update operation
  // TODO: Implement the update operation to modify an existing item

  // async update(user) {
  //   // const [userdb] = await this.database.query(
  //   //   `select * from ${this.table} where email = ?`,
  //   //   [user.email]
  //   // );
  //   // console.log(userdb);
  // }

  // The D of CRUD - Delete operation
  // TODO: Implement the delete operation to remove an item by its ID

  // async delete(id) {
  //   ...
  // }
}

module.exports = UserManager;
