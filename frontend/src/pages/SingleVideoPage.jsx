import { useEffect } from "react";
import { Container } from "@mantine/core";
import OneVideo from "./OneVideo";
import PrimeCarousel from "../components/PrimeCarousel";
import { useVideoContext } from "../context/videoContext";
import { useUserContext } from "../context/UserContext";

export default function SingleVideoPage() {
  const { getAllPlaylistsByCategory, playlists } = useVideoContext();
  const { linkToVideo } = useUserContext();
  useEffect(() => {
    async function getData() {
      await getAllPlaylistsByCategory(linkToVideo.tags);
    }
    getData();
  }, []);
  return (
    <div className="singleVideoPage">
      <Container size="lg">
        <OneVideo />

        {playlists
          .filter((_, index) => index < 5)
          .map((ele) => {
            return <PrimeCarousel playlistId={ele.playlistId} />;
          })}
      </Container>
    </div>
  );
}
