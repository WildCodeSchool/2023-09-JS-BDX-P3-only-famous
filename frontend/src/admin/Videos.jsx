import { Center, Container, Grid, Pagination, Progress } from "@mantine/core";
import { useEffect, useRef } from "react";
import VideoBar from "./VideoBar";
import SingleLineVideo from "../components/SingleLineVideo";
import { useVideoContext } from "../context/videoContext";

export default function Videos() {
  const { videos, getAllVideosPagination, countVideos, activePage, setPage } =
    useVideoContext();
  const videoPerPage = useRef(10);

  useEffect(() => {
    async function getData() {
      await getAllVideosPagination(
        (activePage - 1) * videoPerPage.current,
        videoPerPage.current
      );
    }
    getData();
  }, [activePage]);
  useEffect(() => {
    setPage(1);
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
      <div
        className="list-playlist"
        style={{ height: "400px", overflowY: "auto", overflowX: "hidden" }}
      >
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
      </div>
      {videoPerPage.current < countVideos && (
        <Pagination
          total={countVideos / videoPerPage.current + 1}
          value={activePage}
          onChange={setPage}
          className="pages"
        />
      )}
    </Container>
  );
}
