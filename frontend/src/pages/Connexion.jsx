import { useState } from "react";
import { Link } from "react-router-dom";
import { Button, Container, Fieldset, Input } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";

export default function Connexion() {
  const { login, setMessageUser } = useUserContext("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const validateEmail = (mail) => {
    return String(mail)
      .toLowerCase()
      .match(
        /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      );
  };

  function checkError() {
    if (email !== "" && validateEmail(email) && password !== "") {
      login({ email, password });
    } else {
      setMessageUser("Email ou mot de passe non conformes");
    }
  }
  return (
    <Container size="xs">
      <Banner imgUrl="./src/assets/banner.png" />
      <h2>La banque de tutos</h2>
      <Fieldset legend="Coordonnées" radius="sm" className="transparent">
        <Input
          placeholder="Votre email"
          value={email}
          onChange={(e) => setEmail(e.currentTarget.value)}
        />
        <Input
          placeholder="Mot de passe"
          value={password}
          onChange={(event) => setPassword(event.currentTarget.value)}
          rightSectionPointerEvents="all"
          mt="md"
          type="password"
        />
      </Fieldset>
      <Button
        type="button"
        onClick={() => checkError()}
        className="invisible-button-with-border"
      >
        Connexion
      </Button>
      <div>
        <span>Pas de compte? </span>
        <Link to="/inscription" className="invisible-button">
          Créer votre compte
        </Link>
      </div>
      <div>
        <Link to="/fpassword" className="invisible-button">
          Mot de passe oublié !!!
        </Link>
      </div>
    </Container>
  );
}
