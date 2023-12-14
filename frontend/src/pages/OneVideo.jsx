import PropTypes from "prop-types";
import Accordion from "../components/Accordion";

export default function OneVideo({ title, date, videoUrl }) {
  return (
    <div className="SingleVideo">
      <div className="ratio ratio-16x9 center-middle">
        <iframe
          src={
            videoUrl ??
            "https://www.youtube.com/embed/N5VlFzWVvK0?si=iUwoNff9mgIlXDZ-"
          }
          title="YouTube video player"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowFullScreen
        />
      </div>
      <div className="SingleVideo-details">
        <div className="SingleVideo-title-date">
          <h3>{title ?? "Video Title"}</h3>
          <h5>{date ?? "Publié le 23-12-2023"}</h5>
        </div>
        <Accordion />
      </div>
    </div>
  );
}
OneVideo.propTypes = {
  title: PropTypes.string.isRequired,
  date: PropTypes.string.isRequired,
  videoUrl: PropTypes.string.isRequired,
};
