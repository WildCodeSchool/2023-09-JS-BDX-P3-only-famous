import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import InputField from "../components/InputField";
import { useUserContext } from "../context/UserContext";

export default function Connexion() {
  const { login, logout, user, messageUser, setMessageUser } = useUserContext();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  const validateEmail = (mail) => {
    return String(mail)
      .toLowerCase()
      .match(
        /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      );
  };

  function checkError() {
    if (email !== "" && validateEmail(email) && password !== "") {
      login({ email, password });
    } else {
      setMessageUser("Email ou mot de passe non conformes");
    }
  }
  useEffect(() => {
    setMessageUser("");
  }, []);
  return (
    <div className="inscription_container">
      <div className="banner" />
      {user.isConnected && (
        <div className="infos-container">
          <h1>Vous êtes déjà connecté</h1>
          <button type="button" onClick={logout} className="mybtn">
            Deconnectez-vous
          </button>
        </div>
      )}
      {!user.isConnected && (
        <div>
          <h2>Connectez-vous</h2>
          <h4>Saisissez vos coordonnées</h4>
          <ul className="informations_inscription">
            <li>
              <InputField
                type="email"
                title="Email"
                id="email"
                value={email}
                setValue={setEmail}
              />
            </li>
            <li>
              <InputField
                type="password"
                title="Mot de passe"
                id="password"
                value={password}
                setValue={setPassword}
              />
            </li>
            <p style={{ color: "red" }}>{messageUser}</p>
            <button type="button" onClick={checkError} className="mybtn">
              Connexion
            </button>
          </ul>
        </div>
      )}
      <div className="more-options">
        <p>
          Pas de compte ?{" "}
          <button
            type="button"
            className="invisible-btn"
            onClick={() => navigate("/inscription")}
          >
            Créer votre compte
          </button>
        </p>
        <button type="button" className="invisible-btn">
          Créer votre compte
        </button>
      </div>
    </div>
  );
}
