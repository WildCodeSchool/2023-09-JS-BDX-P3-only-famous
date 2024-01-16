import axios from "axios";

export default class AdminService {
  static async getUsers() {
    try {
      const { data } = await axios.get("http://localhost:3310/admin/users");
      return {
        users: data.users,
        message: data.message,
      };
    } catch (err) {
      console.error(err);
      return { users: null, message: err.response.data.message };
    }
  }

  static async deleteUser(email) {
    try {
      const { data } = await axios.delete(
        `http://localhost:3310/admin/users/${email}`
      );
      return {
        success: data.success,
        message: data.message,
      };
    } catch (err) {
      console.error(err);
      return { success: false, message: err.response.data.message };
    }
  }
}
