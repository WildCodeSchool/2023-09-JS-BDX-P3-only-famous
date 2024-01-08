import { useRef } from "react";
import { Link, useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

export default function SlidingNavbar() {
  const navigate = useNavigate();
  const closeButton = useRef();
  const myNav = useRef();
  const refLinks = useRef();
  const { mobileMode } = useUserContext();

  function openNav() {
    myNav.current.style.width = "100%";
  }

  function closeNav() {
    myNav.current.style.width = "0%";
  }

  return (
    <div className="navbar-full">
      <div className="navbar-flat">
        <button
          type="button"
          onClick={() => {
            // console.log("mobile? ", mobileMode);
            if (mobileMode) {
              openNav();
              // refLinks.current.style.transform = `translate(600px, 0)`;
              refLinks.current.classList.toggle("slide-left");
            }
          }}
        >
          <img src="./src/assets/logo.png" alt="logo" className="logo" />
        </button>

        <div className="navbar-links" ref={refLinks}>
          <button type="button" className="btn">
            <span>Accueil</span>
          </button>
          <button type="button" className="btn">
            <span>Utilisateur</span>
          </button>
          <button type="button" className="btn">
            <span>Admin</span>
          </button>
          <button type="button" className="btn">
            <span>À propos</span>
          </button>
        </div>
      </div>
      {mobileMode && (
        <div className="navbar-burger">
          <div id="myNav" className="overlay" ref={myNav}>
            <button
              type="button"
              className="closebtn"
              onClick={() => {
                closeNav();
                refLinks.current.classList.toggle("slide-left");
              }}
              ref={closeButton}
            >
              &times;
            </button>
            <div className="overlay-content">
              <button
                type="button"
                className="btn"
                onClick={() => {
                  navigate("/");
                  closeNav();
                  refLinks.current.classList.toggle("slide-left");
                }}
              >
                <span>Accueil</span>
              </button>
              <Link to="/">
                <span>Utilisateur</span>
              </Link>
              <Link to="/">
                <span>Admin</span>
              </Link>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
