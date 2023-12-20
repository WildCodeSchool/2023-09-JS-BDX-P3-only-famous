import { createContext, useContext, useMemo, useState } from "react";
import { Navigate } from "react-router-dom";
import PropTypes from "prop-types";
import { useUserContext } from "./UserContext";

const adminContext = createContext();
export default function AdminContextProvider({ children }) {
  const [isAdmin, setisAdmin] = useState(true);
  const { user } = useUserContext();
  const adminData = useMemo(
    () => ({ isAdmin, setisAdmin }),
    [isAdmin, setisAdmin]
  );
  if (!user.isAdmin) {
    return <Navigate to="/" />;
  }
  return (
    <adminContext.Provider value={adminData}>{children}</adminContext.Provider>
  );
}
AdminContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};
export const useAdmin = () => useContext(adminContext);
