import { useEffect, useState } from "react";
import { Link, useNavigate, useSearchParams } from "react-router-dom";
import { Button, Container, Fieldset, Input } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";
import MyAlert from "../components/MyAlert";

export default function ResetPassword() {
  const [coord, setCoord] = useState({ email: "", code: "" });
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const [error, setError] = useState(false);
  const [errorBack, setErrorBack] = useState(false);

  const [searchParams] = useSearchParams();
  const navigate = useNavigate();
  const { resetPassword } = useUserContext();

  async function handleErrorAndSend() {
    try {
      if (password === confirmPassword && password.length >= 4) {
        const res = await resetPassword({ ...coord, password });
        if (res) {
          setMessage(res.message);
          navigate("/connexion");
        }
      } else {
        setErrorBack(true);
        setMessage("Erreur, essaie plus tard");
      }
    } catch (err) {
      setError(true);
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
      <Container size="xs">
        <Banner imgUrl="./src/assets/banner.png" />
        <h2>Mot de passe</h2>
        <Fieldset legend="Coordonnées" radius="sm" className="transparent">
          <Input
            placeholder="Mot de passe"
            value={password}
            onChange={(e) => setPassword(e.currentTarget.value)}
            type="password"
          />
          <br />
          <Input
            placeholder="Mot de passe"
            value={confirmPassword}
            onChange={(e) => setConfirmPassword(e.currentTarget.value)}
            type="password"
          />
          {error && (
            <MyAlert color="var(--font-light-grey)" message={message} />
          )}
          {errorBack && (
            <>
              <MyAlert color="var(--font-light-grey)" message={message} />
              <Link to="/connexion" className="invisible-button">
                Connexion !!!
              </Link>
            </>
          )}
        </Fieldset>
        <Button
          type="button"
          className="invisible-button-with-border"
          onClick={() => handleErrorAndSend()}
        >
          Suivant
        </Button>
      </Container>
    </div>
  );
}
