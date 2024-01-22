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
    email: "",
    imgUrl: "",
    isActive: 0,
  });
  const [mobileMode, setMobileMode] = useState(true);
  // state used in user creation request
  const [formValue, setFormValue] = useState({
    email: "",
    password: "",
    firstname: "",
    lastname: "",
    birthday: "",
    isAdmin: 0,
    imgUrl: `${import.meta.env.VITE_BACKEND_URL}/uploads/default.png`,
  });
  // message used to show message received from back-end mainly
  const [messageUser, setMessageUser] = useState("");
  // Details of videos, links data.... used in Single page video, to show the video and play it
  const [linkToVideo, setLinkToVideo] = useState({});
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

  // function that decode token and store data from it in the user state
  function decodeToken(token) {
    const decoded = jwtDecode(token);
    if (decoded.exp > Date.now() / 1000) {
      axios.defaults.headers.common.Authorization = `Bearer ${token}`;
      return true;
    }
    localStorage.removeItem("token");
    localStorage.removeItem("users");
    return false;
  }
  // function used to send login and password to back end to check its validity
  // then get back the token and the  user's data from the back-end
  async function checkCredentials(credentials) {
    try {
      const { headers, data } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/user`,
        credentials
      );
      return {
        headers,
        userdb: data.user,
        message: data.message,
      };
    } catch (err) {
      console.error(err);
      return { userdb: null, message: err.response.data.message };
    }
  }

  // function to update forgotten password
  async function resetPassword(credentials) {
    try {
      const { data } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/reset`,
        credentials
      );
      setMessageUser(data.message);
      return true;
    } catch (err) {
      console.error(err);
      setMessageUser("Erreur : ", err.response.data.message);
      return false;
    }
  }

  // update localStorage
  function updateLocalStorage(userInfo) {
    localStorage.setItem("token", JSON.stringify(userInfo.token));
    localStorage.setItem("users", JSON.stringify(userInfo.users));
  }
  function emptyStorage() {
    localStorage.removeItem("token");
    localStorage.removeItem("users");
  }

  // function to update firstname and lastname
  async function updateName(credentials) {
    try {
      const { data } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/updatename`,
        credentials
      );
      setMessageUser(data.message);
      return { message: data.message, result: true };
    } catch (err) {
      console.error(err);
      setMessageUser("Erreur : ", err.response.data.message);
      return { message: err.response.data.message, result: false };
    }
  }

  // send reset link
  async function sendResetLink(email) {
    try {
      const { data } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/sendreset`,
        {
          email,
        }
      );
      return { message: data.message, success: true };
    } catch (err) {
      return { message: err.response.data.message, success: false };
    }
  }

  // function called when user login, it calls internally the checkCredential function, and set
  // the token in the storage, and set it in the header of every http request
  async function login(credentials) {
    const { headers, userdb, message } = await checkCredentials(credentials);
    if (userdb) {
      updateLocalStorage({ token: headers.token, users: userdb });
      setUser({
        isAdmin: userdb.isAdmin,
        isConnected: true,
        firstname: userdb.firstname,
        lastname: userdb.lastname,
        email: userdb.email,
        imgUrl: userdb.imgUrl,
        isActive: userdb.isActive,
      });
      axios.defaults.headers.common.Authorization = `Bearer ${headers.token}`;
      navigate("/user");
      setMessageUser(message);
    } else {
      axios.defaults.headers.common.Authorization = `Bearer ""`;
      setMessageUser(message);
    }
  }
  // function called when use is prepare to be created
  async function register(newUser) {
    try {
      const { message, insertId } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/users`,
        newUser
      );
      if (+insertId === 0) {
        setMessageUser(message);
        return false;
      }

      setMessageUser(message);
      return true;
    } catch (err) {
      setMessageUser(`${err.response.data.message}, Connectez vous !!!`);
      return false;
    }
  }

  // function called to logout use, it empty the localstorage as well
  function logout() {
    setUser({ admin: false, isConnected: false });
    emptyStorage();
  }

  // activate account
  async function activateAccount(email, code) {
    try {
      const { affectedRows } = await axios.patch(
        `${import.meta.env.VITE_BACKEND_URL}/api/activate`,
        { email, code }
      );
      if (affectedRows !== 0) {
        setUser({ ...user, isActive: 1 });
        return { message: "Compte activé ", result: true };
      }
      return { message: "Erreur de validation!!! code éroné ?", result: false };
    } catch (err) {
      console.error("err", err);
      setUser({ ...user, isActive: 0 });
      return { message: "Erreur de validation!!! code éroné ?", result: false };
    }
  }

  function onLoadPage() {
    const userLs = JSON.parse(localStorage.getItem("users"));
    const token = JSON.parse(localStorage.getItem("token"));

    if (token && decodeToken(token)) {
      setUser({
        isAdmin: userLs.isAdmin,
        isConnected: true,
        firstname: userLs.firstname,
        lastname: userLs.lastname,
        isActive: userLs.isActive,
        imgUrl: userLs.imgUrl,
      });
    } else {
      setUser({
        isAdmin: 0,
        isConnected: false,
        firstname: "",
        lastname: "",
      });
    }
  }
  useEffect(() => {
    onLoadPage();
  }, []);

  const contextData = useMemo(
    () => ({
      user,
      messageUser,
      setMessageUser,
      formValue,
      setFormValue,
      login,
      logout,
      register,
      linkToVideo,
      setLinkToVideo,
      activateAccount,
      mobileMode,
      setMobileMode,
      resetPassword,
      sendResetLink,
      updateName,
    }),
    [
      user,
      messageUser,
      setMessageUser,
      formValue,
      setFormValue,
      login,
      logout,
      register,
      linkToVideo,
      setLinkToVideo,
      activateAccount,
      mobileMode,
      setMobileMode,
      resetPassword,
      sendResetLink,
      updateName,
    ]
  );
  return (
    <userContext.Provider value={contextData}>{children}</userContext.Provider>
  );
}
UserContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};

export const useUserContext = () => useContext(userContext);
