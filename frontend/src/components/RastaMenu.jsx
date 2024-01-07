import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { FaRegUser } from "react-icons/fa";
import { useUserContext } from "../context/UserContext";

export default function RastaMenu() {
  const navigate = useNavigate();
  const { user } = useUserContext();
  const [isChecked, setChecked] = useState(false);

  function handleClick(e) {
    e.preventDefault();
    setChecked(false);
  }

  return (
    <div className="navbar">
      <div className="classic-navbar">
        <button
          type="button"
          className="main-logo btn"
          onClick={() => navigate("/")}
        >
          <img
            src="./src/assets/logo.png"
            alt=""
            className="logo"
            width="35"
            height="35"
          />{" "}
        </button>
        <div className="navbar-links">
          <button
            type="button"
            onClick={(e) => {
              navigate("/");
              handleClick(e);
            }}
            className="desktop-navbar-li btn"
          >
            <span className="navbar-link">Accueil</span>
          </button>
          <button
            type="button"
            onClick={(e) => {
              navigate("/connexion");
              handleClick(e);
            }}
            className="desktop-navbar-li btn"
          >
            <span className="navbar-link user-link">
              <span>
                <FaRegUser />
              </span>
              <span>{user.isConnected ? "Utilisateur" : "Connexion"}</span>
            </span>
          </button>
          {user.isAdmin ? (
            <button
              type="button"
              onClick={(e) => {
                navigate("/admin");
                handleClick(e);
              }}
              className="desktop-navbar-li btn"
            >
              <span className="navbar-link">Admin</span>
            </button>
          ) : (
            ""
          )}
        </div>
      </div>
      <div>
        <input
          type="checkbox"
          id="menu-toggle"
          onChange={() => {
            setChecked(!isChecked);
          }}
          checked={isChecked}
        />
        <label id="trigger" htmlFor="menu-toggle">
          {" "}
        </label>
        <label id="burger" htmlFor="menu-toggle">
          {" "}
        </label>
        <ul id="menu">
          <li id="my-li">
            <button
              type="button"
              onClick={(e) => {
                navigate("/");
                handleClick(e);
              }}
              className="desktop-navbar-li btn"
            >
              <span className="navbar-link">Accueil</span>
            </button>
          </li>
          <li id="my-li">
            <button
              type="button"
              onClick={(e) => {
                navigate("/connexion");
                handleClick(e);
              }}
              className="desktop-navbar-li btn"
            >
              <span className="navbar-link user-link">
                <span>
                  <FaRegUser />
                </span>
                <span>{user.isConnected ? "Utilisateur" : "Connexion"}</span>
              </span>
            </button>
          </li>
          {user.isAdmin ? (
            <li id="my-li">
              <button
                type="button"
                onClick={(e) => {
                  navigate("/admin");
                  handleClick(e);
                }}
                className="desktop-navbar-li btn"
              >
                <span className="navbar-link">Admin</span>
              </button>
            </li>
          ) : (
            ""
          )}
        </ul>
      </div>
      <div className="user-area">
        <p>{user.isConnected && `Bienvenue ${user.firstname}`}</p>
      </div>
    </div>
  );
}
