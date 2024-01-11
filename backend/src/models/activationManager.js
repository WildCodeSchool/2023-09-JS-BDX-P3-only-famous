const { createTransport } = require("nodemailer");

class ActivationManager {
  static sendValidationCode(email, randomCode) {
    const transporter = createTransport({
      host: process.env.NODE_HOST,
      port: process.env.NODE_PORT,
      auth: {
        user: process.env.NODE_USER,
        pass: process.env.NODE_MAILER_KEY,
      },
    });
    const lien = `http://localhost:3310/api/validation/${randomCode}/${email}`;
    const mailOptions = {
      from: process.env.NODE_USER,
      to: email,
      subject: `Code de validation "Banque de tutos"`,
      text: `	Cher utilisateur de la "Banque de tutos",
      Félicitations ! Votre compte sur la Banque de tutos, a été créé avec succès. Nous sommes ravis de vous accueillir dans notre communauté.
      En revanche, votre compte n'est pas activé.  </p>
      Avant de commencer à profiter pleinement de toutes les fonctionnalités de la Banque de tutos, veuillez activer votre compte en utilisant le code de validation ci-dessous :
             ${randomCode}

             Activer votre compte en cliquand sur ce lien:
             <a href="${lien}">${lien}</a>
      Nous sommes impatients de vous voir explorer notre application et de profiter de toutes les fonctionnalités et tutoriels que nous avons à offrir. Merci de faire partie de notre communauté !
      Cordialement,
      
      
      Mahdi Mcheik`,
      html: `
        <h2>Cher utilisateur de la "Banque de tutos",</h2>
        <p>Félicitations ! Votre compte sur la Banque de tutos, a été créé avec succès. Nous sommes ravis de vous accueillir dans notre communauté.</p>
        <p>En revanche, votre compte n'est pas activé.  </p>
        <p>Avant de commencer à profiter pleinement de toutes les fonctionnalités de la Banque de tutos, veuillez activer votre compte en utilisant le code de validation ci-dessous :</p>
        <h1>${randomCode}</h1>
        <p>Activer votre compte en cliquand sur ce lien:</p>
        <a href="${lien}">${lien}</a>
        <p>Nous sommes impatients de vous voir explorer notre application et de profiter de toutes les fonctionnalités et tutoriels que nous avons à offrir. Merci de faire partie de notre communauté !</p>
        
        <p>Cordialement</p>
        <h3>Mahdi Mcheik</h3>
        `,
    };
    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        console.error(error);
      } else {
        console.error("Email sent: ", info.response);
      }
    });
  }
}

module.exports = ActivationManager;
