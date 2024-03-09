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
  const { deleteUser, changeRole } = useAdmin();

  const handleRole = () => {
    changeRole(email, isAdmin ? 0 : 1);
  };
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
          <Button mr={20} className="invisible-button" onClick={handleRole}>
            <MdModeEdit
              style={{ width: "20px", height: "20px" }}
              stroke={1.5}
            />
          </Button>
          <Button
            onClick={() => deleteUser(email)}
            className="invisible-button"
          >
            <MdDelete style={{ width: "20px", height: "20px" }} stroke={1.5} />
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
