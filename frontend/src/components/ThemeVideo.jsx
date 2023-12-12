import React from "react";
import PropTypes from "prop-types";
import VideoCard from "./VideoCard";

function ThemeVideo({ videoItems }) {
  const theCategory = [...new Set(videoItems.map((item) => item.category))];

  return (
    <div>
      {theCategory.map((category) => (
        <div key={category}>
          <h2>{category}</h2>
          <div className="video-list">
            {videoItems
              .filter((item) => item.category === category)
              .map((item) => (
                <VideoCard address={item.address} title={item.title} />
              ))}
          </div>
        </div>
      ))}
    </div>
  );
}

ThemeVideo.propTypes = {
  videoItems: PropTypes.arrayOf(
    PropTypes.shape({
      title: PropTypes.string.isRequired,
      address: PropTypes.string.isRequired,
      category: PropTypes.string.isRequired,
    })
  ).isRequired,
};

export default ThemeVideo;
