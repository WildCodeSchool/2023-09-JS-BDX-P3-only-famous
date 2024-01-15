import { createContext, useContext, useMemo, useState } from "react";
import PropTypes from "prop-types";
import { useNavigate } from "react-router-dom";
import { useUserContext } from "./UserContext";

const adminContext = createContext();
export default function AdminContextProvider({ children }) {
  const navigate = useNavigate();
  const { user } = useUserContext();
  const [isAdmin, setisAdmin] = useState(true);
  const adminData = useMemo(
    () => ({ isAdmin, setisAdmin }),
    [isAdmin, setisAdmin]
  );
  if (!user.isAdmin) {
    navigate("/");
  }

  return (
    <adminContext.Provider value={adminData}>{children}</adminContext.Provider>
  );
}
AdminContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};
export const useAdmin = () => useContext(adminContext);
