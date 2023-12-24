import { useState } from "react";
import InputField from "../components/InputField";
import DatePicker from "../components/DatePicker";

export default function RegisterCoord() {
  const [email, setEmail] = useState("");
  const [birthday, setBirdthday] = useState("");
  const [message, setMessage] = useState("");

  function checkError() {
    const mailformat = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
    if (email === "" || birthday === "" || !email.match(mailformat)) {
      setMessage(
        "La date de naissance et un email valide sont obligatoires!!!"
      );
    } else {
      setMessage("");
    }
  }
  return (
    <div className="inscription_container">
      <h2>Créer votre compte</h2>
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
          <DatePicker date={birthday} value={birthday} setDate={setBirdthday} />
        </li>
        <p style={{ color: "red" }}>{message}</p>
        <button type="button" onClick={checkError}>
          Suivant
        </button>
      </ul>
    </div>
  );
}
