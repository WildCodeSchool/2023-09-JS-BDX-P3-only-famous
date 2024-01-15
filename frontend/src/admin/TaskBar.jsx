import { Autocomplete, Checkbox, Container } from "@mantine/core";
// import PropTypes, { string } from "prop-types";
import { useState } from "react";
import { FaSearch } from "react-icons/fa";

export default function TaskBar() {
  const [admin, setAdmin] = useState(false);
  const [active, setActive] = useState(false);
  const icon = (
    <FaSearch style={{ width: "25px", height: "25px" }} stroke={1.5} />
  );
  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      {/* <Autocomplete placeholder="email" data={listEmail} rightSection={icon} /> */}
      <Autocomplete placeholder="email" rightSection={icon} />

      <Checkbox
        ml={10}
        checked={admin}
        onChange={() => setAdmin(!admin)}
        label="Admin?"
        color="yellow.3"
        iconColor="dark.8"
        className="checkbox-navbar"
      />
      <Checkbox
        ml={30}
        checked={active}
        onChange={() => setActive(!active)}
        label="Active?"
        color="yellow.3"
        iconColor="dark.8"
        className="checkbox-navbar"
      />
    </Container>
  );
}
// TaskBar.propTypes = {
//   listEmail: PropTypes.arrayOf(string).isRequired,
// };
