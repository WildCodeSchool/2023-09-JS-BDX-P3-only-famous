import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { useUserContext } from "../context/UserContext";

export default function PageUser() {
  const [urlImage, seturlImage] = useState(null);
  const navigate = useNavigate();
  const { user } = useUserContext();
  useEffect(() => {
    if (!user.isConnected) {
      navigate("/");
    }
  }, []);
  return (
    <div className="user-page container-md">
      <div
        className="banner-user"
        style={{ backgroundImage: `url("./src/assets/banner.png")` }}
      />
      <div className="card  mb-3">
        <div className="row no-gutters">
          <div className="col-md-4">
            <img
              src={
                urlImage
                  ? URL.createObjectURL(urlImage)
                  : "https://placehold.co/600x400"
              }
              className="card-img"
              alt="..."
            />
          </div>
          <div className="col-md-8">
            <div className="card-body">
              <h5 className="card-title">User name</h5>
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
                onChange={(e) => seturlImage(e.target.files[0])}
              />
            </div>
          </div>
        </div>
      </div>
      <div className="col-md-8 text-white">
        <ul>
          <li>Nom : Prénom Nom</li>
          <li>Date de naissance: 21-04-1986</li>
          <li>Loisirs</li>
          <li>Lieu de naissance: France</li>
          <li>Adresse: 1 rue Honoré Daumier, Talence, 33400</li>
          <li className="text-muted">Role: utilisateur</li>
        </ul>
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
        </ul>
      </div>
    </div>
  );
}
