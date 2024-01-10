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
  const match = useMediaQuery({ query: "(max-width : 600px)" });

  useEffect(() => {
    setMobileMode(match);
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
