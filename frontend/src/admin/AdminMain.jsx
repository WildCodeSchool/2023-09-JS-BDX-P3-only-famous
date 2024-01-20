import logoAdmin from "../assets/admin.png";

export default function AdminMain() {
  return (
    <div
      className="central-logo-admin"
      style={{
        backgroundImage: `url(${logoAdmin})`,
        backgroundSize: "cover",
        width: "1000wh",
        aspectRatio: " 1 / 1",
        backgroundPosition: "center",
        opacity: "0.1",
      }}
    />
  );
}
