import { Container } from "@mantine/core";
import PropTypes from "prop-types";

export default function VideoBarPlaylist({ playlistTitle }) {
  return (
    <Container h={40} size="fluid" className="taskbar" p={0}>
      <h2 style={{ marginRight: `20px` }}>{playlistTitle}</h2>
    </Container>
  );
}

VideoBarPlaylist.propTypes = {
  playlistTitle: PropTypes.string.isRequired,
};
