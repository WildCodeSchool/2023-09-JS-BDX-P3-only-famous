import { useRef, useState } from "react";
import { useNavigate } from "react-router-dom";
import InputField from "../components/InputField";
import { useUserContext } from "../context/UserContext";

export default function RegisterPassword() {
  const navigate = useNavigate();
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const { formValue, setFormValue } = useUserContext();
  const { register, messageUser } = useUserContext();
  const refUser = useRef({});

  async function checkError() {
    if (password.length < 4 || password !== confirmPassword) {
      setMessage(
        () => "Le mot de passe n'est pas conforme ou n'est pas confirmé!!!"
      );
    } else {
      setFormValue({
        ...formValue,
        password,
        isAdmin: 0,
        imgUrl: "http://localhost:3310/uploads/default.png",
      });
      refUser.current = {
        ...formValue,
        password,
        isAdmin: 0,
        imgUrl: "http://localhost:3310/uploads/default.png",
      };
      const isDone = await register(refUser.current);
      setMessage(() => messageUser);
      if (isDone) navigate("/connexion");
      else {
        navigate("/inscription");
      }
    }
  }
  return (
    <div className="inscription_container">
      <div className="banner" />
      <h2>Créer votre compte</h2>
      <h4>Saisissez vos coordonnées</h4>
      <ul className="informations_inscription">
        <li>
          <InputField
            type="password"
            title="Mot de passe"
            id="password"
            value={password}
            setValue={setPassword}
          />
        </li>
        <li>
          <InputField
            type="password"
            title="Confirmer le MDP"
            id="confirmPassword"
            value={confirmPassword}
            setValue={setConfirmPassword}
          />
        </li>

        <p style={{ color: "red" }}>{message}</p>
        <button type="button" className="mybtn" onClick={checkError}>
          Suivant
        </button>
      </ul>
    </div>
  );
}
