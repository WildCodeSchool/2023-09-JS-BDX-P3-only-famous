import { Center, Container, Grid, Progress } from "@mantine/core";
import TaskBar from "./TaskBar";
import SingleUserLine from "../components/SingleUserLine";

export default function UsersList() {
  return (
    <Container size="fluid">
      <TaskBar p={0} />
      <Progress h={4} className="yellow-3" mt={10} mb={5} />
      <Grid>
        <Grid.Col span={4}>email</Grid.Col>
        <Grid.Col span={3}>Nom</Grid.Col>
        <Grid.Col span={1}>Admin? </Grid.Col>
        <Grid.Col span={4}>
          <Center>Action</Center>
        </Grid.Col>
      </Grid>
      <Progress h={2} className="yellow-3" />
      <SingleUserLine
        email="mahdi.mcheik@hotmail.fr"
        firstname="Mahdi"
        lastname="Mcheik"
        isAdmin
      />
      <p>
        Users list Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Praesentium placeat veniam odio vitae, nostrum soluta harum rem nobis
        ullam ipsam aliquid laborum consequuntur minima reiciendis repudiandae
        consectetur facilis dolore dicta.
      </p>
    </Container>
  );
}
