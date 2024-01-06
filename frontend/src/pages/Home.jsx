import { useEffect } from "react";
import Carroussel from "../components/Carroussel";
import Keyborad from "../components/Keyboard";

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
  });
  return (
    <div>
      {/* <Map /> */}
      <Keyborad />
      <Carroussel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      <Carroussel playlistId="PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3" />
      <Carroussel playlistId="PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm" />
    </div>
  );
}

export default Home;
