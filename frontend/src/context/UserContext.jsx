import { createContext, useContext, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import PropTypes from "prop-types";
import axios from "axios";

const userContext = createContext();

export default function UserContextProvider({ children }) {
  const [user, setUser] = useState({ isAdmin: false, isConnected: false });
  const [messageUser, setMessageUser] = useState("");
  const navigate = useNavigate();

  async function checkCredentials(credentials) {
    try {
      const answer = await axios.post(
        "http://localhost:3310/api/user",
        credentials
      );
      // console.log("response from back-end");
      return answer;
    } catch (err) {
      return false;
      // console.log(err);
    }
  }
  async function login(credentials) {
    const { data: userdb } = await checkCredentials(credentials);
    if (userdb) {
      localStorage.setItem("users", JSON.stringify(userdb));
      setUser({ isAdmin: userdb.isAdmin, isConnected: true });
      if (userdb.isAdmin === 1) {
        navigate("/admin");
      } else {
        navigate("/");
      }
    } else {
      setMessageUser("Identifiants incorrects");
      navigate("/");
    }
  }
  async function register(newUser) {
    try {
      const { data: answer } = await axios.post(
        "http://localhost:3310/api/users",
        newUser
      );
      if (+answer.insertId !== 0) {
        navigate("/");
      }
      setMessageUser(answer?.message ?? "Something wrong");

      // console.log("response from back-end");
    } catch (err) {
      console.error("error front : ", err);
    }
  }
  function logout() {
    setUser({ admin: false, isConnected: false });
    localStorage.removeItem("users");
  }
  const contextData = useMemo(
    () => ({ user, messageUser, login, logout, register }),
    [user, messageUser, login, logout, register]
  );

  return (
    <userContext.Provider value={contextData}>{children}</userContext.Provider>
  );
}
UserContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};

export const useUserContext = () => useContext(userContext);
