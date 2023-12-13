import React from "react";
import PropTypes from "prop-types";

function VideoCard({ address, title }) {
  return (
    <div className="video-card">
      <iframe
        width="220"
        height="123"
        src={
          address ??
          `https://www.youtube.com/embed/U2LGd8TLG9A?si=TRTjtM6Depk6Lf26`
        }
        title="YouTube video player"
        frameBorder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen
      />
      <h3>{title}</h3>
    </div>
  );
}
VideoCard.propTypes = {
  title: PropTypes.string.isRequired,
  address: PropTypes.string.isRequired,
};

export default VideoCard;
