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
    const lien = `${process.env.BACKEND_URL}/api/validation/${randomCode}/${email}`;
    const mailOptions = {
      from: process.env.NODE_USER,
      to: email,
      subject: `Code de validation "Banque de tutos"`,
      text: `	Cher utilisateur de la "Banque de tutos",
      Félicitations ! Votre compte sur la Banque de tutos, a été créé avec succès. Nous sommes ravis de vous accueillir dans notre communauté.
      En revanche, votre compte n'est pas activé.  </p>
      Avant de commencer à profiter pleinement de toutes les fonctionnalités de la Banque de tutos, veuillez activer votre compte en utilisant le code de validation ci-dessous :

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

  static sendResetCode(email, randomCode) {
    const transporter = createTransport({
      host: process.env.NODE_HOST,
      port: process.env.NODE_PORT,
      auth: {
        user: process.env.NODE_USER,
        pass: process.env.NODE_MAILER_KEY,
      },
    });
    const lien = `${process.env.FRONTEND_URL}/resetpassword?code=${randomCode}&email=${email}`;
    const mailOptions = {
      from: process.env.NODE_USER,
      to: email,
      subject: `Code de reset "Banque de tutos"`,
      text: `	Cher utilisateur de la "Banque de tutos",
      Félicitations ! Votre compte sur la Banque de tutos, a été créé avec succès. Nous sommes ravis de vous accueillir dans notre communauté.
      En revanche, votre compte n'est pas activé.  
      Avant de commencer à profiter pleinement de toutes les fonctionnalités de la Banque de tutos, veuillez activer votre compte en utilisant le code de validation ci-dessous :

             Activer votre compte en cliquand sur ce lien:
             ${lien}
      Nous sommes impatients de vous voir explorer notre application et de profiter de toutes les fonctionnalités et tutoriels que nous avons à offrir. Merci de faire partie de notre communauté !
      Cordialement,
      
      
      Mahdi Mcheik`,
      html: `
        <h2>Cher utilisateur de la "Banque de tutos",</h2>

        <p>Pour réinitialiser votre mot de passe, cliquer sur ce lien:</p>
        <a href="${lien}">${lien}</a>
        <p>si vous n'êtes pas à l'origine de cette demande, veuillez ne pas tenir compte de fking mail, i kill my family with a knife!</p>
        
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

  static sendMail(sender, firstname, lastname, title, text) {
    const transporter = createTransport({
      host: process.env.NODE_HOST,
      port: process.env.NODE_PORT,
      auth: {
        user: process.env.NODE_USER,
        pass: process.env.NODE_MAILER_KEY,
      },
    });
    const mailOptions = {
      from: process.env.NODE_USER,
      to: sender,
      subject: "Fiche contact, la Banque de tutos",
      text: "",
      html: `
        <h3> Title   : ${title}</h3>
        <h3> Sender  : ${firstname} ${lastname} (${sender}),/h3>
        <h3> Message</h3>
        <pre>${text}</pre>
        `,
    };
    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        console.error(error);
        return false;
      }
      console.error("Email sent: ", info.response);
      return true;
    });
  }

  static autoAnswerMail(sender, firstname, title, text) {
    const transporter = createTransport({
      host: process.env.NODE_HOST,
      port: process.env.NODE_PORT,
      auth: {
        user: process.env.NODE_USER,
        pass: process.env.NODE_MAILER_KEY,
      },
    });
    const lien = `${process.env.FRONTEND_URL}`;
    const mailOptions = {
      from: process.env.NODE_USER,
      to: sender,
      subject: "Message reçu, de la part de la Banque de tutos",
      text: "",
      html: `
      <h2>Bonjour ${firstname}, </h2>
      <p>La banque de tutos vous remercie pour votre message. Veuillez noter que nous avons bien reçu votre e-mail. </p>
      <p>Nos administrateurs s'efforcent de répondre dans les plus brefs délais. Nous vous remercions de votre patience et de votre compréhension.</p>
      <p>Cordialement</p>
      <a href="${lien}">${lien}</a>

        <h3> Message,</h3>
        <h3> Title   : ${title}</h3>
        <h3> Sender  : ${sender}</h3>
   
        <pre>${text}</pre>
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
