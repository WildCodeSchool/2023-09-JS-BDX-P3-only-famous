import videoItems from "../components/Data";
import Carroussel from "../components/Carroussel";

function Home() {
  return <Carroussel videoItems={videoItems} titre="titre générique" />;
}

export default Home;
