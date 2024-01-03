import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

export default function PageUser() {
  const navigate = useNavigate();
  const { user } = useUserContext();
  useEffect(() => {
    if (!user.isConnected) {
      navigate("/");
    }
  }, []);
  return <h2>page user</h2>;
}
