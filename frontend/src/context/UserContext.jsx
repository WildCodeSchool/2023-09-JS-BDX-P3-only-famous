import { createContext, useContext, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import PropTypes from "prop-types";

const userContext = createContext();

export default function UserContextProvider({ children }) {
  const [user, setUser] = useState({ admin: false, isConnected: false });
  const navigate = useNavigate();
  function getUsers() {
    return JSON.parse(localStorage.getItem("users") ?? []);
  }
  function login(credentials) {
    const users = getUsers();
    const memoryUser = users.find(
      (userdb) =>
        userdb.email === credentials.email &&
        userdb.password === credentials.password
    );
    if (!memoryUser) {
      alert("identifiants incorrect");
      navigate("/");
    } else {
      alert("tu es connecté");
      setUser({ adming: memoryUser.admin, isConnected: true });
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
  children: PropTypes.string.isRequired,
};

export const useUserContext = () => useContext(userContext);