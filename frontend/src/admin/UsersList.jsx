import { Center, Container, Grid, Progress } from "@mantine/core";
import { useEffect } from "react";
import TaskBar from "./TaskBar";
import SingleUserLine from "../components/SingleUserLine";
import { useAdmin } from "../context/AdminContext";

export default function UsersList() {
  const { getUsers, users, usersSearched } = useAdmin();
  useEffect(() => {
    getUsers();
  }, []);
  return (
    <Container size="fluid">
      <TaskBar p={0} />
      {usersSearched.length === 0 && (
        <div>
          <Progress h={4} className="yellow-3" mt={10} mb={5} />
          <Grid>
            <Grid.Col span={3}>email</Grid.Col>
            <Grid.Col span={3}>Nom</Grid.Col>
            <Grid.Col span={1}>Admin? </Grid.Col>
            <Grid.Col span={1}>Active? </Grid.Col>
            <Grid.Col span={4}>
              <Center>Action</Center>
            </Grid.Col>
          </Grid>
          <Progress h={2} className="yellow-3" />
          {users.map((ele) => (
            <SingleUserLine
              email={ele.email}
              firstname={ele.firstname}
              lastname={ele.lastname}
              isAdmin={ele.isAdmin}
              isActive={ele.isActive}
              key={ele.email}
            />
          ))}
        </div>
      )}
      {usersSearched.length !== 0 && (
        <div>
          <Progress h={4} className="yellow-3" mt={10} mb={5} />
          <Grid>
            <Grid.Col span={3}>email</Grid.Col>
            <Grid.Col span={3}>Nom</Grid.Col>
            <Grid.Col span={1}>Admin? </Grid.Col>
            <Grid.Col span={1}>Active? </Grid.Col>
            <Grid.Col span={4}>
              <Center>Action</Center>
            </Grid.Col>
          </Grid>
          <Progress h={2} className="yellow-3" />
          {usersSearched.map((ele) => (
            <SingleUserLine
              email={ele.email}
              firstname={ele.firstname}
              lastname={ele.lastname}
              isAdmin={ele.isAdmin}
              isActive={ele.isActive}
              key={ele.email}
            />
          ))}
        </div>
      )}
    </Container>
  );
}
