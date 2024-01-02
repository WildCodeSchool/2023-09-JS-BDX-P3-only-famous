import { useState } from "react";
import { useUserContext } from "../context/UserContext";
import InputField from "../components/InputField";
import RegisterCoord from "./RegisterCoord";

export default function RegisterUser() {
  const [firstname, setFirstname] = useState("");
  const [lastname, setLastname] = useState("");
  const [message, setMessage] = useState("");
  const [next, setNext] = useState(false);

  const { formValue, setFormValue } = useUserContext();

  function checkError() {
    if (firstname === "" || lastname === "") {
      setMessage("Les nom et prénom sont obligatoires!!!");
    } else {
      setFormValue({ ...formValue, firstname, lastname });
      setMessage("");
      setNext(true);
    }
  }
  return !next ? (
    <div className="inscription_container">
      <div className="banner" />
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
        <button type="button" onClick={checkError} className="mybtn">
          Suivant
        </button>
      </ul>
    </div>
  ) : (
    <RegisterCoord />
  );
}
