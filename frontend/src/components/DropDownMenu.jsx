import { Menu, Button, rem } from "@mantine/core";
import { Link, useNavigate } from "react-router-dom";
import {
  IconPhoto,
  IconArrowsLeftRight,
  IconUserCircle,
} from "@tabler/icons-react";
import { FaUsers } from "react-icons/fa";
import { useUserContext } from "../context/UserContext";

export default function DropDownMenu() {
  const { user, logout } = useUserContext();
  const navigate = useNavigate();
  return (
    <Menu shadow="md" width={200}>
      <Menu.Target>
        <Button>
          <FaUsers
            style={{
              width: "40px",
              height: "40px",
              backgroundColor: "transparent",
              color: user.isConnected
                ? "var(--secondary-me)"
                : "var( --font-light-grey)",
              transition: "all .2s ease",
            }}
          />
        </Button>
      </Menu.Target>

      <Menu.Dropdown>
        {!user.isAdmin ? (
          <>
            <Menu.Label>Utilisateur</Menu.Label>

            {!user.isConnected && (
              <>
                <Menu.Item
                  leftSection={
                    <IconUserCircle
                      style={{ width: rem(14), height: rem(14) }}
                    />
                  }
                >
                  <Link to="/connexion">Connexion</Link>
                </Menu.Item>
                <Menu.Item
                  leftSection={
                    <IconUserCircle
                      style={{ width: rem(14), height: rem(14) }}
                    />
                  }
                >
                  <Link to="/inscription">Inscription</Link>
                </Menu.Item>
              </>
            )}
            {user.isConnected && (
              <>
                <Menu.Item
                  leftSection={
                    <IconUserCircle
                      style={{ width: rem(14), height: rem(14) }}
                    />
                  }
                >
                  <Link
                    to
                    onClick={() => {
                      navigate("/");
                      logout();
                    }}
                  >
                    Déconnexion
                  </Link>
                </Menu.Item>
                <Menu.Item
                  leftSection={
                    <IconPhoto style={{ width: rem(14), height: rem(14) }} />
                  }
                >
                  <Link
                    to
                    onClick={() => {
                      navigate("/user");
                    }}
                  >
                    Profil
                  </Link>
                </Menu.Item>
              </>
            )}
          </>
        ) : (
          <>
            <Menu.Label>Admin</Menu.Label>
            <Menu.Item
              leftSection={
                <IconArrowsLeftRight
                  style={{ width: rem(14), height: rem(14) }}
                />
              }
            >
              Page admin
            </Menu.Item>
            <Menu.Item
              leftSection={
                <IconUserCircle style={{ width: rem(14), height: rem(14) }} />
              }
            >
              <Link
                to
                onClick={() => {
                  navigate("/");
                  logout();
                }}
              >
                Déconnexion
              </Link>
            </Menu.Item>
          </>
        )}

        <Menu.Divider />
      </Menu.Dropdown>
    </Menu>
  );
}
