import React from "react";
import { MDBVectorMap } from "mdb-react-vector-maps";

export default function CustomMap() {
  return (
    <div style={{ backgroundColor: "#37474f" }} className="text-white map">
      <MDBVectorMap
        btnClass="btn-light"
        stroke="#37474F"
        fill="#263238"
        readonly
      />
    </div>
  );
}
