import { useState } from "react";
import { Button, Container, Fieldset, Input } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import RegisterCoord from "./RegisterCoord";
import Banner from "../components/Banner";
import bannerImage from "../assets/banner.png";
import MyAlert from "../components/MyAlert";

export default function RegisterUser() {
  const [firstname, setFirstname] = useState("");
  const [lastname, setLastname] = useState("");
  const [message, setMessage] = useState("");
  const [next, setNext] = useState(false);
  const [error, setError] = useState(false);

  const { formValue, setFormValue } = useUserContext();

  function checkError() {
    if (firstname === "" || lastname === "") {
      setError(true);
      setMessage("Les nom et prénom sont obligatoires!!!");
    } else {
      setFormValue({ ...formValue, firstname, lastname });
      setMessage("");
      setNext(true);
    }
  }

  return !next ? (
    <div className="inscription_container">
      <Container size="xs">
        <Banner imgUrl={bannerImage} />
        <h2>Nom et prénom</h2>
        <Fieldset legend="Coordonnées" radius="sm" className="transparent">
          <Input
            placeholder="Prénom"
            value={firstname}
            onChange={(e) => setFirstname(e.currentTarget.value)}
          />
          <Input
            placeholder="Nom"
            value={lastname}
            onChange={(event) => setLastname(event.currentTarget.value)}
            rightSectionPointerEvents="all"
            mt="md"
            type="text"
          />
          {error && (
            <MyAlert color="var(--font-light-grey)" message={message} />
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
  ) : (
    <RegisterCoord />
  );
}
