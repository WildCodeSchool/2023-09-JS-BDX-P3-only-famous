import { Center, Container } from "@mantine/core";
import { useEffect } from "react";
import PrimeCarousel from "../components/PrimeCarousel";
import Tag from "../components/tabs/Tab";
import Banner from "../assets/banner.jpg";
import { useVideoContext } from "../context/videoContext";
import { useUserContext } from "../context/UserContext";

function Home() {
  const { playlistsHome } = useVideoContext();
  const { getFavorite, user } = useUserContext();
  const preventDefault = (ev) => {
    if (ev.preventDefault) {
      ev.preventDefault();
    }
  };
  const enableBodyScroll = () => {
    document.removeEventListener("wheel", preventDefault, false);
  };
  enableBodyScroll();

  useEffect(() => {
    if (user.isConnected) {
      getFavorite();
    }
  }, []);
  return (
    <div>
      <div
        style={{ backgroundImage: `url(${Banner})` }}
        className="banner-main"
      />
      <Center>
        <h1 className="main-title">Choisissez votre langage</h1>
      </Center>

      <Tag />
      <Container size="lg">
        {playlistsHome.map((ele) => (
          <PrimeCarousel playlistId={ele.playlistId} key={ele.playlistId} />
        ))}
      </Container>
    </div>
  );
}

export default Home;
