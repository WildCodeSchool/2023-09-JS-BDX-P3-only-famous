import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import {
  Alert,
  Button,
  Center,
  Container,
  Fieldset,
  Grid,
  Input,
  Progress,
  Spoiler,
} from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import MyAlert from "../components/MyAlert";

export default function PageUser() {
  const navigate = useNavigate();
  const { user, setUser, sendResetLink, updateName } = useUserContext();
  const [firstname, setFirstname] = useState(user.firstname);
  const [lastname, setLastname] = useState(user.lastname);
  const [message, setMessage] = useState("");
  const [error, setError] = useState(false);
  const [messageUpdateInfos, setMessageUpdateInfos] = useState("test");

  const [urlImage, setUrlImage] = useState({ preview: user.imgUrl });

  async function handleChange(e) {
    setUrlImage({
      data: e.target.files[0],
      preview: URL.createObjectURL(e.target.files[0]),
    });
    const formData = new FormData();
    formData.append("file", e.target.files[0]);
    const { imgUrl } = await axios.post(
      "http://localhost:3310/api/userimage",
      formData
    );
    setUser({ ...user, imgUrl });
  }

  async function ResetEmail() {
    const res = await sendResetLink(user.email);
    setMessage(res.message);
    setError(res.success);
  }

  async function updateInfos() {
    if (firstname && firstname.length >= 3 && lastname && lastname.length > 4) {
      const res = await updateName({ email: user.email, firstname, lastname });
      setMessageUpdateInfos(res.message);
      if (res.result) {
        setUser({ ...user, firstname, lastname });
      }
    } else {
      setMessageUpdateInfos("Nom ou prénom pas conformes");
    }
  }

  useEffect(() => {
    window.scrollTo(0, 0);
    if (!user.isConnected) {
      navigate("/");
    }
  }, []);
  return (
    <Container size="md">
      <Center
        maw={1200}
        h={100}
        bg="var(--mantine-color-gray-light)"
        className="banner"
      >
        <h2>
          Bienvenue {user.firstname} {user.lastname}
        </h2>
      </Center>
      <div className="user-card">
        <div
          className="user-image"
          style={{
            backgroundImage: `url(${urlImage.preview ?? user.imgUrl})`,
          }}
        />
        <div className="user-details">
          <div>
            <Spoiler maxHeight={200} showLabel="Show more" hideLabel="Hide">
              <h3>Profil</h3>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga
              quibusdam dolorum at explicabo nostrum? A quae sapiente, commodi
              optio rem unde voluptas voluptatum harum minima repellendus
              maxime, ullam, velit veritatis!
            </Spoiler>
          </div>
          <input
            type="file"
            accept="image/png, image/jpeg"
            name="profilImage"
            onChange={handleChange}
          />
        </div>
      </div>
      <Progress color="gray" value={100} />

      <MyAlert
        variant={user.isActive ? "light" : "dark"}
        title="Status de l'activation"
        radius="md"
        color={
          !user.isActive
            ? "var(--mantine-color-red-8)"
            : "var(--mantine-color-blue-1)"
        }
        message={
          !user.isActive
            ? "Verifier vos email pour activer votre compte"
            : "Compte active"
        }
      />
      <Center
        maw={1200}
        h={50}
        bg="var(--mantine-color-gray-light)"
        className="banner"
      >
        <h2>Éditer votre profil</h2>
      </Center>

      <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Prénom" withAsterisk description="obligatoire">
            <Input
              placeholder="Votre prénom"
              value={firstname}
              onChange={(e) => setFirstname(e.currentTarget.value)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Nom" withAsterisk description="obligatoire">
            <Input
              placeholder="Votre nom"
              value={lastname}
              onChange={(e) => setLastname(e.currentTarget.value)}
            />
          </Input.Wrapper>
        </Grid.Col>
      </Grid>
      <Button
        type="button"
        className="invisible-button-with-border"
        onClick={() => updateInfos()}
      >
        Suivant
      </Button>

      <Alert
        variant="dark"
        color="red"
        radius="md"
        title="Message "
        style={{ margin: "15px 0" }}
      >
        <span style={{ color: `var(--mantine-color-red-8)` }}>
          {messageUpdateInfos}
        </span>
      </Alert>

      <Container>
        <Fieldset legend="Coordonnées" radius="sm" className="transparent">
          <Center
            maw={1200}
            h={50}
            bg="var(--mantine-color-gray-light)"
            className="banner"
          >
            <Button
              type="button"
              className="invisible-button-with-border"
              onClick={() => ResetEmail()}
            >
              Réinitialiser le mot de passe
            </Button>
          </Center>
          <h5 style={{ color: "var(--mantine-color-red-8)" }}>
            Un email de validation sera envoyé à cette adresse mail{" "}
          </h5>
          <Input
            placeholder="Votre email"
            value={user.email}
            type="email"
            disabled
          />
          {error && (
            <Alert
              variant="dark"
              color="red"
              radius="md"
              title="Message "
              style={{ margin: "15px 0" }}
            >
              <span style={{ color: `var(--mantine-color-red-8)` }}>
                {message}
              </span>
            </Alert>
          )}
        </Fieldset>
      </Container>
    </Container>
  );
}
