import { useState } from "react";
import InputField from "../components/InputField";

export default function RegisterUser() {
  const [firstname, setFirstname] = useState("");
  const [lastname, setLastname] = useState("");
  const [message, setMessage] = useState("");

  function checkError() {
    if (firstname === "" || lastname === "") {
      setMessage("Les nom et prénom sont obligatoires!!!");
    } else {
      setMessage("");
    }
  }
  return (
    <div className="inscription_container">
      <h2>Créer votre compte</h2>
      <h4>Saisissez votre nom</h4>
      <ul className="informations_inscription">
        <li>
          <InputField
            type="text"
            title="Prenom"
            id="firstname"
            value={firstname}
            setValue={setFirstname}
          />
        </li>
        <li>
          <InputField
            type="text"
            title="nom"
            id="lastname"
            value={lastname}
            setValue={setLastname}
          />
        </li>
        <p style={{ color: "red" }}>{message}</p>
        <button type="button" onClick={checkError}>
          Suivant
        </button>
      </ul>
    </div>
  );
}
