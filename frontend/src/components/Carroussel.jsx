import React, { useEffect, useRef, useState } from "react";
import axios from "axios";
import PropTypes from "prop-types";
import VideoItem from "./VideoItem";

function Carroussel({ playlistId }) {
  const videoListRef = useRef(null);
  const scrollLeft = () => {
    if (videoListRef.current) {
      videoListRef.current.scrollLeft -= 200;
    }
  };

  const scrollRight = () => {
    if (videoListRef.current) {
      videoListRef.current.scrollLeft += 200;
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
  const [videos, setVideos] = useState([]);
  const [playlistTitle, setPlaylistTitle] = useState([]);
  const [showGrid, setShowGrid] = useState(true);
  useEffect(() => {
    async function getData() {
      const { data } = await axios.get("http://localhost:3310/api/playlist", {
        // params: { playlistId: "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" },
        params: { playlistId },
      });
      setVideos(data.rows);
      setPlaylistTitle(data.title);
    }
    getData();
    if (window.innerWidth > 600) {
      setShowGrid(true);
    } else {
      setShowGrid(false);
    }
    window.addEventListener("resize", () => {
      if (window.innerWidth > 600) {
        setShowGrid(true);
      } else {
        setShowGrid(false);
      }
    });
  }, []);

  return (
    <div className="video-carroussel">
      <div className="carousel-top">
        <h2>{playlistTitle ?? "titre générique"}</h2>
        <button
          type="button"
          className="btn browse"
          onClick={() => setShowGrid(!showGrid)}
        >
          {!showGrid ? "Tout regarder" : "Masquer"}
        </button>
      </div>

      <hr
        style={{
          borderTop: "8px solid #bbb",
          borderRadius: "5px",
          margin: `10px 0`,
        }}
      />
      <div
        className="btn-car"
        onWheel={handleScroll}
        onMouseEnter={handleHover}
        onMouseLeave={handleUnHover}
      >
        {/* eslint-disable-next-line */}
        <button type="button" className="button-left" onClick={scrollLeft}>
          <img src="./src/assets/left.svg" alt="" height="50" width="50" />
        </button>
        <div className="video-list" ref={videoListRef}>
          {!showGrid &&
            videos.map((item) => (
              <VideoItem
                title={item.title}
                duration={item.duration}
                description="small description for testing"
                imgUrl={item.thumbnails}
                publishDate={item.publishDate}
                link={item.ytId}
                tags={item.tags}
                key={item.title}
              />
            ))}
          {/* eslint-disable-next-line */}
          <button type="button" className="button-right" onClick={scrollRight}>
            <img src="./src/assets/right.svg" alt="" height="50" width="50" />
          </button>
        </div>
      </div>
      <div className="flex-items">
        {showGrid &&
          videos.map((item) => (
            <VideoItem
              title={item.title}
              duration={item.duration}
              imgUrl={item.thumbnails}
              publishDate="21-04"
              link={item.ytId}
              description={item.description}
              tags={item.tags}
              key={item.title}
            />
          ))}
      </div>
    </div>
  );
}

Carroussel.propTypes = {
  playlistId: PropTypes.string.isRequired,
};

export default Carroussel;
