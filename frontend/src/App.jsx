import { useEffect } from "react";
import { useMediaQuery } from "react-responsive";
import "./styles/_index.scss";
import { Outlet } from "react-router-dom";
import "./App.css";
import { Container } from "@mantine/core";
// import RastaMenu from "./components/RastaMenu";
import SlidingNavbar from "./components/SlidingNavbar";
import { useUserContext } from "./context/UserContext";
import Footer from "./components/Footer";

function App() {
  const { setMobileMode } = useUserContext();
  const match = useMediaQuery({ query: "(max-width : 600px)" });

  useEffect(() => {
    setMobileMode(match);
  }, [match]);

  return (
    <>
      <SlidingNavbar />
      <div className="App">
        <Container size="fluid">
          <Outlet />
        </Container>
        <Footer />
      </div>
    </>
  );
}
export default App;
