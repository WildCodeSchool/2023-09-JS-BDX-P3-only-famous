import PropTypes from "prop-types";

export default function Banner({ imgUrl }) {
  return (
    <div className="banner" style={{ backgroundImage: `url(${imgUrl})` }} />
  );
}
Banner.propTypes = {
  imgUrl: PropTypes.string.isRequired,
};
