import { useEffect, useState } from "react";
import { useSearchParams } from "react-router-dom";
import Keyborad from "../components/Keyboard";
import PrimeCarousel from "../components/PrimeCarousel";

function Home() {
  const [active, setActive] = useState(false);
  const [searchParams] = useSearchParams();
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
    setActive(searchParams.get("activated") === "true");
  });
  return (
    <div>
      {active && <p>activé</p>}
      <Keyborad />
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
    </div>
  );
}

export default Home;
