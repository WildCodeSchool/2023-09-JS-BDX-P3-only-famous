import { MdModeEdit, MdDelete } from "react-icons/md";
import { Button, Center, Checkbox, Grid, Input } from "@mantine/core";
import PropTypes from "prop-types";

export default function SingleUserLine({
  email,
  firstname,
  lastname,
  isAdmin,
}) {
  return (
    <Grid justify="center" align="center">
      <Grid.Col span={4}>
        <Input placeholder="Email" value={email} />
      </Grid.Col>
      <Grid.Col span={3}>
        {firstname} {lastname}
      </Grid.Col>
      <Grid.Col span={1}>
        <Checkbox
          ml={30}
          checked={isAdmin}
          color="yellow.3"
          iconColor="dark.8"
          className="checkbox-navbar"
        />
      </Grid.Col>
      <Grid.Col span={4}>
        <Center>
          <Button mr={20}>
            <MdModeEdit
              style={{ width: "20px", height: "20px" }}
              stroke={1.5}
            />
            <span style={{ marginLeft: "5px" }}>Modifier</span>
          </Button>
          <Button>
            <MdDelete style={{ width: "20px", height: "20px" }} stroke={1.5} />
            <span style={{ marginLeft: "5px" }}>Supprimer</span>
          </Button>
        </Center>
      </Grid.Col>
    </Grid>
  );
}
SingleUserLine.propTypes = {
  email: PropTypes.string.isRequired,
  firstname: PropTypes.string.isRequired,
  lastname: PropTypes.string.isRequired,
  isAdmin: PropTypes.bool.isRequired,
};
