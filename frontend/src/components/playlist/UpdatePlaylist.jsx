import { Button, Grid, Input } from "@mantine/core";
import { useState } from "react";
import PropTypes from "prop-types";

import { useVideoContext } from "../../context/videoContext";

export default function UpdatePlaylist({
  playlistId,
  oldTitle,
  oldCategory,
  callback,
}) {
  const [title, setTitle] = useState(oldTitle);
  const [category, setCategory] = useState(oldCategory);
  const { updatePlaylistById } = useVideoContext();

  async function update() {
    try {
      const newValue = {
        playlistTitle: title,
        category,
      };
      await updatePlaylistById(playlistId, newValue);
      callback(newValue);
    } catch (error) {
      console.error(error.message);
    }
  }
  return (
    <Grid>
      <Grid.Col span={4}>
        <Input
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          className="invisible-button-with-border"
        />
      </Grid.Col>
      <Grid.Col span={4}>
        <select
          className="invisible-button-with-border"
          name="category"
          value={category}
          onChange={(e) => setCategory(e.target.value)}
        >
          <option value="javascript">JavaScript</option>
          <option value="php">PHP</option>
          <option value="react">React</option>
          <option value="angular">Angular</option>
          <option value="dotnet">DotNet</option>
        </select>
      </Grid.Col>
      <Grid.Col span={4}>
        <Button
          type="button"
          onClick={() => update()}
          className="invisible-button-with-border"
        >
          Actualiser
        </Button>
      </Grid.Col>
    </Grid>
  );
}
UpdatePlaylist.propTypes = {
  playlistId: PropTypes.string.isRequired,
  oldTitle: PropTypes.string.isRequired,
  oldCategory: PropTypes.string.isRequired,
  callback: PropTypes.func.isRequired,
};
