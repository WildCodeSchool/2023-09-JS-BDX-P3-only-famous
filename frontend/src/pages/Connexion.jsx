// import { useState } from "react";

function Connexion() {
  // const [emailCo, setEmailCo] = useState("");
  // const [passCo, setPassCo] = useState("");

  // const handleEmailCoChange = (e) => {
  //   setEmailCo(e.target.value);
  // };
  // const handlePassCoChange = (e) => {
  //   setPassCo(e.target.value);
  // };

  return (
    <div className="connexion-container">
      <img src="./src/assets/connexion-pic.jpg" alt="boussole-img" />
      <div className="infos-container">
        <div className="co-mail-container">
          <h1>EMAIL</h1>
          <input
            type="text"
            name="email"
            id="email"
            // onChange={handleEmailCoChange}
          />
        </div>
        <div className="co-pass-container">
          <h1>MOT DE PASSE</h1>
          <input
            type="text"
            name="password"
            id="password"
            // onChange={handlePassCoChange}
          />
        </div>
      </div>
      <button className="btn-co button-co" type="submit">
        CONNEXION
      </button>
      <div className="co-questions">
        <p>Pas encore de compte?</p>
        <p>Mot de passe oublié?</p>
      </div>
    </div>
  );
}

export default Connexion;
