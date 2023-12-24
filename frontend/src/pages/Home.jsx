import videoItems from "../components/Data";
import Carroussel from "../components/Carroussel";
import Map from "../components/Map";
import RegsiterCoord from "./RegisterCoord";

function Home() {
  return (
    <div>
      <Map />
      <RegsiterCoord />
      <Carroussel videoItems={videoItems} titre="Nature" />
      <Carroussel videoItems={videoItems} titre="Villes" />
    </div>
  );
}

export default Home;
