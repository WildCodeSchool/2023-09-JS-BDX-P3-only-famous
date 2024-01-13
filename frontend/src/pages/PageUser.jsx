import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { Center, Container, Progress, Spoiler } from "@mantine/core";
import { useUserContext } from "../context/UserContext";
import MyAlert from "../components/MyAlert";

export default function PageUser() {
  const navigate = useNavigate();
  const { user, setUser } = useUserContext();
  const [urlImage, setUrlImage] = useState({ preview: user.imgUrl });

  async function handleChange(e) {
    setUrlImage({
      data: e.target.files[0],
      preview: URL.createObjectURL(e.target.files[0]),
    });
    const formData = new FormData();
    formData.append("file", e.target.files[0]);
    const { imgUrl } = await axios.post(
      "http://localhost:3310/api/userimage",
      formData
    );
    setUser({ ...user, imgUrl });
  }

  useEffect(() => {
    window.scrollTo(0, 0);
    if (!user.isConnected) {
      navigate("/");
    }
  }, []);
  return (
    <Container size="md">
      <Center
        maw={1200}
        h={100}
        bg="var(--mantine-color-gray-light)"
        className="banner"
      >
        <h2>
          Bienvenue {user.firstname} {user.lastname}
        </h2>
      </Center>
      <div className="user-card">
        <div
          className="user-image"
          style={{
            backgroundImage: `url(${urlImage.preview ?? user.imgUrl})`,
          }}
        />
        <div className="user-details">
          <div>
            <Spoiler maxHeight={200} showLabel="Show more" hideLabel="Hide">
              <h3>Profil</h3>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga
              quibusdam dolorum at explicabo nostrum? A quae sapiente, commodi
              optio rem unde voluptas voluptatum harum minima repellendus
              maxime, ullam, velit veritatis!
            </Spoiler>
          </div>
          <input
            type="file"
            accept="image/png, image/jpeg"
            name="profilImage"
            onChange={handleChange}
          />
        </div>
      </div>
      <Progress color="gray" value={100} />

      <MyAlert
        variant={user.isActive ? "light" : "dark"}
        title="Status de l'activation"
        radius="md"
        color={
          !user.isActive
            ? "var(--mantine-color-red-8)"
            : "var(--mantine-color-blue-1)"
        }
        message={
          !user.isActive
            ? "Verifier vos email pour activer votre compte"
            : "Compte active"
        }
      />
      <Center
        maw={1200}
        h={50}
        bg="var(--mantine-color-gray-light)"
        className="banner"
      >
        <h2>Éditer votre profil</h2>
      </Center>
    </Container>
  );
}
