import { MdModeEdit, MdDelete } from "react-icons/md";
import { Button, Center, Checkbox, Grid } from "@mantine/core";
import PropTypes from "prop-types";
import { useVideoContext } from "../context/videoContext";

export default function SingleLineVideo({
  ytId,
  titre,
  isHidden,
  isPublic,
  duration,
  playList,
  playListId,
}) {
  const { deleteVideoBId, updateVideoById, getVideoListFromPlaylist } =
    useVideoContext();

  async function handlePublish() {
    await updateVideoById(ytId, {
      isHidden,
      isPublic: !isPublic,
    });
    await getVideoListFromPlaylist(playListId);
  }

  async function handleEdit() {
    if (isHidden) {
      const { message } = await updateVideoById(ytId, {
        isHidden: false,
        isPublic,
      });
      console.warn("Message", message);
    } else {
      const { message } = await updateVideoById(ytId, {
        isHidden: true,
        isPublic: false,
      });
      console.warn("Message", message);
    }
    await getVideoListFromPlaylist(playListId);
  }
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
          readOnly
        />
      </Grid.Col>
      <Grid.Col span={1}>
        <Checkbox
          ml={30}
          checked={isPublic}
          color="yellow.3"
          iconColor="dark.8"
          className="checkbox-navbar"
          readOnly
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
          <Button mr={20} onClick={() => handleEdit()} name="hidden">
            <MdModeEdit
              style={{ width: "20px", height: "20px" }}
              stroke={1.5}
            />
            <span style={{ marginLeft: "5px" }}>
              {isHidden ? "Publier" : "Retirer"}
            </span>
          </Button>
          <Button mr={20} onClick={() => handlePublish()} name="public">
            <MdModeEdit
              style={{ width: "20px", height: "20px" }}
              stroke={1.5}
            />
            <span style={{ marginLeft: "5px" }}>
              {!isPublic ? "Liberer" : "Restreindre"}
            </span>
          </Button>
          <Button
            onClick={() => {
              deleteVideoBId(ytId);
            }}
          >
            <MdDelete style={{ width: "20px", height: "20px" }} stroke={1.5} />
            <span style={{ marginLeft: "5px" }}>Supprimer</span>
          </Button>
        </Center>
      </Grid.Col>
    </Grid>
  );
}

SingleLineVideo.propTypes = {
  ytId: PropTypes.string.isRequired,
  titre: PropTypes.string.isRequired,
  isPublic: PropTypes.string.isRequired,
  isHidden: PropTypes.string.isRequired,
  duration: PropTypes.string.isRequired,
  playList: PropTypes.string.isRequired,
  playListId: PropTypes.string.isRequired,
};
