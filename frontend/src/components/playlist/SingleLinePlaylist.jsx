import { Grid, Button } from "@mantine/core";
import PropTypes from "prop-types";
import { useState } from "react";
import { MdDelete } from "react-icons/md";
import { useNavigate } from "react-router-dom";
import { FaRegEdit } from "react-icons/fa";
import { useVideoContext } from "../../context/videoContext";
import UpdatePlaylist from "./UpdatePlaylist";

export default function SingleLinePlaylist({
  playlistId,
  playlistTitle,
  category,
  index,
}) {
  const { playlists, setPlaylists } = useVideoContext();
  const [showUpdate, setShowUpdate] = useState(false);
  const { deletePlaylistById } = useVideoContext();
  const toggleShowUpdate = (newValue) => {
    setShowUpdate(!showUpdate);
    playlists[index] = { ...playlists[index], ...newValue };
    setPlaylists([...playlists]);
  };
  const navigate = useNavigate();
  return (
    <>
      <Grid>
        <Grid.Col span={3}>
          <Button
            className="invisible-button-with-border"
            style={{ width: "100%" }}
            onClick={() => navigate(`/admin/videos/${playlistId}`)}
          >
            <span className="playlist-items">{playlistId}</span>
          </Button>
        </Grid.Col>
        <Grid.Col span={3}>
          <span className="playlist-items">{playlistTitle}</span>
        </Grid.Col>
        <Grid.Col span={2}>
          <span className="playlist-items">{category}</span>
        </Grid.Col>
        <Grid.Col span={4}>
          <Button
            type="button"
            style={{ marginRight: "15px" }}
            onClick={() => deletePlaylistById(playlistId)}
            className="invisible-button"
          >
            <MdDelete style={{ width: "20px", height: "20px" }} stroke={1.5} />
          </Button>
          <Button
            type="button"
            onClick={() => setShowUpdate(!showUpdate)}
            className="invisible-button"
          >
            <FaRegEdit style={{ width: "20px", height: "20px" }} stroke={1.5} />
          </Button>
        </Grid.Col>
      </Grid>
      {showUpdate && (
        <Grid>
          <UpdatePlaylist
            playlistId={playlistId}
            oldCategory={category}
            oldTitle={playlistTitle}
            callback={toggleShowUpdate}
          />
        </Grid>
      )}
    </>
  );
}

SingleLinePlaylist.propTypes = {
  playlistTitle: PropTypes.string.isRequired,
  category: PropTypes.string.isRequired,
  playlistId: PropTypes.string.isRequired,
  index: PropTypes.number.isRequired,
};
