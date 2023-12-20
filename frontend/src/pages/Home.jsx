import videoItems from "../components/Data";
import Carroussel from "../components/Carroussel";
import CustomMap from "../components/CustomMap";
import Separator from "../components/Separator";

function Home() {
  return (
    <div>
      <CustomMap />
      <Carroussel videoItems={videoItems} titre="Nature" />
      <Carroussel videoItems={videoItems} titre="Villes" />
      <Separator />
    </div>
  );
}

export default Home;
