import videoItems from "../components/Data";
import Carroussel from "../components/Carroussel";
import Map from "../components/Map";

function Home() {
  return (
    <div>
      <Map />
      <Carroussel videoItems={videoItems} titre="Nature" />
      <Carroussel videoItems={videoItems} titre="Villes" />
    </div>
  );
}

export default Home;
