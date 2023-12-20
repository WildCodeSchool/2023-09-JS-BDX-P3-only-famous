import Carroussel from "../components/Carroussel";
import OneVideo from "./OneVideo";
import videoItems from "../components/Data";

export default function SingleVideoPage() {
  return (
    <div className="singleVideoPage">
      <OneVideo />
      <Carroussel videoItems={videoItems} titre="Favories" />
    </div>
  );
}
