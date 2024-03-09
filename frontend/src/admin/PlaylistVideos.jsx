import { Center, Container, Grid, Pagination, Progress } from "@mantine/core";
import { useEffect, useRef, useState } from "react";
import axios from "axios";
import { useParams } from "react-router-dom";
import SingleLineVideo from "../components/SingleLineVideo";
import VideoBarPlaylist from "./VideoBarPlaylist";

export default function PlaylistVideos() {
  const videoPerPage = useRef(10);
  const [activePage, setPage] = useState(1);
  const [videos, setVideos] = useState([]);
  const [playlistTitle, setPlaylistTitle] = useState("");
  const [countVideos, setCountVideos] = useState(1);

  const { playlistId } = useParams();

  async function getVideoListFromPlaylist(playlistid, start, offset) {
    try {
      const { data } = await axios.get(
        `${
          import.meta.env.VITE_BACKEND_URL
        }/api/videos/${playlistid}?start=${start}&offset=${offset}`
      );
      setVideos([...data.videos]);
      setCountVideos(data.count);
      setPlaylistTitle(data.title);
    } catch (err) {
      setVideos([]);
    }
  }

  useEffect(() => {
    async function getData() {
      await getVideoListFromPlaylist(
        playlistId,
        (activePage - 1) * videoPerPage.current,
        videoPerPage.current
      );
    }
    getData();
  }, [activePage]);

  return (
    <Container size="fluid">
      <VideoBarPlaylist p={0} playlistTitle={playlistTitle} />
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
