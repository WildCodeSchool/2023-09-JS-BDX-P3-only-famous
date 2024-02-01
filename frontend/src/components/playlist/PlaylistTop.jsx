import { Grid } from "@mantine/core";

export default function PlaylistTopLine() {
  return (
    <Grid>
      <Grid.Col span={3}>
        <span>Playliste Id</span>
      </Grid.Col>
      <Grid.Col span={3}>
        <span>Titre</span>
      </Grid.Col>
      <Grid.Col span={2}>
        <span>Category</span>
      </Grid.Col>
      <Grid.Col span={4}>
        <span>Action</span>
      </Grid.Col>
    </Grid>
  );
}
