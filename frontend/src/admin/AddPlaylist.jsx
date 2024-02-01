import {
  Button,
  Container,
  Grid,
  Input,
  InputWrapper,
  Loader,
  Space,
  Title,
} from "@mantine/core";
import { useState } from "react";
import { useAdmin } from "../context/AdminContext";

export default function AddPlaylist() {
  const [playlistInfo, setPlaylistInfo] = useState({});
  const { addPlaylistDone, addPlaylist } = useAdmin();

  async function handleChange(e) {
    setPlaylistInfo({ ...playlistInfo, [e.target.name]: e.target.value });
  }
  return (
    <Container size="md">
      <Title order={3} size="h1">
        Ajouter une playliste{" "}
      </Title>
      <Space h="xl" />
      <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
        <Grid.Col span={6}>
          <InputWrapper
            label="Playlist Id"
            withAsterisk
            description="obligatoire"
          >
            <Input
              name="playlistId"
              placeholder="playlist Id"
              value={playlistInfo.playlistId}
              onChange={(e) => handleChange(e)}
            />
          </InputWrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          <InputWrapper
            label="Playlist Title"
            withAsterisk
            description="obligatoire"
          >
            <Input
              name="playlistTitle"
              placeholder="playlist Title"
              value={playlistInfo.playlistTitle}
              onChange={(e) => handleChange(e)}
            />
          </InputWrapper>
        </Grid.Col>
      </Grid>
      <Grid gutter={{ base: 5, xs: "md", md: "xl", xl: 50 }}>
        <Grid.Col span={12}>
          <InputWrapper
            label="Categorie"
            withAsterisk
            description="obligatoire"
          >
            <Input
              name="category"
              placeholder="Categorie"
              value={playlistInfo.category}
              onChange={(e) => handleChange(e)}
            />
          </InputWrapper>
        </Grid.Col>
        <Grid.Col span={6}>
          <Button
            type="button"
            className="invisible-button-with-border"
            onClick={() => addPlaylist(playlistInfo)}
          >
            Ajouter une playliste
          </Button>
        </Grid.Col>
        <Grid.Col span={6}>{!addPlaylistDone && <Loader />}</Grid.Col>
      </Grid>
    </Container>
  );
}
