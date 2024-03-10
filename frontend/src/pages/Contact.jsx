import {
  Alert,
  Button,
  Container,
  Fieldset,
  Grid,
  Input,
  Textarea,
} from "@mantine/core";
import { IconInfoCircle } from "@tabler/icons-react";
import { useState } from "react";
import { useUserContext } from "../context/UserContext";
import Banner from "../components/Banner";
import bannerImage from "../assets/banner.png";

export default function Contact() {
  const { user } = useUserContext();
  const [message, setMessage] = useState({
    title: "",
    text: "",
  });
  const [errorMessage, setErrorMessage] = useState("");
  const handleChange = (e) => {
    if (e.target.name !== "text") {
      setMessage({ ...message, [e.target.name]: e.target.value });
    } else if (e.target.value.length < 50) {
      setMessage({ ...message, [e.target.name]: e.target.value });
      if (errorMessage) {
        setErrorMessage("");
      }
    } else {
      setErrorMessage("vous avez atteint la longueur maximale du message");
    }
  };
  const icon = <IconInfoCircle />;
  return (
    <Container size="sm">
      <Banner imgUrl={bannerImage} />
      <Fieldset legend="Coordonnées" radius="sm" className="transparent">
        <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
          <Grid.Col span={12}>
            <Input
              placeholder="Email"
              value={user.email}
              type="email"
              name="email"
              disabled
            />
          </Grid.Col>
        </Grid>
        <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
          <Grid.Col span={6}>
            <Input
              placeholder="Prénom"
              value={user.firstname}
              type="text"
              name="firstname"
              disabled
            />
          </Grid.Col>
          <Grid.Col span={6}>
            <Input
              placeholder="Nom"
              value={user.lastname}
              disabled
              type="text"
              name="lastname"
            />
          </Grid.Col>
        </Grid>

        <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
          <Grid.Col span={12}>
            <select
              name="title"
              id="title"
              value={message.title}
              onChange={handleChange}
              style={{ width: "100%", paddingLeft: "10px" }}
            >
              <option value="" disabled>
                Choisissez votre sujet
              </option>
              <option value="reclamation">Réclamation</option>
              <option value="suggestion">Suggestion</option>
              <option value="other">Autre</option>
            </select>
          </Grid.Col>
        </Grid>
        <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
          <Grid.Col span={12}>
            <Textarea
              value={message.text}
              name="text"
              placeholder="Votre message ici"
              style={{
                maxHeight: "200px",
                overflow: "auto",
              }}
              onChange={handleChange}
              autosize
              minRows={4}
            />
          </Grid.Col>
        </Grid>
        {errorMessage && (
          <Alert variant="light" color="red" title="Alert title" icon={icon}>
            <span style={{ color: "white" }}>{errorMessage}</span>
          </Alert>
        )}
      </Fieldset>
      <Button className="invisible-button-with-border">Envoyer</Button>
    </Container>
  );
}
