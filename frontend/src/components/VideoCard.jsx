import React from "react";
import PropTypes from "prop-types";
import { Link } from "react-router-dom";

function VideoCard({ title }) {
  return (
    <Link to="/onevideo" className="video-card">
      <h3>{title}</h3>
    </Link>
  );
}
VideoCard.propTypes = {
  title: PropTypes.string.isRequired,
};

export default VideoCard;
