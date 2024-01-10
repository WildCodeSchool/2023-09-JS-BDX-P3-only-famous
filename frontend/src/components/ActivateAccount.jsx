import PropTypes from "prop-types";

export default function ActivateAccount({ code, setCode }) {
  return (
    <div>
      <span>Entrer votre code d'activation : </span>
      <input
        type="number"
        value={code}
        onChange={(e) => setCode(e.target.value)}
      />
    </div>
  );
}

ActivateAccount.propTypes = {
  code: PropTypes.string.isRequired,
  setCode: PropTypes.func.isRequired,
};
