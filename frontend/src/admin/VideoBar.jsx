import { Container, Input } from "@mantine/core";
import { FaSearch } from "react-icons/fa";
import { useVideoContext } from "../context/videoContext";

export default function VideoBar() {
  const { videoId, setVideoId } = useVideoContext();

  const icon = (
    <FaSearch style={{ width: "25px", height: "25px" }} stroke={1.5} />
  );
  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      <h2 style={{ marginRight: `20px` }}>Vidéos</h2>

      <Input
        placeholder="Video"
        type="text"
        rightSection={icon}
        value={videoId}
        onChange={(e) => {
          setVideoId(e.currentTarget.value);
        }}
      />
    </Container>
  );
}
