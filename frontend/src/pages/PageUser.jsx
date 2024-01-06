import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { useUserContext } from "../context/UserContext";
import UserSecretSet from "../components/userComponents/UserSecretSet";

export default function PageUser() {
  const navigate = useNavigate();
  const { user, setUser } = useUserContext();
  const [urlImage, setUrlImage] = useState({ preview: user.imgUrl });
  const [secretQuestion, setSecretQuestion] = useState("");
  const [secretAnswer, setSecretAnswer] = useState("");
  const [secretMessage, setSecretMessage] = useState("");

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
  const saveSecret = async () => {
    const { data } = await axios.post("http://localhost:3310/api/secret", {
      secretQuestion,
      secretAnswer,
    });
    setSecretMessage(data.message);
  };
  useEffect(() => {
    if (!user.isConnected) {
      navigate("/");
    }
  }, []);
  return (
    <div className="user-page container-md">
      {user && (
        <h1 className="text-white">Bienvenue {user.firstname.toUpperCase()}</h1>
      )}
      <div
        className="banner-user"
        style={{ backgroundImage: `url("./src/assets/banner.png")` }}
      />
      <div className="card  mb-3">
        <div className="row no-gutters">
          <div className="col-md-4">
            <img
              src={urlImage.preview ?? user.imgUrl}
              className="card-img"
              alt="..."
            />
          </div>
          <div className="col-md-8">
            <div className="card-body">
              <h5 className="text-white">
                {user.firstname} {user.lastname.toUpperCase()}
              </h5>

              <p className="card-text">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam
                aspernatur maxime velit eaque nostrum! Vel, dolorem minima?
                Velit aliquam perferendis, eaque reprehenderit provident.
              </p>
              <button
                className="btn"
                style={{ color: `var(--secondary-me)` }}
                type="button"
              >
                Modifier
              </button>
              <input
                type="file"
                accept="image/png, image/jpeg"
                name="profilImage"
                onChange={handleChange}
              />
            </div>
          </div>
        </div>
      </div>
      <div className="col-md-8 text-white">
        <ul>
          <li>
            Nom : {user.firstname} {user.lastname.toUpperCase()}
          </li>
          <li>Date de naissance: {user.birthday}</li>
          <li>Loisirs</li>
          <li>Lieu de naissance: {user.birthplace ?? ""}</li>
          <li>Adresse: {user.address ?? ""}</li>
          <li className="text-muted">
            Role:{user.isAdmin ? " utilisateur" : " administrateur"}
          </li>
        </ul>

        <UserSecretSet
          secretAnswer={secretAnswer}
          setSecretAnswer={setSecretAnswer}
          secretQuestion={secretQuestion}
          setSecretQuestion={setSecretQuestion}
          saveSecret={saveSecret}
        />
      </div>
      <div className="col-md-8 text-white">
        <ul>
          <button
            className="btn"
            style={{ color: `var(--secondary-me)` }}
            type="button"
          >
            Modifier votre profil
          </button>
          <button
            className="btn"
            style={{ color: `var(--secondary-me)`, display: "block" }}
            type="button"
          >
            Supprimer votre compte
          </button>
          <p>{secretMessage}</p>
        </ul>
      </div>
    </div>
  );
}
