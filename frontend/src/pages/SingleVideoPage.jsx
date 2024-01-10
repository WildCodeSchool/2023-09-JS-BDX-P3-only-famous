import { useEffect } from "react";
import OneVideo from "./OneVideo";

export default function SingleVideoPage() {
  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);
  return (
    <div className="singleVideoPage">
      <OneVideo />
    </div>
  );
}
