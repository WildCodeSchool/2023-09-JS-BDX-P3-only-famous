import React, { useRef } from "react";
import PropTypes from "prop-types";
import VideoCard from "./VideoCard";

function Carroussel({ videoItems, titre }) {
  // const theCategory = [...new Set(videoItems.map((item) => item.category))];
  const videoListRef = useRef(null);

  const scrollLeft = () => {
    if (videoListRef.current) {
      videoListRef.current.scrollLeft -= 200; // You can adjust the scroll amount as needed
    }
  };

  const scrollRight = () => {
    if (videoListRef.current) {
      videoListRef.current.scrollLeft += 200; // You can adjust the scroll amount as needed
    }
  };

  // function handleScroll(e) {
  //   e.stopPropagation();
  //   const deltaY = e.deltaY;
  //   if (deltaY < 0) {
  //     videoListRef.current.scrollLeft += 200;
  //   }
  //   if (deltaY > 0) {
  //     videoListRef.current.scrollLeft -= 200;
  //   }
  // }

  return (
    <div className="video-carroussel">
      <h2>{titre ?? "titre générique"}</h2>
      <div className="btn-car">
        <button type="button" className="button-left" onClick={scrollLeft}>
          {"<"}
        </button>
        <div className="video-list" ref={videoListRef}>
          {videoItems.map((item) => (
            <VideoCard
              address={item.address}
              title={item.title}
              key={item.title}
            />
          ))}
          <button type="button" className="button-right" onClick={scrollRight}>
            {">"}
          </button>
        </div>
      </div>
    </div>
  );
}

Carroussel.propTypes = {
  titre: PropTypes.string.isRequired,
  videoItems: PropTypes.arrayOf(
    PropTypes.shape({
      title: PropTypes.string.isRequired,
      address: PropTypes.string.isRequired,
      category: PropTypes.string.isRequired,
    })
  ).isRequired,
};

export default Carroussel;
