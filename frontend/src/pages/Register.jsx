import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

function Register() {
  const navigate = useNavigate();
  const { register } = useUserContext();
  const [formValue, setFormValue] = useState({
    email: "",
    emailValidator: "",
    password: "",
    passwordValidator: "",
    firstname: "",
    lastname: "",
    birthday: "",
  });
  const [validationMessage, setValidationMessage] = useState({
    validateEmail: "",
    validatePassword: "",
    securePassword: "",
  });
  function onChange(e) {
    setFormValue({ ...formValue, [e.target.name]: e.target.value });
    if (
      e.target.name === "emailValidator" &&
      e.target.value !== formValue.email
    ) {
      setValidationMessage({
        ...validationMessage,
        validateEmail: "Les emails ne correspondent pas...",
      });
    } else {
      console.error("erreur");
    }
    if (
      e.target.name === "passwordValidator" &&
      e.target.value !== formValue.password
    ) {
      setValidationMessage({
        ...validationMessage,
        validatePassword: "Les mot-de-passes ne correspondent pas...",
      });
    }
    if (e.target.name === "password" && e.target.value.toString().length < 8) {
      setValidationMessage({
        ...validationMessage,
        securePassword: "Le mot-de-passe est court",
      });
    }
  }
  useEffect(() => {}, []);

  function checkError() {
    register({
      email: formValue.email,
      password: formValue.password,
      isAdmin: false,
      birthday: formValue.birthday,
      firstname: formValue.firstname,
      lastname: formValue.lastname,
    });
    navigate("/");
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
            required
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
            required
          />
        </li>
        <li>
          <h4>Date de naissance*</h4>
          <input
            type="date"
            placeholder="jj/mm/aaaa"
            value={formValue.birthday}
            name="birthday"
            onChange={onChange}
            required
          />
        </li>
        <li>
          <h4>Email*</h4>
          <input
            type="email"
            placeholder="Entrer votre mail ici"
            value={formValue.email}
            name="email"
            onChange={onChange}
            required
          />
        </li>
        <li>
          <h4>Valider mon email*</h4>
          <input
            type="email"
            placeholder="Entrer a nouveau votre mail"
            value={formValue.emailValidator}
            name="emailValidator"
            onChange={onChange}
            required
          />
          <span style={{ color: "red" }}>
            {validationMessage.validateEmail}
          </span>
        </li>
        <li>
          <h4>Mot de Passe*</h4>
          <input
            type="password"
            placeholder="Entrer votre mot de passe ici"
            value={formValue.password}
            name="password"
            onChange={onChange}
            required
          />
          <span style={{ color: "red" }}>
            {validationMessage.securePassword}
          </span>
        </li>
        <li>
          <h4>Valider mon mot de passe*</h4>
          <input
            type="password"
            placeholder="Entrer à nouveau votre mot de passe"
            value={formValue.passwordValidator}
            name="passwordValidator"
            onChange={onChange}
            required
          />
          <span style={{ color: "red" }}>
            {validationMessage.validatePassword}
          </span>
        </li>
      </ul>
      <button type="button" onClick={checkError}>
        Créer mon compte
      </button>
    </div>
  );
}

export default Register;
