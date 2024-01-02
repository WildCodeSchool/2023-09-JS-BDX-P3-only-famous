import { useState } from "react";
import InputField from "../components/InputField";
import DatePicker from "../components/DatePicker";
import { useUserContext } from "../context/UserContext";
import RegisterPassword from "./RegisterPassword";

export default function RegisterCoord() {
  const [email, setEmail] = useState("");
  const [birthday, setBirdthday] = useState("");
  const [message, setMessage] = useState("");
  const { formValue, setFormValue } = useUserContext();
  const [next, setNext] = useState(false);

  function checkError() {
    const mailformat = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
    if (email === "" || birthday === "" || !email.match(mailformat)) {
      setMessage(
        () => "La date de naissance et un email valide sont obligatoires!!!"
      );
    } else {
      setFormValue({ ...formValue, email, birthday });
      setMessage(() => "");
      setNext(true);
    }
  }
  return !next ? (
    <div className="inscription_container">
      <div className="banner" />
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
        <button type="button" className="mybtn" onClick={checkError}>
          Suivant
        </button>
      </ul>
    </div>
  ) : (
    <RegisterPassword />
  );
}
