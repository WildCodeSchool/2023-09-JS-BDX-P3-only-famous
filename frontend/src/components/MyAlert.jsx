import PropTypes from "prop-types";
import { Alert } from "@mantine/core";

export default function MyAlert({
  message,
  color,
  title = "Erreur de validation",
  variant = "light",
}) {
  return (
    <Alert
      variant={variant}
      color="red"
      radius="md"
      title={title}
      style={{ margin: "15px 0" }}
    >
      <span style={{ color: `${color}` }}>{message}</span>
    </Alert>
  );
}

MyAlert.propTypes = {
  message: PropTypes.string.isRequired,
  color: PropTypes.string.isRequired,
  title: PropTypes.string.isRequired,
  variant: PropTypes.string.isRequired,
};
