import { useEffect, useState } from "react";
import InputField from "../components/InputField";

export default function ForgotPassword() {
  const [code, setCode] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  // const [message, setMessage] = useState("");

  function validatePassword() {
    return password === confirmPassword && password.length >= 4;
  }
  async function sendNewPassword() {
    try {
      if (validatePassword()) {
        console.error("sending password to the backend ");
      }
    } catch (err) {
      console.error(err);
    }
  }

  useEffect(() => {
    window.scrollTo({ top: 0, left: 0, behavior: "smooth" });
  }, []);

  return (
    <div className="inscription_container">
      <div className="user-page container-md">
        <div
          className="banner-user"
          style={{ backgroundImage: `url("./src/assets/banner.png")` }}
        />
        <div>
          <h2>Changer votre mot de passe</h2>
          <ul className="informations_inscription">
            <li>
              <InputField
                type="number"
                title="Code de validation"
                id="code"
                value={code}
                setValue={setCode}
              />
            </li>
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
                title="Confirmez le mot de passe"
                id="confirmPassword"
                value={confirmPassword}
                setValue={setConfirmPassword}
              />
            </li>
            <button type="button" className="mybtn" onClick={sendNewPassword}>
              Valider
            </button>
          </ul>
        </div>
      </div>
    </div>
  );
}
