import { Container, Input } from "@mantine/core";

// import PropTypes, { string } from "prop-types";
import { useEffect, useState } from "react";
import { FaSearch } from "react-icons/fa";
import { useVideoContext } from "../../context/videoContext";

export default function TaskBarPlaylist() {
  const [category, setCategory] = useState("");
  const { getAllPlaylists, getAllPlaylistsByCategory } = useVideoContext();

  const icon = (
    <FaSearch style={{ width: "25px", height: "25px" }} stroke={1.5} />
  );
  async function handleSearch(e) {
    setCategory(e.target.value);
    getAllPlaylistsByCategory(e.target.value);
  }
  useEffect(() => {
    getAllPlaylists();
  }, []);

  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      <h2 style={{ marginRight: `20px` }}>Utilisateurs</h2>
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
// TaskBar.propTypes = {
//   listEmail: PropTypes.arrayOf(string).isRequired,
// };
