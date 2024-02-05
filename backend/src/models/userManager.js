const bcrypt = require("bcrypt");
const { v4: uuid } = require("uuid");
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
    const hashedPassword = await this.Hashing(user.password);
    try {
      const randomCode = uuid();
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
      throw new Error(err.message);
    }
  }

  static async read(email, password) {
    try {
      const [rows] = await database.query(
        `select * from user where email = ?`,
        [email]
      );
      if (rows[0]) {
        const res = await this.compare(password, rows[0].password);
        if (res) {
          return rows[0];
        }
        return null;
      }
      return null;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async readUserViaEmail(email) {
    try {
      const [rows] = await database.query(
        `select * from user where email = ?`,
        [email]
      );
      if (rows[0]) {
        delete rows[0].password;
        return rows[0];
      }
      return null;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async readAll() {
    try {
      const [rows] = await database.query(
        `select email, firstname, lastname, isActive, isAdmin from user`
      );
      return rows;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async readAllByEmail(email) {
    try {
      const [rows] = await database.query(
        `select email, firstname, lastname, isActive, isAdmin, birthday from user where email like '${email}%'`
      );
      return rows;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  // static async update(user) {
  //   try {
  //     const [userdb] = await database.query(
  //       `select * from user where email = ?`,
  //       [user.email]
  //     );
  //     if (userdb[0]) {
  //       const keys = Object.keys(user);
  //       // console.log("keys ", keys);
  //       keys.forEach((ele) => {
  //         userdb[0][ele] = user[ele];
  //       });
  //       if (user.password) {
  //         userdb[0].password = await this.Hashing(user.password);
  //       }
  //       const [res] = await database.query(
  //         "update user set firstname = ?, lastname = ?, birthday = ?, imgUrl = ?, password = ?,   WHERE email = ?",
  //         [
  //           userdb[0].firstname,
  //           userdb[0].lastname,
  //           userdb[0].birthday,
  //           userdb[0].imgUrl,
  //           userdb[0].password,
  //           userdb[0].email,
  //         ]
  //       );
  //       return res.affectedRows;
  //     }
  //     return 0;
  //   } catch (err) {
  //     throw new Error("Aucune modification réalisé!!!");
  //   }
  // }

  static async update(user) {
    let sql = "UPDATE user set";
    const sqlValues = [];
    for (const [key, value] of Object.entries(user)) {
      sql += `${sqlValues.length ? "," : ""} ${key} = ?`;

      sqlValues.push(value);
    }
    sql += " where email = ?";
    sqlValues.push(user.email);
    const [res] = await database.query(sql, sqlValues);
    return res.affectedRows;
  }

  static async updateGeneric(email, props) {
    let sql = `UPDATE user set`;
    const sqlValues = [];
    for (const [key, value] of Object.entries(props)) {
      sql += `${sqlValues.length ? "," : ""} ${key} = ?`;

      sqlValues.push(value);
    }
    sql += `where email = ?`;
    sqlValues.push(email);
    const [res] = await database.query(sql, sqlValues);
    return res.affectedRows;
  }

  static async delete(email, password) {
    try {
      const [user] = await database.query(
        "select * from user WHERE email = ?",
        [email]
      );
      if (user[0]) {
        const comparison = await this.compare(password, user[0].password);
        if (comparison) {
          const res = await database.query("delete from user WHERE email = ?", [
            email,
          ]);
          return res.affectedRows;
        }
      }
      return 0;
    } catch (err) {
      throw new Error(err.message);
    }
  }

  static async deleteAdmin(email) {
    try {
      const [user] = await database.query(
        "select * from user WHERE email = ?",
        [email]
      );
      if (user[0]) {
        const res = await database.query("delete from user WHERE email = ?", [
          email,
        ]);
        return res.affectedRows;
      }
      return 0;
    } catch (err) {
      throw new Error(err.message);
    }
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
    const randomCode = uuid();
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
  }

  static async createResetCode(email) {
    const randomCode = uuid();
    try {
      const emailSent = await UserManager.readUserViaEmail(email);
      if (emailSent) {
        const [res] = await database.query(
          "update user set activationCode = ?  WHERE email = ?",
          [randomCode, email]
        );
        activationManager.sendResetCode(email, randomCode);
        return {
          affectedRows: res.affectedRows,
          message: "Un email de réinitialisation vient d'être envoyé ",
        };
      }
      return {
        message: `Ce compte ${email} n'existe pas !!!`,
        affectedRows: 0,
      };
    } catch (err) {
      console.error(
        "error while creating new reset code in user manager: ",
        err
      );
      return { message: "Aucun email envoyé !!!", insertId: 0 };
    }
  }

  static async updatePassword({ email, password }) {
    try {
      const [userdb] = await database.query(
        `select * from user where email = ?`,
        [email]
      );
      const hashedPassword = await this.Hashing(password);
      if (userdb[0]) {
        const [res] = await database.query(
          "update user set  password = ?  WHERE email = ?",
          [hashedPassword, email]
        );
        await this.deleteActivationCode(email);
        return { affectedRows: res.affectedRows };
      }
      return { affectedRows: 0 };
    } catch (err) {
      console.error("error ", err);
      return { affectedRows: 0 };
    }
  }
}

module.exports = UserManager;
