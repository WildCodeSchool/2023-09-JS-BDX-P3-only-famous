import { Container } from "@mantine/core";
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
    <Container size="lg">
      <h1 className="main-title">Choisissez votre langage</h1>
      <Tag />
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      {playlistsHome.map((ele) => (
        <PrimeCarousel playlistId={ele.playlistId} key={ele.playlistId} />
      ))}
    </Container>
  );
}

export default Home;
