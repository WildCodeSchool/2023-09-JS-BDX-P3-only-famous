import { useState } from "react";
import Tag from "./Tag";

export default function Accordion() {
  const [isChecked, setIschecked] = useState(true);
  return (
    <div className="accordion tab">
      <div className="tab">
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
          {isChecked ? "Moins" : "En savoir plus"}
        </label>
        <div className="tab__content">
          <p>
            Pure CSS accordion based on the "input:checked + label" style trick.
            Pure CSS accordion based on the "input:checked + label" style trick.
            Pure CSS accordion based on the "input:checked + label" style trick.
          </p>
          <div className="tags">
            <Tag />
            <Tag />
            <Tag />
          </div>
        </div>
      </div>
    </div>
  );
}
