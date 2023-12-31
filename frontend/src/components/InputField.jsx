import PropTypes from "prop-types";

export default function InputField({ type, title, id, value, setValue }) {
  return (
    <div className="input-with-placeholder">
      <input
        type={type}
        id={id}
        required
        value={value}
        onChange={(e) => setValue(e.target.value)}
      />
      <label htmlFor={id}>
        <h4>{title}</h4>
      </label>
    </div>
  );
}

InputField.propTypes = {
  type: PropTypes.string.isRequired,
  title: PropTypes.string.isRequired,
  value: PropTypes.string.isRequired,
  setValue: PropTypes.func.isRequired,
  id: PropTypes.string.isRequired,
};
