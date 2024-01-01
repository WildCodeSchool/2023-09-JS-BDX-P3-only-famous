import { useEffect, useState } from "react";
import Accordion from "../components/Accordion";
import { useUserContext } from "../context/UserContext";

export default function OneVideo() {
  const { linkToVideo } = useUserContext();
  const [fullLink, setFullLink] = useState("");
  useEffect(() => {
    setFullLink(`https://www.youtube.com/embed/${linkToVideo}`);
  }, []);
  return (
    <div className="SingleVideo">
      <div className="ratio ratio-16x9 center-middle">
        <iframe
          src={fullLink}
          title="YouTube video player"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowFullScreen
        />
      </div>
      <div className="SingleVideo-details">
        <div className="SingleVideo-title-date">
          <h3>Video Title</h3>
          <h5>Publié le 23-12-2023</h5>
        </div>
        <Accordion />
      </div>
    </div>
  );
}
