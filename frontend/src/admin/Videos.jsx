import { Center, Container, Grid, Progress } from "@mantine/core";
import { useEffect } from "react";
import VideoBar from "./VideoBar";
import SingleLineVideo from "../components/SingleLineVideo";
import { useVideoContext } from "../context/videoContext";

export default function Videos() {
  const { videos, getVideoListFromPlaylist } = useVideoContext();

  useEffect(() => {
    getVideoListFromPlaylist("PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69");
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
      {videos.map((ele) => (
        <SingleLineVideo
          key={ele.ytId}
          ytId={ele.ytId}
          titre={ele.title}
          isHidden={ele.isHidden}
          isPublic={ele.isPublic}
          duration={ele.duration}
          playList={ele.playlistTitle}
          playListId={ele.playlistId}
        />
      ))}
    </Container>
  );
}
