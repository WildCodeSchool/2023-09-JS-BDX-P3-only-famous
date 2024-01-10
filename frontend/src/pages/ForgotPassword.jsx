import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import InputField from "../components/InputField";

export default function ForgotPassword() {
  const [code, setCode] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const navigate = useNavigate();

  function validatePassword() {
    return password === confirmPassword && password.length >= 4;
  }
  async function sendNewPassword() {
    try {
      if (validatePassword()) {
        const { data } = await axios.patch(
          "http://localhost:3310/api/npassword",
          {
            code,
            password,
            email,
          }
        );
        setMessage(data.message);
        if (data.result) {
          navigate("/connexion");
        }
      }
    } catch (err) {
      console.error(err);
    }
  }
  async function generateCode() {
    if (email !== "") {
      await axios.post("http://localhost:3310/api/reactivate", {
        email,
      });
    }
  }
  useEffect(() => {
    window.scrollTo(0, 0);
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
                type="email"
                title="Email"
                id="email"
                value={email}
                setValue={setEmail}
              />
            </li>
            <button type="button" className="mybtn" onClick={generateCode}>
              Envoyer le code
            </button>
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
            <p>{message}</p>
          </ul>
        </div>
      </div>
    </div>
  );
}
