import { useEffect, useRef, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { Container, Fieldset, Input, Button } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";
import MyAlert from "../components/MyAlert";

export default function RegisterPassword() {
  const navigate = useNavigate();
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const [error, setError] = useState(false);
  const [errorBack, setErrorBack] = useState(false);

  const { formValue, setFormValue } = useUserContext();
  const { register, messageUser, setMessageUser } = useUserContext();
  const refUser = useRef({});

  async function checkError() {
    if (password.length < 4 || password !== confirmPassword) {
      setError(true);
      setMessage(
        () => "Le mot de passe n'est pas conforme ou n'est pas confirmé!!!"
      );
    } else {
      setError(false);
      setFormValue({
        ...formValue,
        password,
        isAdmin: 0,
        imgUrl: `${import.meta.env.VITE_BACKEND_URL}/uploads/default.png`,
      });
      refUser.current = {
        ...formValue,
        password,
        isAdmin: 0,
        imgUrl: `${import.meta.env.VITE_BACKEND_URL}/uploads/default.png`,
      };
      const isDone = await register(refUser.current);
      setMessage(() => messageUser);
      setErrorBack(false);
      if (isDone) navigate("/connexion");
      else {
        setErrorBack(true);
      }
    }
  }
  useEffect(() => {
    setMessageUser("");
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
              <MyAlert color="var(--font-light-grey)" message={messageUser} />
              <Link to="/connexion" className="invisible-button">
                Connexion !!!
              </Link>
            </>
          )}
        </Fieldset>
        <Button
          type="button"
          onClick={() => checkError()}
          className="invisible-button-with-border"
        >
          Suivant
        </Button>
      </Container>
    </div>
  );
}
