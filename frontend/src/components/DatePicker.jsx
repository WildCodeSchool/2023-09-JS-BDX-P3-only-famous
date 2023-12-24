import React, { useRef } from "react";
import PropTypes from "prop-types";

export default function DatePicker({ date, setDate }) {
  const dateInputRef = useRef(null);

  const handleChange = (e) => {
    setDate(e.target.value);
  };

  return (
    <div className="input-with-placeholder">
      <input type="date" onChange={handleChange} ref={dateInputRef} />
      <p>Date de naissance: {date}</p>
    </div>
  );
}

DatePicker.propTypes = {
  date: PropTypes.string.isRequired,
  setDate: PropTypes.func.isRequired,
};
