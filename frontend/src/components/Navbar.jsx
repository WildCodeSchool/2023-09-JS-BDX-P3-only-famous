import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import {
  MDBNavbar,
  MDBContainer,
  MDBIcon,
  MDBNavbarNav,
  MDBNavbarToggler,
  MDBNavbarBrand,
  MDBCollapse,
} from "mdb-react-ui-kit";
import logo from "../assets/Logo.png";
import { useUserContext } from "../context/UserContext";

export default function Navbar() {
  const { user } = useUserContext();
  const [openNavColor, setOpenNavColor] = useState(false);
  useEffect(() => {
    window.addEventListener("resize", () => {
      setOpenNavColor(false);
    });
  }, []);

  return (
    <>
      <MDBNavbar expand="lg" dark className="navbar-bg-color">
        <MDBContainer fluid>
          <MDBNavbarBrand href="#">
            <span className="navbar-big-logo">
              <img
                className="navbar-logo-img"
                src={logo}
                alt="logo"
                width="34"
                height="34"
              />
              <h4 className="navbar-logo-title">WORLD DISCOVERY</h4>
            </span>
          </MDBNavbarBrand>
          <MDBNavbarToggler
            type="button"
            data-target="#navbarColor02"
            aria-controls="navbarColor02"
            aria-expanded="false"
            aria-label="Toggle navigation"
            onClick={() => setOpenNavColor(!openNavColor)}
          >
            <MDBIcon icon="bars" fas className="navbar-burger-icon" />
          </MDBNavbarToggler>
          <MDBCollapse open={openNavColor} navbar>
            <MDBNavbarNav className="me-auto mb-2 mb-lg-0">
              <Link to="/">
                <span className="active navbar-link">Accueil</span>
              </Link>

              <Link to="/connexion">
                <span className="navbar-link">Connexion</span>
              </Link>
              {user.isAdmin && (
                <Link to="/admin">
                  <span className="navbar-link">Espace admin</span>
                </Link>
              )}
            </MDBNavbarNav>
          </MDBCollapse>
        </MDBContainer>
      </MDBNavbar>

      <br />
    </>
  );
}
