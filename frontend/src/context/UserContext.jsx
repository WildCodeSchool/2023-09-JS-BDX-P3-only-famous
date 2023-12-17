import { createContext, useContext, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import PropTypes from "prop-types";
import axios from "axios";

const userContext = createContext();

export default function UserContextProvider({ children }) {
  const [user, setUser] = useState({ isAdmin: false, isConnected: false });
  const navigate = useNavigate();
  function getUsers() {
    return JSON.parse(localStorage.getItem("users") ?? "[]");
  }
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
    const users = getUsers();
    const memoryUser = users.find(
      (userdb) =>
        userdb.email === credentials.email &&
        userdb.password === credentials.password
    );
    if (!memoryUser) {
      const answer = await checkCredentials(credentials);
      if (answer) {
        // console.log("getting good answer from back ");
        users.push(credentials);
        localStorage.setItem("users", JSON.stringify(users));
        setUser({ isAdmin: false, isConnected: true });
        navigate("/onevideo");
      } else {
        alert("identifiants incorrects from back");
        navigate("/");
      }
    } else {
      alert("tu es connecté");
      setUser({ isAdmin: memoryUser?.isAdmin ?? false, isConnected: true });
      navigate("/onevideo");
    }
  }
  function register(newUser) {
    // console.log(newUser);
    const users = getUsers();
    // console.log(users);

    if (!users.find((userdb) => userdb.email === newUser.email)) {
      users.push(newUser);
      // console.log(users);
      localStorage.setItem("users", JSON.stringify(users));
      alert(`Bienvenue ${newUser.email}`);
    } else {
      alert("Vous êtes déjà inscrit !");
    }
  }
  function logout() {
    setUser({ admin: false, isConnected: false });
    localStorage.removeItem("users");
  }
  const contextData = useMemo(
    () => ({ user, login, logout, register }),
    [user, login, logout, register]
  );

  return (
    <userContext.Provider value={contextData}>{children}</userContext.Provider>
  );
}
UserContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};

export const useUserContext = () => useContext(userContext);
