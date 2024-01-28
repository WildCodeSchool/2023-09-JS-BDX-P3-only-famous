import { useState } from "react";
import axios from "axios";
import { Button, Container, Grid, Input, Textarea } from "@mantine/core";

export default function VideoUpload() {
  const [googleAuth, setGoogleAuth] = useState("");
  const [datas, setDatas] = useState({
    title: "",
    description: "",
    tags: "",
  });
  async function handleChange(e) {
    const formData = new FormData();
    formData.append("file", e.target.files[0]);
    formData.append("title", datas.title);
    formData.append("description", datas.description);
    formData.append("tags", "test, test1");
    // console.log(datas);
    await axios.post("http://localhost:3310/upload/video", formData);
  }
  async function handleInput(e) {
    setDatas({ ...datas, [e.currentTarget.name]: e.currentTarget.value });
  }
  async function redirection() {
    const { data } = await axios.get("http://localhost:3310/upload/initialize");
    setGoogleAuth(data);
    // console.log(data);
  }

  return (
    <Container size="md">
      <Button
        type="button"
        className="invisible-button-with-border"
        onClick={() => {
          axios.get("http://localhost:3310/upload/initialize");
        }}
      >
        Initialiser
      </Button>
      <Button
        type="button"
        className="invisible-button-with-border"
        onClick={() => {
          redirection();
        }}
      >
        set token
      </Button>
      <a href={googleAuth}>getToken</a>
      <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Prénom" withAsterisk description="obligatoire">
            <Input
              name="title"
              placeholder="Votre prénom"
              value={datas.title}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Nom" withAsterisk description="obligatoire">
            <Textarea
              name="description"
              placeholder="description"
              value={datas.description}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Nom" withAsterisk description="obligatoire">
            <Input
              type="file"
              accept=".mp4"
              onChange={(e) => handleChange(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
      </Grid>

      <Button
        type="button"
        className="invisible-button-with-border"
        onClick={() => {}}
      >
        Suivant
      </Button>
    </Container>
  );
}
