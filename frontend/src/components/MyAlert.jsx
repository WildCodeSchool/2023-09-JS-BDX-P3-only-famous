import PropTypes from "prop-types";
import { Alert } from "@mantine/core";

export default function MyAlert({ message, color }) {
  return (
    <Alert
      variant="light"
      color="red"
      radius="md"
      title="Erreur de validation"
      style={{ margin: "15px 0" }}
    >
      <span style={{ color: `${color}` }}>{message}</span>
    </Alert>
  );
}
MyAlert.propTypes = {
  message: PropTypes.string.isRequired,
  color: PropTypes.string.isRequired,
};
