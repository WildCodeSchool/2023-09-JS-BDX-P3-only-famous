import videoItems from "../components/Data";
import Carroussel from "../components/Carroussel";
import Map from "../components/Map";

function Home() {
  return (
    <div>
      <Carroussel videoItems={videoItems} titre="titre générique" />
      <Map />
    </div>
  );
}

export default Home;
