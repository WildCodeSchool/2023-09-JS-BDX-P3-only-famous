import { useState } from "react";
import { Button, Container, Fieldset, Input } from "@mantine/core";
import DatePicker from "../components/DatePicker";
import { useUserContext } from "../context/UserContext";
import RegisterPassword from "./RegisterPassword";
import Banner from "../components/Banner";
import MyAlert from "../components/MyAlert";

export default function RegisterCoord() {
  const [email, setEmail] = useState("");
  const [birthday, setBirdthday] = useState("");
  const [message, setMessage] = useState("");
  const { formValue, setFormValue } = useUserContext();
  const [next, setNext] = useState(false);
  const [error, setError] = useState(false);

  function checkError() {
    const mailformat = /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
    if (email === "" || birthday === "" || !email.match(mailformat)) {
      setMessage(
        () => "La date de naissance et un email valide sont obligatoires!!!"
      );
      setError(true);
    } else {
      setFormValue({ ...formValue, email, birthday });
      setMessage(() => "");
      setNext(true);
    }
  }

  return !next ? (
    <div className="inscription_container">
      <div className="inscription_container">
        <Container size="xs">
          <Banner imgUrl="./src/assets/banner.png" />
          <h2>Nom et prénom</h2>
          <Fieldset legend="Coordonnées" radius="sm" className="transparent">
            <Input
              placeholder="Email"
              value={email}
              onChange={(e) => setEmail(e.currentTarget.value)}
              type="email"
            />
            <DatePicker
              date={birthday}
              value={birthday}
              setDate={setBirdthday}
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
    </div>
  ) : (
    <RegisterPassword />
  );
}
