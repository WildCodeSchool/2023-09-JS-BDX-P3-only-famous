import { useState } from "react";
import { Button, Container, Fieldset, Input } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";
import MyAlert from "../components/MyAlert";
import bannerImage from "../assets/connection.jpg";

export default function ForgotPassword() {
  const [email, setEmail] = useState("");
  const [messageBack, setMessageBack] = useState("");
  const [message, setMessage] = useState("");

  const { sendResetLink } = useUserContext();
  const [error, setError] = useState(false);
  const [showMessage, setShowMessage] = useState(false);

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
        setShowMessage(true);
      } else {
        setError(true);
        setShowMessage(false);
        setMessageBack(res.message);
      }
    } else {
      setError(true);
      setShowMessage(false);
      setMessage("Email invalide");
    }
  }

  return (
    <div className="inscription_container">
      <Container size="xs">
        <Banner imgUrl={bannerImage} />
        <h2>Mot de passe oublié</h2>
        <Fieldset legend="Email" radius="sm" className="transparent">
          <Input
            placeholder="Votre email"
            value={email}
            onChange={(e) => {
              setMessage("");
              setMessageBack("");
              setEmail(e.currentTarget.value);
              setError(false);
              setShowMessage(false);
            }}
            type="email"
          />
          {error && (
            <MyAlert color="var(--font-light-grey)" message={message} />
          )}
          {showMessage && !error && (
            <MyAlert
              color="var(--font-light-grey)"
              message={messageBack}
              title="Message"
              variant="dark"
            />
          )}
        </Fieldset>
        <Button
          type="button"
          className="invisible-button-with-border"
          onClick={() => {
            sendLink();
            setShowMessage(true);
          }}
        >
          Réinitialiser
        </Button>
      </Container>
    </div>
  );
}
