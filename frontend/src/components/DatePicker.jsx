import React, { useRef } from "react";
import PropTypes from "prop-types";

export default function DatePicker({ date, setDate }) {
  const dateInputRef = useRef(null);

  const handleChange = (e) => {
    setDate(e.target.value);
  };

  return (
    <div className="input-with-placeholder">
      <p
        style={{
          marginTop: `15px `,
        }}
      >
        Date de naissance: {date}
      </p>
      <input
        type="date"
        onChange={handleChange}
        ref={dateInputRef}
        style={{
          width: `100%`,
          padding: "0 10px",
          color: "#ADB5BD",
          height: `40px`,
          borderRadius: `6px`,
        }}
      />
    </div>
  );
}

DatePicker.propTypes = {
  date: PropTypes.string.isRequired,
  setDate: PropTypes.func.isRequired,
};
