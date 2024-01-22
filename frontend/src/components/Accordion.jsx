import PropTypes from "prop-types";
import { Accordion } from "@mantine/core";
import { useState } from "react";

export default function AccordionComponent({ description }) {
  const [show, setShow] = useState(true);
  return (
    <Accordion defaultValue="Apples" onChange={() => setShow(!show)}>
      <Accordion.Item value="Description">
        <Accordion.Control
          style={{ border: "2px solid var(--secondary-me)" }}
          className="accordion-bar"
        >
          {!show ? "Plus" : "Moins"}
        </Accordion.Control>
        <Accordion.Panel>{description}</Accordion.Panel>
      </Accordion.Item>
    </Accordion>
  );
}
AccordionComponent.propTypes = {
  description: PropTypes.string.isRequired,
};
