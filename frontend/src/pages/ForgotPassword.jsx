import { useEffect, useState } from "react";
import InputField from "../components/InputField";
import { useUserContext } from "../context/UserContext";

export default function ForgotPassword() {
  const [email, setEmail] = useState("");
  const [message, setMessage] = useState("");
  const { sendResetLink } = useUserContext();

  const validateEmail = (mail) => {
    return String(mail)
      .toLowerCase()
      .match(
        /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      );
  };
  async function sendLink() {
    if (validateEmail(email)) {
      const res = await sendResetLink(email);
      setMessage(res.message);
    } else {
      setMessage("Email invalide");
    }
  }

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  return (
    <div className="inscription_container">
      <div className="user-page container-md">
        <div
          className="banner-user"
          style={{ backgroundImage: `url("./src/assets/banner.png")` }}
        />
        <div>
          <h2>Changer votre mot de passe</h2>
          <ul className="informations_inscription">
            <li>
              <InputField
                type="email"
                title="Email"
                id="email"
                value={email}
                setValue={setEmail}
              />
            </li>
            <button type="button" className="mybtn" onClick={sendLink}>
              réinitialiser
            </button>
            <p>{message}</p>
          </ul>
        </div>
      </div>
    </div>
  );
}
