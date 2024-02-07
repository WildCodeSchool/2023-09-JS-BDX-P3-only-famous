import { Center, Container } from "@mantine/core";
import PrimeCarousel from "../components/PrimeCarousel";
import Tag from "../components/tabs/Tab";
import { useVideoContext } from "../context/videoContext";

function Home() {
  const { playlistsHome } = useVideoContext();
  const preventDefault = (ev) => {
    if (ev.preventDefault) {
      ev.preventDefault();
    }
  };
  const enableBodyScroll = () => {
    document.removeEventListener("wheel", preventDefault, false);
  };
  enableBodyScroll();
  return (
    <div>
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
