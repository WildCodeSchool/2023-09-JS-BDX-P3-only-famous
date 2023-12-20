import "./styles/_index.scss";
import { Outlet } from "react-router-dom";
import { useEffect } from "react";
import { useUserContext } from "./context/UserContext";
import "./App.css";
import Footer from "./components/Footer";
import Navbar from "./components/Navbar";

function App() {
  const { login } = useUserContext();
  useEffect(() => {
    const userLS = JSON.parse(localStorage.getItem("users"));
    if (userLS) {
      login(userLS);
    }
  }, []);
  return (
    <>
      <Navbar />
      <div className="App">
        <Outlet />
      </div>
      <Footer />
    </>
  );
}
export default App;
