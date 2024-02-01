import { Container, Input } from "@mantine/core";
import { useState } from "react";
import { FaSearch } from "react-icons/fa";
import { useVideoContext } from "../context/videoContext";

export default function VideoBar() {
  const [video, setVideo] = useState();
  const { runSearchVideo } = useVideoContext();

  const icon = (
    <FaSearch style={{ width: "25px", height: "25px" }} stroke={1.5} />
  );
  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      <h2 style={{ marginRight: `20px` }}>Vidéos</h2>

      <Input
        placeholder="email"
        type="text"
        rightSection={icon}
        value={video}
        onChange={(e) => {
          runSearchVideo(e.target.value);
          setVideo(e.currentTarget.value);
        }}
      />
    </Container>
  );
}
// TaskBar.propTypes = {
//   listEmail: PropTypes.arrayOf(string).isRequired,
// };
