import { Checkbox, Container, Input } from "@mantine/core";
import { useState } from "react";
import { FaSearch } from "react-icons/fa";
import { useVideoContext } from "../context/videoContext";

export default function VideoBar() {
  const [isPublic, setIsPublic] = useState(false);
  const [isHidden, setIsHidden] = useState(false);
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
      <Checkbox
        ml={10}
        checked={isPublic}
        onChange={() => setIsPublic(!isPublic)}
        label="Publique?"
        color="yellow.3"
        iconColor="dark.8"
        className="checkbox-navbar"
      />
      <Checkbox
        ml={10}
        checked={isHidden}
        onChange={() => setIsHidden(!isHidden)}
        label="Cachée"
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
