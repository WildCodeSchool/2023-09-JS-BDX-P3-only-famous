import { Link } from "react-router-dom";
import { useState } from "react";
import { useUserContext } from "../context/UserContext";

function Connexion() {
  const [formValue, setFormValue] = useState({
    email: "",
    password: "",
  });
  function onChange(e) {
    setFormValue({ ...formValue, [e.target.name]: e.target.value });
  }
  const { login, logout, user } = useUserContext();
  return (
    <div className="connexion-container">
      <img src="./src/assets/connexion-pic.jpg" alt="boussole-img" />
      {user.isConnected && (
        <div className="infos-container">
          <h1>Vous êtes déjà connecté</h1>
          <button type="button" className="btn-co button-co" onClick={logout}>
            Deconnectez-vous
          </button>
        </div>
      )}
      {!user.isConnected && (
        <div>
          <div className="infos-container">
            <div className="co-mail-container">
              <h1>EMAIL</h1>
              <input
                type="text"
                name="email"
                id="email"
                value={formValue.email}
                onChange={onChange}
              />
            </div>
            <div className="co-pass-container">
              <h1>MOT DE PASSE</h1>
              <input
                type="password"
                name="password"
                id="password"
                value={formValue.password}
                onChange={onChange}
              />
            </div>
          </div>
          <button
            className="btn-co button-co"
            type="button"
            onClick={() => {
              // console.log("form value ", formValue);
              login(formValue);
            }}
          >
            CONNEXION
          </button>
          <div className="co-questions">
            <p>
              Pas encore de compte?{" "}
              <Link to="/inscription">Créer un compte</Link>
            </p>
            <p>Mot de passe oublié?</p>
          </div>
        </div>
      )}
    </div>
  );
}

export default Connexion;
