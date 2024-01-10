import { useUserContext } from "../context/UserContext";

export default function Banner() {
  const { user } = useUserContext();
  return (
    <div className="center">
      <h2
        className="center-text glitch is-glitching"
        data-text={!user.isConnected ? "Connexion" : "Utisateur"}
      >
        {!user.isConnected ? "Connexion" : "Utisateur"}
      </h2>
    </div>
  );
}
