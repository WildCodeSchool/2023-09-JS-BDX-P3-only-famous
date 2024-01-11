import { useEffect, useState } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";
import InputField from "../components/InputField";
import { useUserContext } from "../context/UserContext";

export default function ResetPassword() {
  const [coord, setCoord] = useState({ email: "", code: "" });
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();
  const { resetPassword } = useUserContext();

  async function handleErrorAndSend() {
    try {
      if (password === confirmPassword && password.length >= 4) {
        const res = await resetPassword({ ...coord, password });
        setMessage(res.message);
        navigate("/connexion");
      }
    } catch (err) {
      setMessage(err.response.data.message);
    }
  }

  useEffect(() => {
    setCoord({
      email: searchParams.get("email"),
      code: searchParams.get("code"),
    });
  }, []);
  return (
    <div className="inscription_container">
      <div className="banner" />
      <h2>Réinitialiser votre mot de passe</h2>
      <ul className="informations_inscription">
        <li>
          <InputField
            type="password"
            title="Nouveau mot de passe"
            id="password"
            value={password}
            setValue={setPassword}
          />
        </li>
        <li>
          <InputField
            type="password"
            title="Confirmer le mot de passe"
            id="confirmPassword"
            value={confirmPassword}
            setValue={setConfirmPassword}
          />
        </li>

        <p style={{ color: "red" }}>{message}</p>
        <button type="button" className="mybtn" onClick={handleErrorAndSend}>
          Suivant
        </button>
      </ul>
    </div>
  );
}
