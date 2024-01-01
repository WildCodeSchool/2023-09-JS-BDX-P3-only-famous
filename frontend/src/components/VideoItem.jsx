import React, { useEffect } from "react";
import PropTypes from "prop-types";
import { useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

export default function VideoItem({
  title = "my title",
  duration = "10:00",
  imgUrl = "https://i.ytimg.com/vi/ilqxZiXnwD8/default.jpg",
  publishDate = "21-04-1986",
  link = "oSk5Edwzw4s",
}) {
  const { setLinkToVideo } = useUserContext();
  const navigate = useNavigate();
  useEffect(() => {
    setLinkToVideo(link);
  }, []);
  return (
    <button
      type="button"
      className="carousel-item btn"
      onClick={() => {
        navigate("/onevideo");
      }}
    >
      <div
        className="carousel-item-image"
        style={{
          backgroundImage: `url(${imgUrl})`,
          backgroundRepeat: "no-repeat",
          backgroundSize: `100% 100%`,
          width: `120px`,
          height: `100px`,
          borderRadius: "10px",
          filter: "drop-shadow(2px 2px 8px var(--border))",
        }}
      >
        <p className="carousel-item-duration">{duration}</p>
      </div>
      <div className="carousel-item-details">
        <h3 className="carousel-item-title">{title}</h3>
        <p>Publié le {publishDate}</p>
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
};
