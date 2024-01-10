import { useEffect, useRef } from "react";
import { Link, useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

export default function SlidingNavbar() {
  const navigate = useNavigate();
  const closeButton = useRef();
  const myNav = useRef();
  const refLinks = useRef();
  const { mobileMode, user } = useUserContext();

  function openNav() {
    myNav.current.style.width = "100%";
  }

  function closeNav() {
    myNav.current.style.width = "0%";
  }
  // const preventDefault = (ev) => {
  //   if (ev.preventDefault) {
  //     ev.preventDefault();
  //   }
  // };
  // const enableBodyScroll = () => {
  //   document.removeEventListener("wheel", preventDefault, false);
  // };
  // const disableBodyScroll = () => {
  //   document.addEventListener("wheel", preventDefault, {
  //     passive: false,
  //   });
  // };

  useEffect(() => {}, []);

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
              // refLinks.current.classList.toggle("slide-left");
            } else {
              navigate("/");
            }
          }}
        >
          <img src="./src/assets/logo.png" alt="logo" className="logo" />
        </button>

        {!mobileMode && (
          <div className="navbar-links" ref={refLinks}>
            <Link to="/">
              <span>Accueil</span>
            </Link>
            <Link to={user.isConnected ? "/user" : "/connexion"}>
              <span>{user.isConnected ? "Utilisateur" : "Connexion"}</span>
            </Link>
            {user.isAdmin ? (
              <Link to="/admin">
                <span>Admin</span>
              </Link>
            ) : (
              ""
            )}
          </div>
        )}
        <h4 className="title-site">La Banque de Tutos</h4>
      </div>
      {mobileMode && (
        <div className="navbar-burger">
          <div
            id="myNav"
            className="overlay"
            ref={myNav}
            // onMouseEnter={disableBodyScroll}
            // onMouseLeave={enableBodyScroll}
          >
            <button
              type="button"
              className="closebtn"
              onClick={() => {
                closeNav();
                // refLinks.current.classList.toggle("slide-left");
              }}
              ref={closeButton}
            >
              &times;
            </button>
            <div className="overlay-content">
              <button
                type="button"
                onClick={() => {
                  navigate("/");
                  closeNav();
                  // refLinks.current.classList.toggle("slide-left");
                }}
              >
                <span>Accueil</span>
              </button>
              <button
                type="button"
                onClick={() => {
                  navigate(user.isConnected ? "/user" : "/connexion");
                  closeNav();
                  // refLinks.current.classList.toggle("slide-left");
                }}
              >
                <span>{user.isConnected ? "Utilisateur" : "Connexion"}</span>
              </button>
              {user.isAdmin ? (
                <button
                  type="button"
                  onClick={() => {
                    navigate("/admin");
                    closeNav();
                    // refLinks.current.classList.toggle("slide-left");
                  }}
                >
                  <span>Admin</span>
                </button>
              ) : (
                ""
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
