import videoItems from "../components/Data";
import Carousel from "../components/Carousel";

function Home() {
  return <Carousel videoItems={videoItems} titre="titre générique" />;
}

export default Home;
