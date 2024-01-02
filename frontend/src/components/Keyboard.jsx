import { useEffect, useState } from "react";

export default function Keyborad() {
  const [dimensionX, setDimensionX] = useState(390);
  const [dimensionY, setDimensionY] = useState(390 / 2.3);
  function handleResize() {
    if (window.innerWidth < 600) {
      setDimensionX(window.innerWidth);
      setDimensionY(window.innerWidth * 0.666);
    } else {
      setDimensionX(window.innerWidth * 0.6);
      setDimensionY(window.innerWidth * 0.666 * 0.6);
    }
  }

  useEffect(() => {
    window.addEventListener("resize", handleResize);
    handleResize();
  }, []);
  return (
    <div className="keyboard container-fluid">
      <svg width={dimensionX} height={dimensionY} viewBox="0 0 620 400">
        <rect
          x="3"
          y="3"
          rx="20"
          ry="20"
          width="594"
          height="394"
          style={{
            opacity: "0",
          }}
        />
        <rect
          x="20"
          y="20"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "white",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />

        <rect
          x="140"
          y="20"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "black",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="260"
          y="20"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="380"
          y="20"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "#4D588E",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />

        <rect
          x="500"
          y="20"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <text
          x="530"
          y="70"
          fill="black"
          style={{ fontSize: "32px", fontWeight: "700" }}
          className="language"
        >
          JS
        </text>
        <rect
          x="20"
          y="110"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "#4E2ACD",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="140"
          y="110"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="260"
          y="110"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="380"
          y="110"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "#363737",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="500"
          y="110"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />

        <rect
          x="20"
          y="200"
          rx="10"
          ry="10"
          width="140"
          height="80"
          style={{
            fill: "#BD002E",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="180"
          y="200"
          rx="10"
          ry="10"
          width="140"
          height="80"
          style={{
            fill: "#5ED3F3",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="340"
          y="200"
          rx="10"
          ry="10"
          width="140"
          height="80"
          style={{
            fill: "#41B883",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="500"
          y="200"
          rx="10"
          ry="10"
          width="100"
          height="120"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />

        <rect
          x="20"
          y="300"
          rx="10"
          ry="10"
          width="100"
          height="80"
          style={{
            fill: "yellow",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="140"
          y="300"
          rx="10"
          ry="10"
          width="340"
          height="80"
          style={{
            fill: "var(--primary-me-dark)",
            stroke: "var(--font-light-grey)",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <rect
          x="500"
          y="330"
          rx="10"
          ry="10"
          width="100"
          height="40"
          style={{
            fill: "black",
            stroke: "black",
            strokeWidth: "6",
            opacity: "1",
          }}
          className="language"
        />
        <text
          x="35"
          y="250"
          fill="white"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          Angular
        </text>
        <text
          x="210"
          y="250"
          fill="white"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          React
        </text>
        <text
          x="360"
          y="250"
          fill="#35495E"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          VueJSS
        </text>
        <text
          x="40"
          y="70"
          fill="black"
          style={{ fontSize: "50px", fontWeight: "900" }}
          className="language"
        >
          ←
        </text>
        <text
          x="50"
          y="160"
          fill="white"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          C#
        </text>
        <text
          x="400"
          y="160"
          fill="#3194D4"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          SQL
        </text>
        <text
          x="400"
          y="70"
          fill="black"
          stroke="white"
          strokeWidth="0.5"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          PHP
        </text>
        <text
          x="170"
          y="70"
          fill="white"
          stroke="white"
          strokeWidth="0.5"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          SF
        </text>
        <text
          x="250"
          y="350"
          fill="white"
          style={{ fontSize: "28px", fontWeight: "700" }}
          className="language"
        >
          Go Wild
        </text>
      </svg>
    </div>
  );
}
