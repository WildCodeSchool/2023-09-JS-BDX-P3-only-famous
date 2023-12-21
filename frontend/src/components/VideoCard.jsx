import React from "react";
import PropTypes from "prop-types";

function VideoCard({ title }) {
  return (
    <a href="/onevideo" className="video-card">
      <h3>{title}</h3>
    </a>
  );
}
VideoCard.propTypes = {
  title: PropTypes.string.isRequired,
};

export default VideoCard;
