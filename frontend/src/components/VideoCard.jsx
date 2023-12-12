import React from "react";
import PropTypes from "prop-types";

function VideoCard({ video, title }) {
  return (
    <div>
      <iframe
        width="240"
        height="135"
        src={video}
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
  video: PropTypes.string.isRequired,
};

export default VideoCard;
