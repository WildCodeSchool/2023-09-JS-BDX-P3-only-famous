import { Center, Container, Grid, Progress } from "@mantine/core";
import { useEffect } from "react";
import VideoBar from "./VideoBar";
import SingleLineVideo from "../components/SingleLineVideo";
import { useVideoContext } from "../context/videoContext";

export default function Videos() {
  const { videos } = useVideoContext();

  const { getVideoListFromPlaylist } = useVideoContext();

  useEffect(() => {
    getVideoListFromPlaylist("PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm");
  }, []);
  return (
    <Container size="fluid">
      <VideoBar p={0} />
      <Progress h={4} className="yellow-3" mt={10} mb={5} />
      <Grid>
        <Grid.Col span={3}>Titre</Grid.Col>
        <Grid.Col span={1}>Cachée</Grid.Col>
        <Grid.Col span={1}>Pubique </Grid.Col>
        <Grid.Col span={1}>Durée </Grid.Col>
        <Grid.Col span={2}>Playliste </Grid.Col>
        <Grid.Col span={4}>
          <Center>Action</Center>
        </Grid.Col>
      </Grid>
      <SingleLineVideo
        titre="test"
        isHidden={0}
        isPublic={1}
        duration="10:00"
        playList="playlist"
      />
      {videos.map((ele) => (
        <SingleLineVideo
          ytId={ele.ytId}
          titre={ele.title}
          isHidden={0}
          isPublic={1}
          duration={ele.duration}
          playList={ele.playlistTitle}
        />
      ))}
    </Container>
  );
}
