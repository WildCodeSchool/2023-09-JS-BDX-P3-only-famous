import { useEffect } from "react";
import { Container } from "@mantine/core";
import OneVideo from "./OneVideo";
import PrimeCarousel from "../components/PrimeCarousel";
import { useVideoContext } from "../context/videoContext";
import { useUserContext } from "../context/UserContext";

export default function SingleVideoPage() {
  const { getAllPlaylistsByCategory, playlists, user, getFavorite } =
    useVideoContext();
  const { linkToVideo } = useUserContext();
  useEffect(() => {
    async function getData() {
      await getAllPlaylistsByCategory(linkToVideo.tags);
      if (user.isConnected) {
        await getFavorite(0, 5);
      }
    }
    getData();
  }, []);
  return (
    <div className="singleVideoPage">
      <div>
        <OneVideo />
        <Container size="fluid">
          {playlists
            .filter((_, index) => index < 5)
            .map((ele) => {
              return (
                ele.playlistId !== linkToVideo.playlistId && (
                  <PrimeCarousel playlistId={ele.playlistId} />
                )
              );
            })}
          <PrimeCarousel playlistId={linkToVideo.playlistId} />
        </Container>
      </div>
    </div>
  );
}
