import { useEffect } from "react";
import OneVideo from "./OneVideo";
import PrimeCarousel from "../components/PrimeCarousel";

export default function SingleVideoPage() {
  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);
  return (
    <div className="singleVideoPage">
      <OneVideo />
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      <PrimeCarousel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
    </div>
  );
}
