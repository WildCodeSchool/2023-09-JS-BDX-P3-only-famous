import {
  AppShell,
  Burger,
  Button,
  Container,
  Group,
  Progress,
} from "@mantine/core";
import { useDisclosure } from "@mantine/hooks";
import { Link, Outlet, useNavigate } from "react-router-dom";

export default function Admin() {
  const navigate = useNavigate();
  const [mobileOpened, { toggle: toggleMobile }] = useDisclosure();
  const [desktopOpened, { toggle: toggleDesktop }] = useDisclosure(true);

  return (
    <AppShell
      mt={16}
      header={{ height: 60 }}
      navbar={{
        width: 300,
        breakpoint: "sm",
        collapsed: { mobile: !mobileOpened, desktop: !desktopOpened },
      }}
      padding="md"
      className="dashboard"
    >
      <AppShell.Header mt={0} bg="dark">
        <Group h="100%" px="md">
          <Burger opened onClick={toggleMobile} hiddenFrom="sm" size="sm" />
          <Burger
            className="admin-burger"
            opened={desktopOpened}
            onClick={toggleDesktop}
            visibleFrom="sm"
            size="sm"
          />
          <Link
            to="/"
            style={{
              margin: "0 auto",
            }}
          >
            <img
              src="./src/assets/logo.png"
              alt="logo"
              className="logo-admin"
              height="50"
              style={{
                margin: "0 auto",
              }}
            />
          </Link>
        </Group>
      </AppShell.Header>
      <AppShell.Navbar p="lg" className="side-bar">
        <h2 className="dashboard">Dashboard</h2>
        <Progress />
        <Button
          className="sidebar-titles gray-8"
          onClick={() => navigate("/admin/users")}
        >
          Utilisateur
        </Button>
        <Progress h={4} className="gray-8" />
        <Button
          className="sidebar-titles gray-8"
          onClick={() => navigate("/admin/videos")}
        >
          Vidéo
        </Button>
        <Progress h={4} className="gray-8" />
        <Button
          className="sidebar-titles gray-8"
          onClick={() => navigate("/admin/videos")}
        >
          Playlistes
        </Button>
        <Progress h={4} className="gray-8" />
      </AppShell.Navbar>
      <AppShell.Main pt={0}>
        <Container size="fluid" p={0}>
          <Outlet />
        </Container>
      </AppShell.Main>
    </AppShell>
  );
}
