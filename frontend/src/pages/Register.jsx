import React from "react";

function Register() {
  return (
    <div className="inscription_container">
      <h2>Je crée mon Compte</h2>
      <ul className="informations_inscription">
        <li>
          <h4>Prénom*</h4>
          <input type="text" placeholder="Entrer votre prénom ici" />
        </li>
        <li>
          <h4>Nom*</h4>
          <input type="text" placeholder="Entrer votre nom ici" />
        </li>
        <li>
          <h4>Date de naissance</h4>
          <input type="text" placeholder="00/00/0000" />
        </li>
        <li>
          <h4>Email</h4>
          <input type="text" placeholder="Entrer votre mail ici" />
        </li>
        <li>
          <h4>Valider mon email</h4>
          <input type="text" placeholder="Entrer a nouveau votre mail" />
        </li>
        <li>
          <h4>Mot de Passe</h4>
          <input type="text" placeholder="Entrer votre mot de passe ici" />
        </li>
        <li>
          <h4>Valider mon mot de passe</h4>
          <input
            type="text"
            placeholder="Entrer à nouveau votre mot de passe"
          />
        </li>
      </ul>
      <button type="button">Créer mon compte</button>
    </div>
  );
}

export default Register;
