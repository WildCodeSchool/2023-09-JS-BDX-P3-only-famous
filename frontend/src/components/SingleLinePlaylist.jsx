import { Grid } from "@mantine/core";
import PropTypes from "prop-types";

export default function SingleLinePlaylist({ playlistTitle, category }) {
  return (
    <Grid justify="center" align="center">
      <Grid.Col span={3}>
        <span>{playlistTitle}</span>
      </Grid.Col>
      <Grid.Col span={3}>
        <span>{category}</span>
      </Grid.Col>
    </Grid>
  );
}

SingleLinePlaylist.propTypes = {
  playlistTitle: PropTypes.string.isRequired,
  category: PropTypes.string.isRequired,
};
