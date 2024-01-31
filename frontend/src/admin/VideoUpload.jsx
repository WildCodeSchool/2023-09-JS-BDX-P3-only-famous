import { useState } from "react";
import axios from "axios";
import {
  Button,
  Container,
  Grid,
  Input,
  Loader,
  Textarea,
} from "@mantine/core";

export default function VideoUpload() {
  const [message, setMessage] = useState("");
  const [isUploading, setIsUploading] = useState(false);
  const formData = new FormData();
  const [googleAuth, setGoogleAuth] = useState("");
  const [datas, setDatas] = useState({
    title: "",
    description: "",
    tags: "",
    playlistId: "",
    playlistTitle: "",
  });
  async function handleChange(e) {
    formData.append("file", e.target.files[0]);
  }
  async function handleInput(e) {
    setDatas({ ...datas, [e.currentTarget.name]: e.currentTarget.value });
  }
  async function redirection() {
    const { data } = await axios.get(
      `${import.meta.env.VITE_BACKEND_URL}/upload/initialize`
    );
    setGoogleAuth(data);
    window.open(data, "_blank").focus();
    // console.log(data);
  }

  async function upload() {
    if (
      datas.title === "" ||
      datas.description === "" ||
      datas.tags === "" ||
      datas.playlistId === ""
    ) {
      setMessage("Entrées onligatoires !!!");
    } else {
      setMessage("");

      formData.append("title", datas.title);
      formData.append("description", datas.description);
      formData.append("tags", datas.tags);
      formData.append("playlistId", datas.playlistId);
      formData.append("playlistTitle", datas.playlistTitle);

      setIsUploading(true);
      const { data } = await axios.post(
        `${import.meta.env.VITE_BACKEND_URL}/upload/video`,
        formData
      );
      setIsUploading(false);

      if (data) {
        setMessage("Video uploaded succefully");
      }
    }
  }

  return (
    <Container size="md">
      <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
        <Grid.Col span={6}>
          <Button
            type="button"
            className="invisible-button-with-border"
            onClick={() => {
              redirection();
            }}
          >
            set token
          </Button>
        </Grid.Col>
        <Grid.Col span={3}>
          {googleAuth && (
            <Button>
              <a href={googleAuth} target="_blank" rel="noreferrer">
                {" "}
                getToken
              </a>
            </Button>
          )}
        </Grid.Col>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Titre" withAsterisk description="obligatoire">
            <Input
              name="title"
              placeholder="Titre"
              value={datas.title}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          {" "}
          <Input.Wrapper label="Vidéo" withAsterisk description="obligatoire">
            <Input
              id="file"
              type="file"
              accept=".mp4"
              onChange={(e) => handleChange(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={12}>
          {" "}
          <Input.Wrapper
            label="Description"
            withAsterisk
            description="obligatoire"
          >
            <Textarea
              name="description"
              placeholder="description"
              value={datas.description}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={12}>
          {" "}
          <Input.Wrapper
            label="Tags"
            withAsterisk
            description="Séparez vos tags par virgule"
          >
            <Input
              name="tags"
              placeholder="tags"
              value={datas.tags}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>{" "}
        <Grid.Col span={6}>
          <Input.Wrapper
            label="Playlist Id"
            withAsterisk
            description="Playliste Id"
          >
            <Input
              name="playlistId"
              placeholder="playliste Id"
              value={datas.playlistId}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          <Input.Wrapper
            label="Titre playlist"
            withAsterisk
            description="Titre playliste"
          >
            <Input
              name="playlistTitle"
              placeholder="Titre playliste"
              value={datas.playlistTitle}
              onChange={(e) => handleInput(e)}
            />
          </Input.Wrapper>
        </Grid.Col>
      </Grid>
      <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
        <Grid.Col span={3}>
          <Button
            type="button"
            className="invisible-button-with-border"
            onClick={() => upload()}
          >
            Upload
          </Button>
        </Grid.Col>
        <Grid.Col span={6}>{isUploading && <Loader size={16} />}</Grid.Col>
      </Grid>

      <h2>{message}</h2>
    </Container>
  );
}
