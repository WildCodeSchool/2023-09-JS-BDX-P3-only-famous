import PropTypes from "prop-types";

export default function UserSecretSet({
  secretQuestion,
  setSecretQuestion,
  secretAnswer,
  setSecretAnswer,
  saveSecret,
}) {
  return (
    <div>
      <h5>Question secrète</h5>
      <label htmlFor="secretQuestion">Saisir votre question Secrète</label>
      <input
        type="text"
        id="secretQuestion"
        value={secretQuestion}
        onChange={(e) => setSecretQuestion(e.target.value)}
      />
      <h5>Réponse secrète</h5>
      <label htmlFor="secretAnswer">Saisir votre réponse Secrète</label>
      <input
        type="text"
        id="secretAnswer"
        value={secretAnswer}
        onChange={(e) => setSecretAnswer(e.target.value)}
      />
      <button
        className="btn"
        style={{ color: `var(--secondary-me)`, display: "block" }}
        type="button"
        onClick={saveSecret}
      >
        Sauvegarder
      </button>
    </div>
  );
}

UserSecretSet.propTypes = {
  saveSecret: PropTypes.func.isRequired,
  secretAnswer: PropTypes.string.isRequired,
  secretQuestion: PropTypes.string.isRequired,
  setSecretAnswer: PropTypes.func.isRequired,
  setSecretQuestion: PropTypes.func.isRequired, // PropTypes.instanceOf(Promise).isRequired,
};
