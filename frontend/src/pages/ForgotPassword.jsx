import { useEffect, useState } from "react";
import { Button, Container, Fieldset, Input } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";
import MyAlert from "../components/MyAlert";

export default function ForgotPassword() {
  const [email, setEmail] = useState("");
  const [messageBack, setMessageBack] = useState("");
  const [message, setMessage] = useState("");

  const { sendResetLink } = useUserContext();
  const [error, setError] = useState(false);

  const validateEmail = (mail) => {
    return String(mail)
      .toLowerCase()
      .match(
        /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      );
  };
  async function sendLink() {
    if (validateEmail(email)) {
      setError(false);
      const res = await sendResetLink(email);
      if (res.success) {
        setError(false);
        setMessageBack(res.message);
      } else {
        setError(true);
        setMessageBack(res.message);
      }
    } else {
      setError(true);
      setMessage("Email invalide");
    }
  }

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  return (
    <div className="inscription_container">
      <Container size="xs">
        <Banner imgUrl="./src/assets/banner.png" />
        <h2>Nom et prénom</h2>
        <Fieldset legend="Coordonnées" radius="sm" className="transparent">
          <Input
            placeholder="Votre email"
            value={email}
            onChange={(e) => setEmail(e.currentTarget.value)}
            type="email"
          />
          {error && (
            <MyAlert color="var(--font-light-grey)" message={message} />
          )}
          <MyAlert
            color="var(--font-light-grey)"
            message={messageBack}
            title="Message"
            variant="dark"
          />
        </Fieldset>
        <Button
          type="button"
          className="invisible-button-with-border"
          onClick={() => sendLink()}
        >
          Réinitialiser
        </Button>
      </Container>
    </div>
  );
}
