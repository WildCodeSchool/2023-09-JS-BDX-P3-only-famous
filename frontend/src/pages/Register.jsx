import React, { useState } from "react";
import { useUserContext } from "../context/UserContext";

function Register() {
  const { register } = useUserContext();
  const [message, setMessage] = useState("");
  const [formValue, setFormValue] = useState({
    email: "",
    emailValidator: "",
    password: "",
    passwordValidator: "",
    firstname: "",
    lastname: "",
    birthday: "",
  });
  function onChange(e) {
    setFormValue({ ...formValue, [e.target.name]: e.target.value });
  }
  function validate() {
    let err = false;
    if (formValue.email !== formValue.emailValidator) {
      setMessage("Emails incompatibles...");
      err = true;
    }
    if (formValue.password.length < 8) {
      err = true;
      setMessage("Mot de passe non-conforme");
    }
    if (formValue.password !== formValue.passwordValidator) {
      err = true;
      setMessage("Mot de passe incompatibles...");
    }
    if (!err) {
      register({
        email: formValue.email,
        password: formValue.password,
        isAdmin: false,
      });
    }
  }
  return (
    <div className="inscription_container">
      <h2>Je crée mon Compte</h2>
      <ul className="informations_inscription">
        <li>
          <h4>Prénom*</h4>
          <input
            type="text"
            placeholder="Entrer votre prénom ici"
            value={formValue.firstname}
            name="firstname"
            onChange={onChange}
          />
        </li>
        <li>
          <h4>Nom*</h4>
          <input
            type="text"
            placeholder="Entrer votre nom ici"
            value={formValue.lastname}
            name="lastname"
            onChange={onChange}
          />
        </li>
        <li>
          <h4>Date de naissance</h4>
          <input
            type="text"
            placeholder="00/00/0000"
            value={formValue.birthday}
            name="birthday"
            onChange={onChange}
          />
        </li>
        <li>
          <h4>Email</h4>
          <input
            type="text"
            placeholder="Entrer votre mail ici"
            value={formValue.email}
            name="email"
            onChange={onChange}
          />
        </li>
        <li>
          <h4>Valider mon email</h4>
          <input
            type="text"
            placeholder="Entrer a nouveau votre mail"
            value={formValue.emailValidator}
            name="emailValidator"
            onChange={onChange}
          />
        </li>
        <li>
          <h4>Mot de Passe</h4>
          <input
            type="text"
            placeholder="Entrer votre mot de passe ici"
            value={formValue.password}
            name="password"
            onChange={onChange}
          />
        </li>
        <li>
          <h4>Valider mon mot de passe</h4>
          <input
            type="text"
            placeholder="Entrer à nouveau votre mot de passe"
            value={formValue.passwordValidator}
            name="passwordValidator"
            onChange={onChange}
          />
        </li>
      </ul>
      <button type="button" onClick={validate}>
        Créer mon compte
      </button>
      <h4 style={{ color: "red", padding: "10px 0" }}>{message}</h4>
    </div>
  );
}

export default Register;
