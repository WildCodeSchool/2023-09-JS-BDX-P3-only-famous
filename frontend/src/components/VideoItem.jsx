import React from "react";
import PropTypes from "prop-types";
import { useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

export default function VideoItem({
  title,
  duration,
  imgUrl,
  publishDate,
  link,
  description,
  tags,
}) {
  const { setLinkToVideo } = useUserContext();
  const navigate = useNavigate();
  function formatDuration(durations) {
    const ADuration = durations.split(":");
    let hours = "00";
    if (ADuration[2]) {
      hours = +ADuration[2] < 10 ? `0${ADuration[2]}` : `${ADuration[2]}`;
    }
    let minutes = "00";
    if (ADuration[1]) {
      minutes = +ADuration[1] < 10 ? `0${ADuration[1]}` : `${ADuration[1]}`;
    }
    let seconds = "00";
    if (ADuration[0]) {
      seconds = +ADuration[0] < 10 ? `0${ADuration[0]}` : `${ADuration[0]}`;
    }
    return `${hours}:${seconds}:${minutes}`;
  }
  return (
    <button
      type="button"
      className="carousel-item"
      onClick={() => {
        setLinkToVideo({
          title,
          duration,
          imgUrl,
          publishDate,
          link,
          description,
          tags,
        });
        navigate("/onevideo");
      }}
    >
      <div
        className="carousel-item-image"
        style={{
          backgroundImage: `url(${imgUrl})`,
          backgroundRepeat: "no-repeat",
          backgroundSize: `100% 100%`,
          width: `300px`,
          height: `225px`,
          borderRadius: "10px",
        }}
      >
        <p className="carousel-item-duration">{formatDuration(duration)}</p>
      </div>
      <div className="carousel-item-details">
        <h3 className="carousel-item-title">{title}</h3>
        <h3 className="carousel-item-title">
          Publié le {publishDate.split("T")[0]}
        </h3>
      </div>
    </button>
  );
}
VideoItem.propTypes = {
  title: PropTypes.string.isRequired,
  duration: PropTypes.string.isRequired,
  link: PropTypes.string.isRequired,
  imgUrl: PropTypes.string.isRequired,
  publishDate: PropTypes.string.isRequired,
  description: PropTypes.string.isRequired,
  tags: PropTypes.string.isRequired,
};
