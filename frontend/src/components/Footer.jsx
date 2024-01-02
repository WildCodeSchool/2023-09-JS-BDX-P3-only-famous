import { MDBIcon, MDBBtn } from "mdb-react-ui-kit";

export default function Footer() {
  return (
    <footer className="text-center text-white footer-footer">
      <section className="footer-icons">
        <MDBBtn floating className="m-1" href="#!" role="button">
          <MDBIcon fab icon="facebook-f" />
        </MDBBtn>

        <MDBBtn
          floating
          className="m-1"
          style={{ backgroundColor: "#55acee" }}
          href="#!"
          role="button"
        >
          <MDBIcon fab icon="twitter" />
        </MDBBtn>

        <MDBBtn
          floating
          className="m-1"
          style={{ backgroundColor: "#0082ca" }}
          href="#!"
          role="button"
        >
          <MDBIcon fab icon="linkedin-in" />
        </MDBBtn>

        <MDBBtn
          floating
          className="m-1"
          style={{ backgroundColor: "#333333" }}
          href="#!"
          role="button"
        >
          <MDBIcon fab icon="github" />
        </MDBBtn>
      </section>
      <div className="text-center p-3">© 2023 World Discovery</div>
    </footer>
  );
}
