import { createContext, useContext, useMemo, useState } from "react";
import { useLoaderData, useNavigate } from "react-router-dom";
import PropTypes from "prop-types";
import axios from "axios";

const userContext = createContext();

export default function UserContextProvider({ children }) {
  const { loaderData } = useLoaderData();
  const [user, setUser] = useState({
    ...loaderData,
    isConnected: !!loaderData,
  });
  const [mobileMode, setMobileMode] = useState(true);
  const [formValue, setFormValue] = useState({
    email: "",
    password: "",
    firstname: "",
    lastname: "",
    birthday: "",
    isAdmin: 0,
    imgUrl: `${import.meta.env.VITE_BACKEND_URL}/uploads/default.png`,
  });
  const [messageUser, setMessageUser] = useState("");
  const [linkToVideo, setLinkToVideo] = useState({});
  const [favoritePlaylist, setFavoritePlaylist] = useState([]);
  const navigate = useNavigate();

  function validatePassword(password) {
    const regex =
      /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return regex.test(password);
  }

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

  function updateLocalStorage(userInfo) {
    localStorage.setItem("token", userInfo.token);
  }
  function emptyStorage() {
    localStorage.removeItem("token");
  }

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

  async function updateDescription(credentials) {
    try {
      const { data } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/updatedescription`,
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

  async function login(credentials) {
    const { headers, userdb, message } = await checkCredentials(credentials);
    if (userdb) {
      updateLocalStorage({ token: headers.token, users: userdb });
      setUser({
        ...userdb,
        isConnected: true,
      });
      setMessageUser("");
      axios.defaults.headers.common.Authorization = `Bearer ${headers.token}`;
      navigate("/user");
    } else {
      axios.defaults.headers.common.Authorization = `Bearer ""`;
      setMessageUser(message);
    }
  }

  async function register(newUser) {
    try {
      const { message, insertId } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/api/users`,
        {
          ...newUser,
          imgUrl:
            "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png",
        }
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

  function logout() {
    setUser({ admin: false, isConnected: false });
    emptyStorage();
  }

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

  async function getFavorite() {
    try {
      const { data } = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/favorite/favori/${user.email}`
      );

      const res = data.map((ele) => ele.playlistId);
      setFavoritePlaylist([...res]);
    } catch (err) {
      console.error("err", err);
    }
  }

  async function toggleFavorite(playlistId) {
    try {
      if (favoritePlaylist.includes(playlistId)) {
        await axios.delete(
          `${import.meta.env.VITE_BACKEND_URL}/favorite/favori/${
            user.email
          }/${playlistId}`,
          { email: user.email, playlistId }
        );
      } else {
        await axios.post(
          `${import.meta.env.VITE_BACKEND_URL}/favorite/favori`,
          { email: user.email, playlistId }
        );
      }
      await getFavorite();
    } catch (err) {
      console.error("err", err);
    }
  }

  const contextData = useMemo(
    () => ({
      user,
      setUser,
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
      updateDescription,
      validatePassword,
      favoritePlaylist,
      setFavoritePlaylist,
      getFavorite,
      toggleFavorite,
    }),
    [
      user,
      setUser,
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
      validatePassword,
      favoritePlaylist,
      setFavoritePlaylist,
      toggleFavorite,
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
