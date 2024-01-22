import { MdModeEdit, MdDelete } from "react-icons/md";
import { Button, Center, Checkbox, Grid, Input } from "@mantine/core";
import PropTypes from "prop-types";
import { useAdmin } from "../context/AdminContext";

export default function SingleUserLine({
  email,
  firstname,
  lastname,
  isAdmin,
  isActive,
}) {
  const { deleteUser } = useAdmin();
  return (
    <Grid justify="center" align="center">
      <Grid.Col span={3}>
        <Input placeholder="Email" value={email} readOnly />
      </Grid.Col>
      <Grid.Col span={3}>
        {firstname} {lastname}
      </Grid.Col>
      <Grid.Col span={1}>
        <Checkbox
          ml={30}
          defaultValue={isAdmin}
          checked={isAdmin}
          color="yellow.3"
          iconColor="dark.8"
          className="checkbox-navbar"
          onChange={() => {}}
        />

        {/* <input type="checkbox" checked={isAdmin} onChange={() => {}} /> */}
      </Grid.Col>
      <Grid.Col span={1}>
        <Checkbox
          ml={30}
          defaultValue={isAdmin}
          checked={isActive}
          color="yellow.3"
          iconColor="dark.8"
          className="checkbox-navbar"
          onChange={() => {}}
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
          <Button onClick={() => deleteUser(email)}>
            <MdDelete style={{ width: "20px", height: "20px" }} stroke={1.5} />
            <span style={{ marginLeft: "5px" }}>Supprimer</span>
          </Button>
        </Center>
      </Grid.Col>
    </Grid>
  );
}
SingleUserLine.defaultProps = {
  firstname: "name",
};
SingleUserLine.propTypes = {
  email: PropTypes.string.isRequired,
  firstname: PropTypes.string,
  lastname: PropTypes.string.isRequired,
  isAdmin: PropTypes.number.isRequired,
  isActive: PropTypes.number.isRequired,
};
