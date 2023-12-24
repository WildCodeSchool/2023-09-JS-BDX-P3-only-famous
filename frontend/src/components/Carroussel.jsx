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

  const preventDefault = (ev) => {
    if (ev.preventDefault) {
      ev.preventDefault();
    }
  };

  const enableBodyScroll = () => {
    document.removeEventListener("wheel", preventDefault, false);
  };
  const disableBodyScroll = () => {
    document.addEventListener("wheel", preventDefault, {
      passive: false,
    });
  };

  function handleScroll(e) {
    const { deltaY } = e;
    if (deltaY < 0) {
      videoListRef.current.scrollLeft += 200;
    }
    if (deltaY > 0) {
      videoListRef.current.scrollLeft -= 200;
    }
  }
  function handleHover() {
    disableBodyScroll();
  }
  function handleUnHover() {
    enableBodyScroll();
  }

  return (
    <div className="video-carroussel">
      <h2>{titre ?? "titre générique"}</h2>
      <div
        className="btn-car"
        onWheel={handleScroll}
        onMouseEnter={handleHover}
        onMouseLeave={handleUnHover}
      >
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
