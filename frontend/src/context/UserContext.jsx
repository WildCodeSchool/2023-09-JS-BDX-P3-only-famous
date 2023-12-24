import { createContext, useContext, useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import PropTypes from "prop-types";
import axios from "axios";
import { jwtDecode } from "jwt-decode";

const userContext = createContext();

export default function UserContextProvider({ children }) {
  const [user, setUser] = useState({
    isAdmin: false,
    isConnected: false,
    firstname: "",
    lastname: "",
  });
  const [messageUser, setMessageUser] = useState("");
  const navigate = useNavigate();

  // function readAndCheckToken() {
  //   const token = localStorage.getItem("token");
  //   if (token) {
  //     const decoded = jwtDecode(token);
  //     axios.defaults.headers.common.Authorization = `Bearer ${token}`;
  //     return decoded.exp > Date.now();
  //   }
  //   axios.defaults.headers.common.Authorization = `Bearer ""`;
  //   return false;
  // }

  async function checkCredentials(credentials) {
    try {
      const { headers } = await axios.post(
        "http://localhost:3310/api/user",
        credentials
      );
      return headers;
    } catch (err) {
      return false;
    }
  }
  function decodeToken(token) {
    const decoded = jwtDecode(token);
    if (decoded && decoded.exp > Date.now() / 1000) {
      localStorage.setItem("user", JSON.stringify(token));
      setUser({
        isAdmin: decoded.isAdmin,
        isConnected: true,
        firstname: decoded.firstname,
        lastname: decoded.lastname,
      });
      axios.defaults.headers.common.Authorization = `Bearer ${token}`;
      if (decoded.isAdmin === 1) {
        navigate("/admin");
      } else {
        navigate("/");
      }
    } else {
      setMessageUser("Identifiants incorrects");
      navigate("/");
    }
  }
  async function login(credentials) {
    const userdb = await checkCredentials(credentials);
    if (userdb) {
      decodeToken(userdb.token);
    } else {
      axios.defaults.headers.common.Authorization = `Bearer ""`;
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
    localStorage.removeItem("user");
  }
  const contextData = useMemo(
    () => ({ user, messageUser, login, logout, register }),
    [user, messageUser, login, logout, register]
  );
  function onLoadPage() {
    const token = JSON.parse(localStorage.getItem("user"));
    if (token) {
      decodeToken(token);
    } else {
      setUser({
        isAdmin: 0,
        isConnected: false,
        firstname: "Guest",
        lastname: "",
      });
    }
  }
  useEffect(() => {
    onLoadPage();
  }, []);

  return (
    <userContext.Provider value={contextData}>{children}</userContext.Provider>
  );
}
UserContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};

export const useUserContext = () => useContext(userContext);
