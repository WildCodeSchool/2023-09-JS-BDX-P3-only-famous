import { createContext, useContext, useMemo, useState } from "react";
import PropTypes from "prop-types";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { useUserContext } from "./UserContext";
import AdminService from "../services/AdminService";

const adminContext = createContext();
export default function AdminContextProvider({ children }) {
  const navigate = useNavigate();
  const { user, setMessageUser } = useUserContext();
  const [isAdmin, setisAdmin] = useState(true);
  const [users, setUsers] = useState([]);

  async function getUsers() {
    try {
      const usersdb = await AdminService.getUsers();
      // console.log("users db", usersdb.users);
      setUsers([...usersdb.users]);
    } catch (error) {
      throw new Error(error.message);
    }
  }

  async function runSearch(e) {
    const { data } = await axios.get(`http://localhost:3310/api/users/${e}`);
    if (data && data.length > 0) {
      setUsers([...data]);
    } else {
      setUsers([]);
    }
  }

  async function deleteUser(email) {
    try {
      const { success, message } = await AdminService.deleteUser(email);
      if (success) {
        await getUsers();
        setMessageUser(message);
      } else {
        setMessageUser(" Problème amigo!!!");
      }
    } catch (error) {
      setMessageUser(error.message);
      throw new Error(error.message);
    }
  }
  const adminData = useMemo(
    () => ({
      isAdmin,
      setisAdmin,
      getUsers,
      users,
      setUsers,
      deleteUser,
      runSearch,
    }),
    [isAdmin, setisAdmin, getUsers, users, setUsers, deleteUser, runSearch]
  );
  if (!user.isAdmin) {
    navigate("/");
  }

  return (
    <adminContext.Provider value={adminData}>{children}</adminContext.Provider>
  );
}
AdminContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};
export const useAdmin = () => useContext(adminContext);
