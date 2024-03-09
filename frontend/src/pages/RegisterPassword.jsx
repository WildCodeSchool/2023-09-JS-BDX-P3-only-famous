import { useEffect, useRef, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { Container, Fieldset, Input, Button } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";
import bannerImage from "../assets/banner.png";
import MyAlert from "../components/MyAlert";

export default function RegisterPassword() {
  const navigate = useNavigate();
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const [error, setError] = useState(false);
  const [errorBack, setErrorBack] = useState(false);

  const { formValue, setFormValue } = useUserContext();
  const { register, messageUser, setMessageUser, validatePassword } =
    useUserContext();
  const refUser = useRef({});

  async function checkError() {
    if (
      password.length < 4 ||
      password !== confirmPassword ||
      !validatePassword(password)
    ) {
      setError(true);
      setMessage(
        () =>
          "Le mot de passe n'est pas conforme (une lettre majuscule, une miniscule, un chiffre, et un character spécial)!!!"
      );
    } else {
      setError(false);
      setFormValue({
        ...formValue,
        password,
        isAdmin: 0,
        imgUrl: "",
      });
      refUser.current = {
        ...formValue,
        password,
        isAdmin: 0,
        imgUrl: "",
        // imgUrl: `${import.meta.env.VITE_BACKEND_URL}/uploads/charlize.jpg`,
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
        <Banner imgUrl={bannerImage} />
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
          onClick={() => checkError()}
          className="invisible-button-with-border"
        >
          Suivant
        </Button>
      </Container>
    </div>
  );
}
