import { useState } from "react";
import PropTypes from "prop-types";

import Tag from "./Tag";

export default function Accordion({ description, tags }) {
  const [isChecked, setIschecked] = useState(true);
  return (
    <div className="accordion tab">
      <input
        type="checkbox"
        name="accordion-1"
        id="cb1"
        checked={isChecked}
        onChange={() => {
          setIschecked(!isChecked);
        }}
      />
      <label htmlFor="cb1" className="tab__label">
        {isChecked ? (
          <span style={{ color: `var(--secondary-me)` }}>Moins</span>
        ) : (
          <span style={{ color: `var(--secondary-me)` }}>En savoir plus</span>
        )}
      </label>
      <div className="tab__content">
        <p>{description}</p>
        <div className="tags">
          {tags && tags.split(",").map((tag) => <Tag tag={tag} />)}
        </div>
      </div>
    </div>
  );
}

Accordion.propTypes = {
  description: PropTypes.string.isRequired,
  tags: PropTypes.string.isRequired,
};
