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
  isPublic,
  playlistId,
}) {
  const { setLinkToVideo } = useUserContext();
  const navigate = useNavigate();

  const { user } = useUserContext();

  return (
    <button
      type="button"
      className="carousel-item"
      onClick={() => {
        if (user.isActive || isPublic) {
          setLinkToVideo({
            title,
            duration,
            imgUrl,
            publishDate,
            link,
            description,
            tags,
            playlistId,
          });
          navigate("/onevideo");
        } else {
          setLinkToVideo({});
        }
      }}
    >
      <div
        className={`carousel-item-image ${
          !user.isActive && !isPublic && "not-public"
        }`}
        style={{
          backgroundImage: `url(${imgUrl})`,
          backgroundRepeat: "no-repeat",
          backgroundSize: `100% 100%`,
          width: `300px`,
          height: `225px`,
          borderRadius: "10px",
        }}
      >
        <p className="carousel-item-duration">{duration}</p>
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
  isPublic: PropTypes.number.isRequired,
  playlistId: PropTypes.string.isRequired,
};
