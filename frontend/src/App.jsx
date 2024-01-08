import { useEffect } from "react";
import { useMediaQuery } from "react-responsive";
import "./styles/_index.scss";
import { Outlet } from "react-router-dom";
import "./App.css";
import Footer from "./components/Footer";
// import RastaMenu from "./components/RastaMenu";
import SlidingNavbar from "./components/SlidingNavbar";
import { useUserContext } from "./context/UserContext";

function App() {
  const { setMobileMode } = useUserContext();
  const match = useMediaQuery({ query: "(min-width : 600px)" });
  // window.addEventListener("resize", () => {
  //   if (window.innerWidth > 600) {
  //     setMobileMode(false);
  //   } else if (window.innerWidth <= 600) {
  //     setMobileMode(true);
  //     console.log("mobile", window.innerWidth);
  //   }
  // });

  useEffect(() => {
    if (window.innerWidth > 600) {
      setMobileMode(false);
    } else {
      setMobileMode(true);
    }
    // console.log("mobile mode ", match);
  }, [match]);
  return (
    <>
      {/* <Navbar /> */}
      {/* <RastaMenu /> */}
      <SlidingNavbar />
      <div className="App container-md">
        <Outlet />
      </div>
      <Footer />
    </>
  );
}
export default App;
