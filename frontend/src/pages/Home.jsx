import { useEffect, useState } from "react";
import { useSearchParams } from "react-router-dom";
import Carroussel from "../components/Carroussel";
import Keyborad from "../components/Keyboard";

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
      {/* <Map /> */}
      <Keyborad />
      <Carroussel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      <Carroussel playlistId="PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3" />
      <Carroussel playlistId="PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm" />
    </div>
  );
}

export default Home;
