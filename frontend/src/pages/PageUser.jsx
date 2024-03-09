import { useEffect, useState } from "react";
import { Navigate } from "react-router-dom";
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
  Space,
  Spoiler,
  Textarea,
} from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import MyAlert from "../components/MyAlert";
// import Default from "../assets/default.png";

export default function PageUser() {
  const { user, setUser, sendResetLink, updateName, updateDescription } =
    useUserContext();
  const [firstname, setFirstname] = useState(user.firstname);
  const [description, setDescription] = useState(user.description);
  const [editMode, setEditMode] = useState(false);

  const [lastname, setLastname] = useState(user.lastname);
  const [message, setMessage] = useState("");
  const [error, setError] = useState(false);
  const [messageUpdateInfos, setMessageUpdateInfos] = useState("");

  async function handleChange(e) {
    const formData = new FormData();
    formData.append("file", e.target.files[0]);
    formData.append("message", "testing");

    const { data } = await axios.post(
      `${import.meta.env.VITE_BACKEND_URL}/api/userimage`,
      formData
    );
    setUser({ ...user, imgUrl: data.imgUrl });
  }
  async function ResetEmail() {
    const res = await sendResetLink(user.email);
    setMessage(res.message);
    setError(res.success);
  }

  async function fakeLoader() {
    axios.defaults.headers.common = {
      Authorization: `Bearer ${localStorage.getItem("token") ?? ""}`,
    };
    try {
      if (localStorage.getItem("token")) {
        const { data } = await axios.get(
          `${import.meta.env.VITE_BACKEND_URL}/api/getprofile`
        );
        setUser({ ...data, isConnected: true });
      }
    } catch (err) {
      console.error(err.message);
    }
  }

  async function updateInfos() {
    if (firstname && firstname.length >= 3 && lastname && lastname.length > 4) {
      const res = await updateName({ email: user.email, firstname, lastname });
      setMessageUpdateInfos(res.message);

      if (res.result) {
        await fakeLoader();
        setUser({ ...user, firstname, lastname });

        // window.location.href = `${import.meta.env.VITE_FRONTEND_URL}/user`;
      }
    } else {
      setMessageUpdateInfos("Nom ou prénom pas conformes");
    }
  }

  async function updateDesc() {
    // console.log("descitp", description);
    const res = await updateDescription({ email: user.email, description });
    setMessageUpdateInfos(res.message);
    if (res.result) {
      await fakeLoader();
      setUser({ ...user, description });

      // window.location.href = `${import.meta.env.VITE_FRONTEND_URL}/user`;
    } else {
      setMessageUpdateInfos("Nom ou prénom pas conformes");
    }
  }

  useEffect(() => {
    fakeLoader();
  }, []);

  return user.isConnected ? (
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
      <Button
        type="button"
        onClick={() => setEditMode(!editMode)}
        className="invisible-button-with-border"
      >
        {!editMode ? "Editer" : "Visualiser"}
      </Button>
      <div className="user-card">
        <div
          className="user-image"
          style={{
            backgroundImage: `url(${
              user.imgUrl !== ""
                ? user.imgUrl
                : "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png"
            })`,
          }}
        />
        <div className="user-details">
          <div>
            <Spoiler maxHeight={200} showLabel="Plus" hideLabel="Moins">
              <h3>Profil</h3>
              {!editMode ? (
                <div>
                  <p>
                    {description ??
                      "Editer votre profil, parlez-nous de vous ..."}
                  </p>
                  <Space h="md" />
                  <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
                    <Grid.Col span={6}>
                      <p> Nom et prénom :</p>
                    </Grid.Col>
                    <Grid.Col span={6}>
                      {firstname} {lastname}{" "}
                    </Grid.Col>
                    <Grid.Col span={6}>
                      <p> Date de naissance :</p>
                    </Grid.Col>
                    <Grid.Col span={6}>{user.birthday}</Grid.Col>
                  </Grid>
                </div>
              ) : (
                <div>
                  <div>
                    <Textarea
                      type="text"
                      value={description ?? "Parlez-nous de vous ..."}
                      onChange={(e) => setDescription(e.target.value)}
                      autosize
                    />
                    <Button
                      type="button"
                      onClick={() => updateDesc()}
                      className="invisible-button-with-border"
                    >
                      Mettre à jour
                    </Button>
                    <input
                      type="file"
                      accept="image/png, image/jpeg"
                      name="profilImage"
                      onChange={handleChange}
                    />
                    <br />
                    <br />
                  </div>
                  <br />
                  <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
                    <Grid.Col span={6}>
                      {" "}
                      <Input.Wrapper
                        label="Prénom"
                        withAsterisk
                        description="obligatoire"
                      >
                        <Input
                          placeholder="Votre prénom"
                          value={firstname}
                          onChange={(e) => setFirstname(e.currentTarget.value)}
                        />
                      </Input.Wrapper>
                    </Grid.Col>
                    <Grid.Col span={6}>
                      <Input.Wrapper
                        label="Nom"
                        withAsterisk
                        description="obligatoire"
                      >
                        <Input
                          placeholder="Votre nom"
                          value={lastname}
                          onChange={(e) => setLastname(e.currentTarget.value)}
                        />
                      </Input.Wrapper>
                    </Grid.Col>
                    <Grid.Col span={6}>
                      {" "}
                      <Button
                        type="button"
                        className="invisible-button-with-border"
                        onClick={() => updateInfos()}
                      >
                        Suivant
                      </Button>
                    </Grid.Col>
                  </Grid>
                </div>
              )}
            </Spoiler>
          </div>
        </div>
      </div>
      <Progress color="gray" value={100} />

      <MyAlert
        variant={!user.isActive ? "light" : "dark"}
        title="Status de l'activation"
        radius="md"
        color={
          !user.isActive
            ? "var(--mantine-color-red-8)"
            : "var(--mantine-color-blue-8)"
        }
        message={
          !user.isActive
            ? "Verifier vos emails pour activer votre compte"
            : "Compte active"
        }
      />

      {message && (
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
      )}

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
  ) : (
    <Navigate to="/" />
  );
}
