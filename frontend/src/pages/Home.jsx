import videoItems from "../components/Data";
import Carroussel from "../components/Carroussel";
import CustomMap from "../components/CustomMap";

function Home() {
  return (
    <div>
      <CustomMap />
      <Carroussel videoItems={videoItems} titre="Nature" />
      <Carroussel videoItems={videoItems} titre="Villes" />
    </div>
  );
}

export default Home;
