import { useEffect } from "react";
import { useMediaQuery } from "react-responsive";
import { Outlet, useLocation } from "react-router-dom";
import SlidingNavbar from "./components/SlidingNavbar";
import { useUserContext } from "./context/UserContext";
import Footer from "./components/Footer";

function App() {
  const location = useLocation();
  const { setMobileMode } = useUserContext();
  const match = useMediaQuery({ query: "(max-width : 600px)" });

  useEffect(() => {
    setMobileMode(match);
  }, [match]);
  useEffect(() => {
    window.scrollTo(0, 0);
  }, [location]);

  return (
    <>
      <SlidingNavbar />
      <div className="App">
        <div>
          <Outlet />
        </div>
        <Footer />
      </div>
    </>
  );
}
export default App;
