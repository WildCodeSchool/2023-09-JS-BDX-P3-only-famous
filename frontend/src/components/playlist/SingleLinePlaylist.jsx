import { Grid, Button } from "@mantine/core";
import PropTypes from "prop-types";

export default function SingleLinePlaylist({
  playlistId,
  playlistTitle,
  category,
}) {
  return (
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
        <Button type="button" style={{ marginRight: "15px" }}>
          Supprimer
        </Button>
        <Button type="button">Editer</Button>
      </Grid.Col>
    </Grid>
  );
}

SingleLinePlaylist.propTypes = {
  playlistTitle: PropTypes.string.isRequired,
  category: PropTypes.string.isRequired,
  playlistId: PropTypes.string.isRequired,
};
