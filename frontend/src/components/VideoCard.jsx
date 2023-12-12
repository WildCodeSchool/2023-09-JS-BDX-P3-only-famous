import React from "react";
import PropTypes from "prop-types";

function VideoCard({ address, title }) {
  return (
    <div>
      <iframe
        width="240"
        height="135"
        src={address}
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
