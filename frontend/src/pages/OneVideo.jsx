import Accordion from "../components/Accordion";

export default function OneVideo() {
  return (
    <div className="SingleVideo">
      <div className="ratio ratio-16x9 center-middle">
        <iframe
          src="https://www.youtube.com/embed/N5VlFzWVvK0?si=iUwoNff9mgIlXDZ-"
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
