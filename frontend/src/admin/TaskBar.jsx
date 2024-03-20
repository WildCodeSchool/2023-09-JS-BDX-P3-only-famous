import { Container, Input } from "@mantine/core";

// import PropTypes, { string } from "prop-types";
import { useState } from "react";
import { FaSearch } from "react-icons/fa";
import { useAdmin } from "../context/AdminContext";

export default function TaskBar() {
  const [email, setEmail] = useState([]);
  const { runSearch } = useAdmin();

  const icon = (
    <FaSearch style={{ width: "25px", height: "25px" }} stroke={1.5} />
  );

  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      <h2 style={{ marginRight: `20px` }}>Utilisateurs</h2>
      <Input
        placeholder="email"
        type="text"
        rightSection={icon}
        value={email}
        onChange={(e) => {
          runSearch(e.target.value);
          setEmail(e.currentTarget.value);
        }}
      />
    </Container>
  );
}
