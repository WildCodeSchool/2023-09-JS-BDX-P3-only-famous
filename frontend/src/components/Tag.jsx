import { MDBBtn } from "mdb-react-ui-kit";
import PropTypes from "prop-types";

export default function Tag({ tag }) {
  return <MDBBtn color="warning">{tag ?? "my tag"}</MDBBtn>;
}
Tag.propTypes = {
  tag: PropTypes.string.isRequired,
};
