import { MDBBtn } from "mdb-react-ui-kit";

export default function Tag({ tag }) {
  return <MDBBtn color="warning">{tag ?? "my tag"}</MDBBtn>;
}
