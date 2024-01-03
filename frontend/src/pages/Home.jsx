import { useEffect } from "react";
import Carroussel from "../components/Carroussel";
import Keyborad from "../components/Keyboard";
import Map from "../components/Map";

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
      <Map />
      <Keyborad />
      <Carroussel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
    </div>
  );
}

export default Home;
