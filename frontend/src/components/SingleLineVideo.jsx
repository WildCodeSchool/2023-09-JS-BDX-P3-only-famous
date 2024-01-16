import { MdModeEdit, MdDelete } from "react-icons/md";
import { Button, Center, Checkbox, Grid } from "@mantine/core";
import PropTypes from "prop-types";

export default function SingleLineVideo({
  titre,
  isHidden,
  isPublic,
  duration,
  playList,
}) {
  return (
    <Grid justify="center" align="center">
      <Grid.Col span={3}>
        <span>{titre}</span>
      </Grid.Col>
      <Grid.Col span={1}>
        <Checkbox
          ml={30}
          defaultValue={isHidden}
          checked={isHidden}
          color="yellow.3"
          iconColor="dark.8"
          className="checkbox-navbar"
          onChange={() => {}}
        />
      </Grid.Col>
      <Grid.Col span={1}>
        <Checkbox
          ml={30}
          defaultValue={isPublic}
          checked={isPublic}
          color="yellow.3"
          iconColor="dark.8"
          className="checkbox-navbar"
          onChange={() => {}}
        />

        {/* <input type="checkbox" checked={isAdmin} onChange={() => {}} /> */}
      </Grid.Col>
      <Grid.Col span={1}>
        <span>{duration}</span>
      </Grid.Col>
      <Grid.Col span={2}>
        <span>{playList}</span>
      </Grid.Col>
      <Grid.Col span={4}>
        <Center>
          <Button mr={20}>
            <MdModeEdit
              style={{ width: "20px", height: "20px" }}
              stroke={1.5}
            />
            <span style={{ marginLeft: "5px" }}>
              {isHidden ? "Publier" : "Retirer"}
            </span>
          </Button>
          <Button mr={20}>
            <MdModeEdit
              style={{ width: "20px", height: "20px" }}
              stroke={1.5}
            />
            <span style={{ marginLeft: "5px" }}>
              {isPublic ? "Liberer" : "Restreindre"}
            </span>
          </Button>
          <Button onClick={() => {}}>
            <MdDelete style={{ width: "20px", height: "20px" }} stroke={1.5} />
            <span style={{ marginLeft: "5px" }}>Supprimer</span>
          </Button>
        </Center>
      </Grid.Col>
    </Grid>
  );
}

SingleLineVideo.propTypes = {
  titre: PropTypes.string.isRequired,
  isPublic: PropTypes.string.isRequired,
  isHidden: PropTypes.string.isRequired,
  duration: PropTypes.number.isRequired,
  playList: PropTypes.string.isRequired,
};
