import { Grid, Button } from "@mantine/core";
import PropTypes from "prop-types";
import { useState } from "react";
import { useVideoContext } from "../../context/videoContext";
import UpdatePlaylist from "./UpdatePlaylist";

export default function SingleLinePlaylist({
  playlistId,
  playlistTitle,
  category,
}) {
  const [showUpdate, setShowUpdate] = useState(false);
  const { deletePlaylistById } = useVideoContext();
  return (
    <>
      <Grid>
        <Grid.Col span={3}>
          <span className="playlist-items">{playlistId}</span>
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
            className="invisible-button-with-border"
          >
            Supprimer
          </Button>
          <Button
            type="button"
            onClick={() => setShowUpdate(!showUpdate)}
            className="invisible-button-with-border"
          >
            Editer
          </Button>
        </Grid.Col>
      </Grid>
      {showUpdate && (
        <Grid>
          <UpdatePlaylist
            playlistId={playlistId}
            oldCategory={category}
            oldTitle={playlistTitle}
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
};
