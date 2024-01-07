import "./styles/_index.scss";
import { Outlet } from "react-router-dom";
import "./App.css";
import Footer from "./components/Footer";
// import RastaMenu from "./components/RastaMenu";
import SlidingNavbar from "./components/SlidingNavbar";

function App() {
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
