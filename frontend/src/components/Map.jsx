import React, { useState } from "react";
import { MDBVectorMap } from "mdb-react-vector-maps";

export default function Map() {
  const [region, setRegion] = useState("world");
  return (
    <div className="map">
      <select
        name=""
        id=""
        onChange={(e) => {
          setRegion(e.value);
        }}
      >
        <option value="world">Monde</option>
        <option value="africa">Afrique</option>
        <option value="africa">Afrique</option>
        <option value="america">Amerique</option>
      </select>
      <MDBVectorMap
        map={region}
        style={{ backgroundColor: "#b3e5fc" }}
        readonly
        selectFill="#81C784"
        markerFill="#F93154"
        markerStroke="#F93154"
        fill="#C8E6C9"
        hoverFill="#A5D6A7"
      />
    </div>
  );
}
