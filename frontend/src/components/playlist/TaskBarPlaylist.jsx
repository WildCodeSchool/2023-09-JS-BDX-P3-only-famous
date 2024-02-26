import { Container, Input } from "@mantine/core";
import { FaSearch } from "react-icons/fa";
import { useVideoContext } from "../../context/videoContext";

export default function TaskBarPlaylist() {
  const { category, setCategory, getAllPlaylistsByCategory } =
    useVideoContext();

  const icon = (
    <FaSearch style={{ width: "25px", height: "25px" }} stroke={1.5} />
  );
  async function handleSearch(e) {
    setCategory(e.target.value);
    await getAllPlaylistsByCategory(e.target.value);
  }

  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      <h2 style={{ marginRight: `20px` }}>Playlistes</h2>
      <Input
        placeholder="categorie"
        type="text"
        rightSection={icon}
        value={category}
        onChange={(e) => handleSearch(e)}
      />
    </Container>
  );
}
