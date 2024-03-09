import { createContext, useContext, useMemo, useRef, useState } from "react";
import PropTypes from "prop-types";
import { Navigate } from "react-router-dom";
import axios from "axios";
import { useUserContext } from "./UserContext";
import AdminService from "../services/AdminService";

const adminContext = createContext();
export default function AdminContextProvider({ children }) {
  const { user, setMessageUser } = useUserContext();
  const active = useRef(false);
  const admin = useRef(false);
  const [addPlaylistDone, setAddPlaylistDone] = useState(true);

  const [users, setUsers] = useState([]);

  async function getUsers() {
    try {
      const usersdb = await AdminService.getUsers();
      // console.log("users db", usersdb.users);
      const result = usersdb.users;
      setUsers(
        result.filter(
          (ele) => !ele.isAdmin === !admin.current && !ele.isActive === !active
        )
        // && !ele.isActive === !active
      );
    } catch (error) {
      throw new Error(error.message);
    }
  }

  async function getUsersFiltered() {
    try {
      setUsers(
        users.filter(
          (ele) => !ele.isAdmin === !admin.current && !ele.isActive === !active
        )
        // && !ele.isActive === !active
      );
    } catch (error) {
      throw new Error(error.message);
    }
  }

  async function runSearch(e) {
    const { data } = await axios.get(
      `${import.meta.env.VITE_BACKEND_URL}/api/users/${e}`
    );
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

  async function addPlaylist(playlist) {
    try {
      setAddPlaylistDone(() => false);
      const { success } = await AdminService.addPlaylist(playlist);
      if (success) {
        setAddPlaylistDone(() => true);
      } else {
        setAddPlaylistDone(() => true);
      }
    } catch (error) {
      setMessageUser(error.message);
      throw new Error(error.message);
    }
  }

  async function changeRole(email, isAdmin = false) {
    try {
      const { success, message } = await AdminService.changeRole(
        email,
        isAdmin
      );
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
      admin,
      getUsers,
      users,
      setUsers,
      deleteUser,
      runSearch,
      active,
      getUsersFiltered,
      addPlaylistDone,
      setAddPlaylistDone,
      addPlaylist,
      changeRole,
    }),
    [
      admin,
      getUsers,
      users,
      setUsers,
      deleteUser,
      runSearch,
      active,
      getUsersFiltered,
      addPlaylistDone,
      setAddPlaylistDone,
      addPlaylist,
      changeRole,
    ]
  );

  return user.isAdmin ? (
    <adminContext.Provider value={adminData}>{children}</adminContext.Provider>
  ) : (
    <Navigate to="/" />
  );
}
AdminContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};
export const useAdmin = () => useContext(adminContext);
