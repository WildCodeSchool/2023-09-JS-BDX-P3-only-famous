import { useEffect } from "react";
import { Container } from "@mantine/core";
import PrimeCarousel from "../components/PrimeCarousel";
import Tag from "../components/tabs/Tab";

function Home() {
  const preventDefault = (ev) => {
    if (ev.preventDefault) {
      ev.preventDefault();
    }
  };
  const enableBodyScroll = () => {
    document.removeEventListener("wheel", preventDefault, false);
  };
  useEffect(() => {
    enableBodyScroll();
    window.scrollTo(0, 0);
  });
  return (
    <Container size="lg">
      <h1 className="main-title">Choisissez votre langage</h1>
      <Tag />
      {/* <Keyborad /> */}
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
    </Container>
  );
}

export default Home;
