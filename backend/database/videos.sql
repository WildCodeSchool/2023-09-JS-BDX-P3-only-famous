create table
    user(
        id int unsigned primary key auto_increment not null,
        firstname varchar(255) not null,
        lastname VARCHAR(255) not null,
        email varchar(255) not null UNIQUE,
        birthday VARCHAR(255) not null,
        password VARCHAR(255) not null,
        isAdmin BOOLEAN DEFAULT false
    );

insert INTO
    user (
        firstname,
        lastname,
        email,
        password,
        birthday,
        isAdmin
    )
VALUES (
        "Mahdi",
        "Mcheik",
        "mahdi.mcheik@hotmail.fr",
        "1234",
        "21-04-1986",
        true
    ), (
        "Ali",
        "Mcheik",
        "mahdi.mcheik@hotmail.com",
        "1234",
        "21-04-1986",
        false
    );

create table
    video(
        id int unsigned primary key auto_increment not null,
        ytId varchar(255) not null,
        title varchar(255) not null,
        playlistTitle VARCHAR(255) not null,
        playlistId VARCHAR(255) not null,
        description TEXT null,
        thumbnails VARCHAR(255) not null,
        duration varchar(50) not null,
        publishDate date not null,
        tags TEXT null
    );
    create table
    playlist(
      id int unsigned primary key auto_increment not null,
      playlistId VARCHAR(255) not null,
      playlistTitle VARCHAR(255) not null,
      category VARCHAR(255) not null
    );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
  "Apprendre React",
  "javascript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hhe6Xb4Em5U",
          "La formation React 2023 est en ligne !",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Petite vido pour vous annoncer et prsenter la nouvelle formation React dition 2023 httpsgrafikartfrformationsreact",
          "https://i.ytimg.com/vi/hhe6Xb4Em5U/default.jpg",
          "2:1",
          "2023-09-18",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "NT0s0aOHu0Q",
          "Apprendre React : Introduction",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsintroductionreact1312Abonnezvous  httpsbitlyGrafikartSubscribeReact est une bibliothque JavaScript qui permet de simplifier la cration dinterface Elle permet une synchronisation plus simple et plus efficace entre les donnes de votre application et le rendu HTMLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/NT0s0aOHu0Q/default.jpg",
          "5:38",
          "2023-09-18",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KuEg1hajUmM",
          "Apprendre React : Installation de React",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsinstallationreact1313Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre nous allons voir comment commencer  utiliser React Si vous voulez commencer simplement sans avoir  configurer de chose sur votre ordinateur vous pouvez utiliser lditeur en ligne CodeSandbox en utilisant le modle fournit sur la documentationhttpsreactdevlearn en cliquant sur forkSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/KuEg1hajUmM/default.jpg",
          "4:13",
          "2023-09-18",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "TAuiJHmvPAQ",
          "Apprendre React : La syntaxe JSX",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielssyntaxejsxreact1314Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir la syntaxe JSX qui est une syntaxe spcifique utilise par React pour reprsenter la structure HTML  injecter dans la page Cette syntaxe est conue comme une extension du javascript classique qui permet de dcrire des lments comme on le ferait dans une page HTMLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/TAuiJHmvPAQ/default.jpg",
          "23:18",
          "2023-09-18",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ilqxZiXnwD8",
          "Apprendre React : Le hook useState",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacthookuseState1327Le principal intrt de React va tre la possibilit de crer une interface ractive qui volue en fonction des interactions faites par lutilisateur  En plus des proprits que lon reoit en paramtres des fonctions nous allons pouvoir gnrer un tat sorte de mmoire interne  notre composant qui sera ensuite utilis dans notre rendu JSX On aura ensuite la possibilit de modifier cet tat et React se chargera de reflter les modifications  lcranSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ilqxZiXnwD8/default.jpg",
          "12:",
          "2023-09-19",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rhPIw9a1CxQ",
          "Apprendre React : Les formulaires",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsformulairesreact1317Maintenant que nous avons vu la notion dtat on va faire une petite apart sur lutilisation des formulaires et des champs dans le cadre de ReactSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/rhPIw9a1CxQ/default.jpg",
          "9:51",
          "2023-09-20",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "FkPLzu0RlgA",
          "Apprendre React : Le flux de données dans React",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsdataflowreact1319Dans ce chapitre nous allons voir comment organiser le flux de donnes au sein dune application React Jusqu maintenant on a vu quon avait la possibilit de morceler notre systme en plusieurs composants avec la possibilit de faire descendre de linformation des composants parents vers les composants enfants grce au systme de proprit mais avec les vnements il va tre possible de faire remonter les informations dans lautre sens vers les composants parentsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/FkPLzu0RlgA/default.jpg",
          "3:50",
          "2023-09-21",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "elMAnc8lH_I",
          "Apprendre React : TP React : Liste de produit",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielstpreactlisteproduit1320Dans ce chapitre je vous propose de pratiquer un peu tout ce que lon a vu jusqu maintenant  travers un exemple concret Cet exemple sera aussi loccasion de voir comment il faut rflchir avec ReactSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/elMAnc8lH_I/default.jpg",
          "21:47",
          "2023-09-22",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vNLwY2UlbQg",
          "Apprendre React : Le hook useEffect",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacthookuseeffect1328Dans certains cas certains composants vont avoir besoin de transfrer des informations  des systmes externes  React Dans ce cas l on va pouvoir utiliser la fonction useEffectSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/vNLwY2UlbQg/default.jpg",
          "17:26",
          "2023-09-23",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "2Cs9H5kiNb4",
          "Apprendre React : Le hook useMemo",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacthookusememo1330Comme on la vu dans le chapitre parlant des changements dtat la fonction dun composant est appele  chaque nouveau rendu ce qui peut parfois amener  des problmes si certains lments sont complexes  calculerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/2Cs9H5kiNb4/default.jpg",
          "7:25",
          "2023-09-24",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bBy8EO5S_go",
          "Apprendre React : Le hook useRef",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacthookuseref1331Le hook useRef va permettre de rfrencer une valeur qui nest pas ncessaire au code du rendu et contrairement  ltat sa valeur pourra tre muteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bBy8EO5S_go/default.jpg",
          "16:46",
          "2023-09-25",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "yzvh4utcEN8",
          "Apprendre React : Créer un hook personnalisé",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacthookpersonnalise1329Lorsque lon travaille avec React on va avoir la possibilit de crer des hooks personnaliss en se basant sur les fonctions que lon a dj vu prcdemment Lobjectif est de limiter la rptition  lintrieur de nos composants en se crant des fonctions rutilisable Par convention une fonction qui utilise un hook deviendra un hook et on prfixera son nom par use pour les identifier plus facilement Aussi je vous propose quelques exemples pour pratiquerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/yzvh4utcEN8/default.jpg",
          "22:4",
          "2023-09-26",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "fhbBI_8s58s",
          "Apprendre React : Mémoisation et useCallback",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactmemousecallback1321Dans React un composant est rendu le code de sa fonction est excut  chaque fois que son tat change ou lorsque le composant parent est re rendu Cette caractristique peut mener  des problmatiques en terme de performances si certains composant ont une logique de rendu complexe Aussi certains composants ne changent pas de structure souvent et il est dommage de les rendre systmatiquement Pour viter ce problme l on va pouvoir utiliser la mmosation au niveau du composant grce  la fonction memoSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/fhbBI_8s58s/default.jpg",
          "19:16",
          "2023-09-27",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "XkkUkv-gXGY",
          "Apprendre React : Les portails",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactportals1336Les portails sont un moyen de tlporter un lment dans un endroit spcifique du DOM plutt que comme un enfant de notre lment courant Ils sont trs intressants pour les botes modales ou les systmes de notification qui doivent souvent se retrouver au premier niveau de la structure dune page Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/XkkUkv-gXGY/default.jpg",
          "4:21",
          "2023-09-28",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "POHZrI_WqXk",
          "Apprendre React : Capturer les erreurs avec ErrorBoundary",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacterrorboundary1337Dans le cadre dune application il arrive parfois que certains composants aient des erreurs de rendu Le comportement par dfaut de React est de faire remonter lerreur de fonction en fonction ce qui a pour consquence de faire planter lentiret de lapplication en cas de problme Il est cependant possible dutiliser le systme dErrorBoundary pour capturer les erreurs provenant de composants enfantsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/POHZrI_WqXk/default.jpg",
          "9:14",
          "2023-09-29",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ktms8hrJ-Tk",
          "Apprendre React : Chargement asynchrone via lazy()",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacttpblog2157lazy permet de charger un composant de manire asynchrone pour allger le chargement initial de la page Cela savrera utile pour des composants qui ne sont pas forcment visible souventSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ktms8hrJ-Tk/default.jpg",
          "5:38",
          "2023-10-01",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "SzcPyC5Nzdo",
          "Apprendre React : Le hook useReducer",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacthookuseReducer1333Le hook useReducer est un hook qui va permettre de reprsenter des changement dtat complexes  laide dun rducteur Le rducteur est une fonction qui reoit en paramtre ltat et laction  effectuer et qui doit renvoyer une nouvelle version de ltatSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/SzcPyC5Nzdo/default.jpg",
          "13:10",
          "2023-10-02",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "CeyqosSakOQ",
          "Apprendre React : Le hook useContext",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactcontextes1335On a vu dans un chapitre prcdent quon pouvait faire descendre ou remonter de linformation au travers des proprits de nos composant Dans le cadre dune application relle cette manire de transfrer linformation va savrer limitante avec souvent un grand nombre de composant  traverser Pour remdier  ce problme il est possible dutiliser un contexte qui va permettre dexposer un tat  un ensemble de composant enfant sans avoir  faire transiter linformation dans lensemble de larbreSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/CeyqosSakOQ/default.jpg",
          "18:28",
          "2023-10-03",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ZRw-xeaxn9c",
          "Apprendre React : Tester du code react",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreacttest2158Dans ce chapitre nous allons faire une petite apart sur les tests unitaires dans le cadre de React Comment tester les hooks et nos composants Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ZRw-xeaxn9c/default.jpg",
          "16:16",
          "2023-10-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uhc4Fj2vvu0",
          "Apprendre React : React router dom",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactrouterdom2159Lors de notre TP on avait mis en place une navigation base sur les hash dans lurl mais dans un cas concret on va plutt vouloir utiliser de jolies URLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uhc4Fj2vvu0/default.jpg",
          "24:12",
          "2023-10-05",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gX4N44sPNHY",
          "Apprendre React : Animer avec framer motion",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactframermotion2160Dans cette vido je vous propose de dcouvrir la librairie framermotionhttpswwwframercommotion qui va vous permettre de grer facilement et simplement des animations sur vos lmentsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/gX4N44sPNHY/default.jpg",
          "20:48",
          "2023-10-06",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sjW-t-Yul1c",
          "Authentifier avec des cookies sur React",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactauthcookie2151Abonnezvous  httpsbitlyGrafikartSubscribeJe vous propose aujourdhui de dcouvrir comment mettre en place un systme dauthentification au sein dune application React Notre objectif va tre la cration dun hook useAuth qui nous permettra de rcuprer ltat dauthentification de lutilisateur Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sjW-t-Yul1c/default.jpg",
          "22:54",
          "2023-07-06",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "FTPdeoLTHME",
          "React : React rendu côté serveur",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactrendussr1974Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment Reacthttpsfrreactjsorg peut tre utilis ct serveurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/FTPdeoLTHME/default.jpg",
          "22:56",
          "2021-12-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "EqiNee6K_S8",
          "Apprendre React : Propriétés de rendu",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsreactrenderprops2163Dans ce chapitre nous allons parler organisation de composant et voir comment rsoudre un problme classique  la personnalisation de composant enfantSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/EqiNee6K_S8/default.jpg",
          "11:",
          "2023-10-07",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PS10YJ-ld2A",
          "Apprendre React : Conclusion de la formation React",
          "Apprendre React",
          "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69",
          "Article  httpsgrafikartfrtutorielsconclusionreact2164Bravo  tous ceux qui seraient arriv jusqu la fin de cette formation  Jespre que le contenu vous a plu et que mes explications ont t suffisamment clairesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PS10YJ-ld2A/default.jpg",
          "4:9",
          "2023-10-20",
          "javascript"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
  "Découverte de Laravel 10",
  "php"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xSfZwqzs_OM",
          "La formation Laravel 10 est en ligne !",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Petite vido pour vous annoncer et prsenter la nouvelle formation Laravel version 10 httpsgrafikartfrformationslaravel",
          "https://i.ytimg.com/vi/xSfZwqzs_OM/default.jpg",
          "1:22",
          "2023-04-03",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ULs7m9srEj8",
          "Découverte de Laravel 10 : Introduction à Laravel",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsintroductionlaravel2112Abonnezvous  httpsbitlyGrafikartSubscribeBienvenue dans cette nouvelle formation consacre  la dcouverte et  lapprentissage du framework PHP Laravel Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ULs7m9srEj8/default.jpg",
          "2:55",
          "2023-04-03",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KoxeKRn2pCk",
          "Découverte de Laravel 10 : Structure des dossiers",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsstructurelaravel2113Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre je vous propose de dcouvrir ensemble comment installer Laravel et on va voir la structure des dossiers Petit rappel avant de commencer si jamais vous avez besoin dinformations sur le framework et son fonctionnement il ne faudra pas hsiter  aller sur la documentationhttpslaravelcomdocs10x Malheureusement elle nest disponible quen anglais mais elle est relativement complte et assez facile  comprendre Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/KoxeKRn2pCk/default.jpg",
          "7:1",
          "2023-04-03",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "AHBiKWKjPtA",
          "Découverte de Laravel 10 : Le Routing",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsroutinglaravel2114Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre o nous allons voir ensemble le fonctionnement du Routing qui va permettre  Laravel de faire correspondre  une URL particulire un bout de code spcifique Pour utiliser le systme de Routing on va se rendre dans le dossier routes et on va modifier le fichier webphp A lintrieur de ce fichierl on voit quil y a dj une route de dfinie Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/AHBiKWKjPtA/default.jpg",
          "13:28",
          "2023-04-03",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "554JPdbSC8s",
          "Découverte de Laravel 10 : L'ORM Eloquent",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsormeloquentlaravel2115Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre o nous allons dcouvrir ensemble comment communiquer avec une base de donnes avec Laravel et son ORM Eloquent Un ORM si vous navez jamais entendu parler cest le diminutif de Object Relational Mapping ce sont des classes qui vont nous permettre dinteragir avec les donnes en base de donnes et qui vont permettre de les reprsenter sous forme dobjet Vous allez le voir cest plutt simple  lutilisation une fois que lon a compris le principe Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/554JPdbSC8s/default.jpg",
          "22:2",
          "2023-04-04",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "v8YnPic7kPs",
          "Découverte de Laravel 10 : Les Controllers",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielscontrollerlaravel2116Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre o nous allons dcouvrir ensemble le principe des controllers dans Laravel Ce sont simplement des classes qui ont comme objectif de regrouper les fonctions qui vont contenir la logique de notre application Au niveau de Laravel je peux crer un contrleur grce  la commande php artisan makecontroller Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/v8YnPic7kPs/default.jpg",
          "5:18",
          "2023-04-05",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ZNETtfaZbVQ",
          "Découverte de Laravel 10 : Moteur de template Blade",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsbladetemplatelaravel2117Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir la partie vue dans la structure MVC Laravel dispose dun moteur de template qui va nous permettre de gnrer plus simplement des vues HTMLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ZNETtfaZbVQ/default.jpg",
          "18:11",
          "2023-04-06",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "NupXPnBRF58",
          "Découverte de Laravel 10 : Valider les données",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsvalidationlaravel2118Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre on va dcouvrir la partie validation avant dattaquer la gestion des formulaires Il est important de sassurer que les donnes envoyes  notre application correspondent  ce que lon attend Pour cela Laravel nous offre une classe Validator qui va nous permettre de grer cette opration Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/NupXPnBRF58/default.jpg",
          "13:1",
          "2023-04-07",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HB_A9qqEvQc",
          "Découverte de Laravel 10 : Model binding",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsvalidationlaravel2119Abonnezvous  httpsbitlyGrafikartSubscribeDans ce tutoriel nous allons apprendre  utiliser le modle binding dans Laravel qui permet de prercuprer les entits provenant de la base de donnes dans les actions de nos routes Cest un concept intressant qui peut vous faire gagner du tempsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/HB_A9qqEvQc/default.jpg",
          "5:36",
          "2023-04-08",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "_GeVGCOBF5Q",
          "Découverte de Laravel 10 : Debugbar et IDE Helper",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsdebughelperlaravel2120Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons voir deux outils facultatifs mais trs utiles pour travailler avec Laravel Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/_GeVGCOBF5Q/default.jpg",
          "6:13",
          "2023-04-08",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "l_v0ywlcVWY",
          "Découverte de Laravel 10 : Les formulaires",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsformlaravel2121Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons attaquer la partie formulaire de Laravel et on va voir comment faire en sorte de pouvoir soumettre des informations pour crer ou modifier un article Laravel ne fournit pas forcment doutils pour gnrer le code HTML des formulaire si on le compare  ce que propose Symfony mais fournit diffrentes choses qui vont nous simplifier la tche pour la gnration des vuesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/l_v0ywlcVWY/default.jpg",
          "27:46",
          "2023-04-08",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zy6ByXZ9DZ4",
          "Découverte de Laravel 10 : Les Relation",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsrelationeloquentlaravel2122Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre o nous allons revenir un peu sur les modles et on va parler des relations et comment les reprsenter avec lORM Eloquent Pour reprendre lexemple dun blog sur lequel on a des article on va simaginer mettre en place un systme de catgorie relation 1n et des tags relation nn Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zy6ByXZ9DZ4/default.jpg",
          "37:23",
          "2023-04-09",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xHrHjj8eFk0",
          "Découverte de Laravel 10 : Authentification",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsauthlaravel2123Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir la partie authentification sur Laravel qui va permettre aux utilisateur de se connecter et qui permettra aussi de limiter laccs  certaines partie du site aux seuls utilisateurs connectsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/xHrHjj8eFk0/default.jpg",
          "22:56",
          "2023-04-10",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "yjCr52u9NEQ",
          "Découverte de Laravel 10 : Système de fichiers",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsstoragelaravel2124Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons parler de lenvoie de fichiers et on va voir comment on peut grer la sauvegarde des fichiershttpslaravelcomdocs10xfilesystemmaincontent qui vont tre soumis par les utilisateursSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/yjCr52u9NEQ/default.jpg",
          "16:58",
          "2023-04-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vSdEqLPyTDk",
          "Découverte de Laravel 10 : TP : Agence immo, gestion des biens",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielstpimmobienslaravel2125Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a fait un petit tour dhorizon des principes de base de Laravel je vous propose de faire un petit peu de travaux pratiques pour asseoir nos comptences Il est important de pratiquer pour bien retenir les chosesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/vSdEqLPyTDk/default.jpg",
          "45:3",
          "2023-04-12",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3D91QoVMWos",
          "Découverte de Laravel 10 : TP : Agence immo, gestion des options",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielstpimmooptionslaravel2126Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons mis en place la gestion des biens on aimerait bien tre capable de rajouter des attributs spcifiques prsence dun ascenseur parking Pour mettre en place cette fonctionnalit on va utiliser la relation belongsToMany qui va nous permettre de rattacher a un bien particulier une ou plusieurs optionsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/3D91QoVMWos/default.jpg",
          "20:36",
          "2023-04-13",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QJA8JWrghak",
          "Découverte de Laravel 10 : TP : Agence immo, listing",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielstpimmofrontlaravel2127Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que ladministration est faite et que lon a la possibilit de rentrer des biens et les options associes nous allons passer  la partie visible du site Pour le moment on aura 3 pages Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/QJA8JWrghak/default.jpg",
          "37:55",
          "2023-04-14",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "XMgI1PfLi7s",
          "Découverte de Laravel 10 : TP : Agence immo, demande de contact",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielstpimmocontactlaravel2128Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons mettre en place le formulaire de contact qui va permettre aux utilisateurs de contacter lagence lorsquils sont intresss par les biens Ce chapitre sera loccasion de dcouvrir le systme de Mailablequi permet denvoyer des utilisateurs depuis LaravelSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/XMgI1PfLi7s/default.jpg",
          "17:13",
          "2023-04-15",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "GN_HIt-mNWE",
          "Découverte de Laravel 10 : TP : Agence immo, authentification",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielstpimmoauthlaravel2129Abonnezvous  httpsbitlyGrafikartSubscribeCe chapitre ne sera pas forcment le plus original parce que nous allons mettre en place le systme dauthentification pour limiter laccs  ladministration Pour le coup nous allons reproduire ce que lon avait dj vu dans le chapitre dauthentificationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/GN_HIt-mNWE/default.jpg",
          "12:16",
          "2023-04-16",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "aukyMKv-_ZE",
          "Découverte de Laravel 10 : Eloquent : Accesseurs et mutateurs",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielscastmutatorlaravel2131Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a fini la partie travaux pratiques et que les notions de base sont bien assimiles je vous propose de rentrer un peu plus en profondeur sur certains fonctionnements de Laravel On va commencer par revenir sur les models Eloquent avec les scope et les casts Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/aukyMKv-_ZE/default.jpg",
          "19:19",
          "2023-04-17",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LrkC98j4EnQ",
          "Découverte de Laravel 10 : Eloquent : Seed et Factory",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsseedfactorylaravel2132Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre on va dcouvrir le systme de Seeding et de Factory qui va vous permettre de pouvoir la preremplir votre base de donnes avec des donnes de test Cest trs pratique pendant la phase de dveloppement pour simuler une application fonctionnelle mais aussi pour la mise en place de tests fonctionnel que lon dcouvrira plus tardSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/LrkC98j4EnQ/default.jpg",
          "12:21",
          "2023-04-18",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "yzEXSOyED2U",
          "Découverte de Laravel 10 : Front-end avec Vite",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielsfrontvitelaravel2133Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant faire une petite apart pour dtailler lutilisation des assets frontend JavaScript  CSS dans le cadre de Laravel Lorsque lon commence  travailler sur du JavaScript on a trs rapidement besoin doutils comme des bundlers pour travailler efficacement Malheureusement ces outils sont souvent penss pour des sites web statiques et lintgration avec une application backend nest pas forcment videntSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/yzEXSOyED2U/default.jpg",
          "5:41",
          "2023-04-19",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YBrhfSsSU2Y",
          "Découverte de Laravel 10 : Les composants blade",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielscomponentbladelaravel2134Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons rexplorer la partie Blade et on va parler des composantshttpslaravelcomdocs10xbladecomponents qui sont une manire un peu diffrente de grer linclusion de morceaux de logique au niveau de nos vues Jusqu maintenant nous avons utilis la directive include qui permettait une simple inclusion avec une syntaxe PHP classique mais Laravel sest inspir de vuejs pour proposer une syntaxe alternative plus proche de lHTML et qui est plus lisibleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/YBrhfSsSU2Y/default.jpg",
          "9:49",
          "2023-04-20",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UbZ35yWnpgU",
          "Découverte de Laravel 10 : Laravel Breeze",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelbreeze2135Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre on va explorer  nouveau la partie authentification et nous allons dcouvrir le starter kit Laravel Breezehttpslaravelcomdocs10xstarterkitslaravelbreeze Ce starter kit va permettre de crer les actions et les vues correspondant  un systme de compte utilisateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UbZ35yWnpgU/default.jpg",
          "10:27",
          "2023-04-21",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hNpVrHLU_ro",
          "Découverte de Laravel 10 : Les Policy",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelpolicy2136Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons replonger sur la partie scurisation et on va voir le systme dautorisation de Laravelhttpslaravelcomdocs10xauthorization Jusqu maintenant nous avons simplement utilis le systme de middleware mais il est possible dutiliser des classes qui vont permettre de dfinir les permissions action par actionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/hNpVrHLU_ro/default.jpg",
          "13:24",
          "2023-04-22",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PvRvg0kD5OU",
          "Découverte de Laravel 10 : Le service provider",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelserviceprovider2137Abonnezvous  httpsbitlyGrafikartSubscribeLes service providershttpslaravelcomdocs10xprovidersmaincontent sont un composant essentiel dans linitialisation dune application boostrap Ils vont permettre denregistrer des services qui pourront ensuite tre appels dans le reste de lapplication au travers de linjection de dpendance ou en utilisant le conteneur directementSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PvRvg0kD5OU/default.jpg",
          "16:28",
          "2023-04-23",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uQDBEVY-ZeQ",
          "Découverte de Laravel 10 : Les évènements",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelevent2138Abonnezvous  httpsbitlyGrafikartSubscribeLes vnementshttpslaravelcomdocs10xevents vont permettre de mieux dcouper la logique de fonctionnement de lapplication en mettant des vnements lorsque certaines oprations sont faites Il sera ensuite possible dcouter lorsque ces vnements seront mis pour ajouter de la logique par dessusSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uQDBEVY-ZeQ/default.jpg",
          "17:36",
          "2023-04-24",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hE6hVihDxGM",
          "Découverte de Laravel 10 : Notifications",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelnotifications2139Abonnezvous  httpsbitlyGrafikartSubscribeLes Notificationshttpslaravelcomdocs10xnotificationsintroduction permettent de crer une alerte que lon va pouvoir envoyer sur diffrents canaux mail notification slack sms Comme pour les autres lments il est possible de crer une notification  laide de artisanSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/hE6hVihDxGM/default.jpg",
          "14:42",
          "2023-04-25",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "mKjWkiFbvgs",
          "Découverte de Laravel 10 : Internationalisation",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelinternationalisation2140Abonnezvous  httpsbitlyGrafikartSubscribeLaravel gre nativement linternationalisation dun site Lorsque vous avez besoin dafficher une chane de caractre vous pouvez utiliser la mthode  Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/mKjWkiFbvgs/default.jpg",
          "9:57",
          "2023-04-26",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "B9_qyeq30zA",
          "Découverte de Laravel 10 : Les files d'attentes",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelqueue2141Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment utiliser le systme de files dattentesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/B9_qyeq30zA/default.jpg",
          "17:21",
          "2023-04-27",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "_BIwiOWtelE",
          "Découverte de Laravel 10 : API Resource",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaravelresourceapi2142Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre on va voquer la partie API de Laravel et on va voir comment grer la srialisation de nos modles en JSON Par dfaut lorsque lon retourne directement un modle dans un controller Laravel va le convertir en tableau puis en JSON en exposant lensemble des attributs du modle Dans un cas rel on veut pouvoir slectionner les champs  exposer via notre API et cest l que le systme de Resourcehttpslaravelcomdocs10xeloquentresources intervientSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/_BIwiOWtelE/default.jpg",
          "19:14",
          "2023-04-28",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "_MJmU-wRwpI",
          "Découverte de Laravel 10 : Tester avec Laravel",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielslaraveltest2143Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre je vous propose de parler des tests et on va voir comment Laravel nous permet de tester une application Comme dhabitude Laravel a pens les choses en amont et intgre dj les outils ncessaires aux tests La premire chose quon peut remarquer cest que par dfaut on a dj un fichier phpunitxml qui permet de dfinir la configuration pour lancer les tests via loutil phpunit De la mme manire on a la possibilit avec la commande artisan de lancer les tests Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/_MJmU-wRwpI/default.jpg",
          "34:6",
          "2023-04-29",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pyPOcX05-_o",
          "Héberger Laravel sur un mutualisé O2Switch (SSH & CPanel)",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielshebergero2switchssh2148Dcouvrir O2Switch  httpsoswytro2switchytAbonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons voir comment hberger notre application Laravel sur un hbergement mutualis via SSH en utilisant  O2Switch0000 Introduction0121 Configuration SSH0410 Mise en place du dpt git0634 Clonage des sources0735 Configuration de lhbergement0900 Automatiser avec MakeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/pyPOcX05-_o/default.jpg",
          "20:47",
          "2023-05-12",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uEpcqSTDWG8",
          "Héberger Laravel sur un mutualisé Infomaniak (SSH)",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielshebergerlaravelmutualise2146Abonnezvous  httpsbitlyGrafikartSubscribe0000 Introduction0150 Gnration de la clef SSH0545 Mise en place du dpt git0719 Clonage des sources0839 Configuration de lhbergement1416 Automatiser avec MakeDans ce nouveau chapitre nous allons voir comment hberger notre application Laravel sur un hbergement mutualis qui supporte SSH Ici je vais utiliser loffre dhbergement Infomaniak mais vous pouvez reproduire ce que lon va faire sur nimporte quel hbergeur qui vous laisse un accs ssh sur le serveurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uEpcqSTDWG8/default.jpg",
          "23:57",
          "2023-05-12",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "x43tekdzP8Y",
          "Héberger Laravel sur un mutualisé O2Switch (FTP & CPanel)",
          "Découverte de Laravel 10",
          "PLjwdMgw5TTLXz1GRhKxSWYyDHwVW-gqrm",
          "Article  httpsgrafikartfrtutorielshebergero2switchftp2147Dcouvrir O2Switch  httpsoswytro2switchytAbonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons voir comment hberger notre application Laravel sur un hbergement mutualis O2Switch en utilisant le protocole FTP Lhbergeur O2Switch utilise linterface dadministration CPanel donc vous pouvez aussi suivre sur un hbergeur qui propose des fonctionnalits similairesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/x43tekdzP8Y/default.jpg",
          "14:45",
          "2023-05-12",
          "php"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
  "Apprendre le JavaScript",
  "javascript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "asToYAq0F-I",
          "La formation JavaScript 2022 est en ligne !",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Petite vido pour vous annoncer et prsenter la nouvelle formation JavaScript dition 2022 httpsgrafikartfrformationsformationjavascript",
          "https://i.ytimg.com/vi/asToYAq0F-I/default.jpg",
          "2:1",
          "2022-10-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gUYfRJ-v_1Y",
          "Apprendre le JavaScript : Introduction à la formation",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsintroduction2054Abonnezvous  httpsbitlyGrafikartSubscribeAvant dattaquer cette formation nous allons faire le point sur ce quest le langage JavaScript et son apprentissageSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/gUYfRJ-v_1Y/default.jpg",
          "4:53",
          "2022-10-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "GU8kxJ3P67I",
          "Apprendre le JavaScript : Les variables",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsvariables2055Abonnezvous  httpsbitlyGrafikartSubscribeLes variables permettent de garder en mmoire une valeur lors de lxcution dun script Elles sont essentielles au bon fonctionnement de nos algorithmesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/GU8kxJ3P67I/default.jpg",
          "27:52",
          "2022-10-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zwLmRotDdu8",
          "Apprendre le JavaScript : Les conditions",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsconditions2056Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon souhaite crire des algorithmes Il est important dtre capable de tester si une valeur est bien celle attendue On va donc dcouvrir maintenant les conditionsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zwLmRotDdu8/default.jpg",
          "31:37",
          "2022-10-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "qYuvcK8QU4c",
          "Apprendre le JavaScript : La portée des variables",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsporteevariable2057Abonnezvous  httpsbitlyGrafikartSubscribeNous nallons rien apprendre de nouveau aujourdhui mais nous allons faire le point sur une notion importante  La porte des variables scope en anglaisSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/qYuvcK8QU4c/default.jpg",
          "4:14",
          "2022-10-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "kLdQAsrcyvk",
          "Apprendre le JavaScript : Les boucles",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsboucles2058Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre nous allons parler des boucles Les boucles permettent de rpter une certaine logique suivant une condition prcise Il existe plusieurs manires de crer des boucles  Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/kLdQAsrcyvk/default.jpg",
          "18:39",
          "2022-10-05",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "EvHAiskwHvE",
          "Apprendre le JavaScript : Les fonctions",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsfonctions2059Abonnezvous  httpsbitlyGrafikartSubscribeEcrire le code comme il arrive est suffisant pour un algorithme simple mais on va tre trs rapidement amen  rpter une mme logique plusieurs fois Pour remdier  ce problme il est possible dcrire des fonctionsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/EvHAiskwHvE/default.jpg",
          "38:3",
          "2022-10-06",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wVuJTS8aQyA",
          "Apprendre le JavaScript : Pratiquons les fonctions",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsfonctions2060Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de faire une petite pause dans notre apprentissage et de pratiquer un peu avec des nouveaux exemples pour vrifier si les lments que lon a vu sont comprisSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wVuJTS8aQyA/default.jpg",
          "37:55",
          "2022-10-07",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "2HAPViIAYjc",
          "Apprendre le JavaScript : Les classes",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsclass2061Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons faire le point sur le fonctionnement interne des objets en JavaScript et on va parler de la notion de prototypehttpsdevelopermozillaorgfrdocsWebJavaScriptHC3A9ritageetchaC3AEnedeprototypesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/2HAPViIAYjc/default.jpg",
          "30:6",
          "2022-10-08",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "6tC4tv9MlkI",
          "Apprendre le JavaScript : Pratiquons les class",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsclasstp2062Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons pratiquer un peu les classes avec quelques exercicesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/6tC4tv9MlkI/default.jpg",
          "21:15",
          "2022-10-09",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OSHPfiuDbqM",
          "Apprendre le JavaScript : Les erreurs",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsclasstp2063Abonnezvous  httpsbitlyGrafikartSubscribeParfois nos fonction vont recevoir des paramtre qui ne conviennent pas et il faudra tre capable de renvoyer une erreur quand cela arrive Il est possible de renvoyer une erreur  laide de loprateur throwSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OSHPfiuDbqM/default.jpg",
          "12:4",
          "2022-10-10",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ZocfMM0qofA",
          "Apprendre le JavaScript : Les fonctions usuelles",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsfunctionsutiles2064Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons passer en revues les fonctions utiles que vous tes le plus susceptible dutiliserSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ZocfMM0qofA/default.jpg",
          "26:39",
          "2022-10-11",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Qvr6Nh7rtAI",
          "Apprendre le JavaScript : Le sucre syntaxique",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielssyntaxicsugar2065Abonnezvous  httpsbitlyGrafikartSubscribeEn JavaScript il existe pas mal de syntaxe alternative qui va nous permettre dcrire du code plus simplement Cette simplification est appel sucre syntaxiqueSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Qvr6Nh7rtAI/default.jpg",
          "20:42",
          "2022-10-12",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "kwcFfskBaag",
          "Apprendre le JavaScript : Les timers",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascripttimer2066Abonnezvous  httpsbitlyGrafikartSubscribeSi on souhaite xcuter du code aprs une dure prcise ou  un intervalle rgulier on aura la possibilit dutiliser les fonctions setTimeouthttpsdevelopermozillaorgenUSdocsWebAPIsetTimeout et setIntervalhttpsdevelopermozillaorgenUSdocsWebAPIsetIntervalSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/kwcFfskBaag/default.jpg",
          "14:",
          "2022-10-13",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "05mKXSdkCJg",
          "Apprendre le JavaScript : Promise",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptpromise2067Abonnezvous  httpsbitlyGrafikartSubscribeLa nature asynchrone du JavaScript pose souvent des problmes en terme dorganisation avec une surutilisation des callbacksSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/05mKXSdkCJg/default.jpg",
          "27:33",
          "2022-10-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "z9pcgJX1DdY",
          "Apprendre le JavaScript : Appel HTTP avec fetch()",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptpromise2068Abonnezvous  httpsbitlyGrafikartSubscribeLa mthode fetch permet de faire des appels HTTP afin de rcuprer de rcuprer des ressources sur le rseau et utilise le systme de promesse que lon a vu prcdemment Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/z9pcgJX1DdY/default.jpg",
          "18:11",
          "2022-10-15",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DJewHNOFqD0",
          "Apprendre le JavaScript : Les modules",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptimportmodules2069Abonnezvous  httpsbitlyGrafikartSubscribeCrer tout le code dans un seul et mme fichier nest pas forcment prenne sur le long terme Le systme de modulehttpsdevelopermozillaorgenUSdocsWebJavaScriptReferenceStatementsimport va permettre de morceler le code en plusieurs fichier afin de mieux organiser le codeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/DJewHNOFqD0/default.jpg",
          "11:32",
          "2022-10-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "9U-RgCzN9mI",
          "Apprendre le JavaScript : Commentaires et JSDoc",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptjsdoc2073Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons nous pencher sur les commentaire et comment les rendre efficace Les commentaires permettent damliorer la comprhension du code et doivent tre un rflexe ds lors que lon crit des fonctions complexesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/9U-RgCzN9mI/default.jpg",
          "15:36",
          "2022-10-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "AD28PddTwEE",
          "Apprendre le JavaScript : L'objet Date",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptdate2078Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment utiliser lobjet pour reprsenter une date en JavaScript Cet objet peut se construire de diffrentes faons Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/AD28PddTwEE/default.jpg",
          "21:17",
          "2022-10-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "O41U3fOOhvA",
          "Apprendre le JavaScript : Que faire maintenant ? Front-end ou Back-end ?",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptorientation2092Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre on fait le point sur lorientation car 2 choix soffrent maintenant  vousSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/O41U3fOOhvA/default.jpg",
          "3:20",
          "2022-10-21",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Kh0drIcQ2UI",
          "Apprendre le JavaScript : JavaScript côté navigateur",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptbrowser2070Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant voir comment crire du JavaScript ct navigateur Le navigateur ne change pas notre manire dcrire le code mais donne accs  de nouveaux objets qui permettent dintragir avec lutilisateur ou le navigateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Kh0drIcQ2UI/default.jpg",
          "11:19",
          "2022-10-17",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sXwPfnsKGiE",
          "JavaScript côté navigateur : Manipuler le DOM",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptdom2071Abonnezvous  httpsbitlyGrafikartSubscribeEn plus de lobjet window on a aussi accs  un objet documenthttpsdevelopermozillaorgfrdocsWebAPIDocument qui permet de rcuprer des lments HTML et de les manipulerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sXwPfnsKGiE/default.jpg",
          "39:25",
          "2022-10-18",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Rm8kxBf5Eoc",
          "JavaScript côté navigateur : Pratiquons avec une TodoList",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascripttodolist2074Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de pratiquer ce que lon a vu depuis le dbut de cette formation au travers dun exemple concret  la cration dune liste de tche  faireSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Rm8kxBf5Eoc/default.jpg",
          "42:49",
          "2022-10-20",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "55EXq7ZjL4Q",
          "JavaScript côté navigateur : Les écouteurs d'évènements",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascripteventlistener2072Abonnezvous  httpsbitlyGrafikartSubscribeJusqu maintenant nous avons cr des scripts qui se droulent ds le chargement de la page La pluspart du temps on attendra un vnements pour effectuer une action Par exemple nous allons dclencher une action lors dun clic sur un lment particulier Pour faire cela on va avoir besoin dutiliser un couteur dvnement grce  la mthode addEventListener Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/55EXq7ZjL4Q/default.jpg",
          "31:44",
          "2022-10-19",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "TicxcEDiP3U",
          "JavaScript côté navigateur : Les templates",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascripttemplates2076Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voquer le systme de templatehttpsdevelopermozillaorgfrdocsWebHTMLElementtemplate qui va nous permettre de stocker du contenu HTML dans une page web sans lafficher Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/TicxcEDiP3U/default.jpg",
          "10:19",
          "2022-10-21",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "7e4EMDOeiYE",
          "JavaScript côté navigateur : Évènements personnalisés",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptcustomevent2075Abonnezvous  httpsbitlyGrafikartSubscribeEn plus des vnements natif il est possible dmettre des vnements personnalis sur des lments HTML Ces vnements pourront ensuite tre cout avec la mthode addEventListener Ce systme dvnement personnalis est trs pratique pour simplifier la logique de notre application Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/7e4EMDOeiYE/default.jpg",
          "11:5",
          "2022-10-22",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PmrHg7q5raw",
          "JavaScript côté navigateur : Local Storage",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptlocalstorage2077Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment utiliser le localStorage qui permet de sauvegarder des informations dans la mmoire du navigateur afin de persister les information mme si lutilisateur quitte la page ou ferme son navigateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PmrHg7q5raw/default.jpg",
          "8:57",
          "2022-10-23",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "9AdBFTM2lVM",
          "JavaScript côté navigateur : Manipuler les cookies",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptcookies2079Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment manipuler les cookies depuis notre code JavaScript Les cookies permettent de stocker des informations sur le navigateur de lutilisateur et de transfrer ces informations lors de requtes HTTP au travers de len tte cookie Ce systme permet dintroduire une notion de persistence entre les plusieurs requte et savre trs util pour un systme de connexion utilisateur par exemple Certains cookies ceux qui ne sont pas en httpOnly peuvent tre vu et manipuler par le JavaScriptSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/9AdBFTM2lVM/default.jpg",
          "16:30",
          "2022-10-24",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rcShQM00mIM",
          "JavaScript côté navigateur : Inspecter son code JavaScript",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsinspecteurcodejavascript126Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons parler dun outil indispensable lorsque lon travaille sur du JavaScript  Linspecteur du navigateur Cette inspecteur vous permet daccder  diffrents outils qui vous permettront de mieux comprendre votre codeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/rcShQM00mIM/default.jpg",
          "16:25",
          "2022-10-25",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "p2UW7Wptlow",
          "JavaScript côté navigateur : Fonctions usuelles du DOM",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsfunctionsdom2089Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir quelques fonctions utiles que lon retrouvera assez souvent dans du code JavaScript ct navigateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/p2UW7Wptlow/default.jpg",
          "23:39",
          "2022-10-26",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "N3l-kV4nczo",
          "JavaScript côté navigateur : IntersectionObserver",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsintersectionobserver804Abonnezvous  httpsbitlyGrafikartSubscribeDans ce nouveau chapitre je vous propose de dcouvrir  LIntersectionObserverhttpswicggithubioIntersectionObserver Comme son nom lindique cet objet permet de dtecter lorsquun lment entre en collision avec un lment parent Il pourra servir notamment pour observer lorsquun lment entre ou sort de la vue et offre de meilleur performances quune coute sur le scroll et le resize Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/N3l-kV4nczo/default.jpg",
          "11:7",
          "2022-10-27",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3Hrhuz8-w2M",
          "Apprendre le JavaScript : TP ScrollSpy",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsscrollspyjspage491Abonnezvous  httpsbitlyGrafikartSubscribeDans ce tutoriel nous allons voir comment couter le scroll dune page afin dactiver llment du menu correspondant Cest une technique indispensable qui est trs utilis sur les sites one page mais aussi pour crer des sommaires dynamiques Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/3Hrhuz8-w2M/default.jpg",
          "24:36",
          "2019-08-26",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "__3lzaZS3yc",
          "JavaScript côté navigateur : TP : Système de commentaire",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascripttpcomment2091Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir un cas concret dutilisation de JavaScript pour crer un systme de commentaires qui se charge ds lors que lon descend suffisamment dans une page On crera aussi un systme de pagination infinie permettant de charger de nouveaux commentaire lorsque lon descendra dans la page Et on finira pas la gestion de lajout de nouveaux commentaire  laide dun formulaire HTMLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/__3lzaZS3yc/default.jpg",
          "43:34",
          "2022-10-28",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "1hHVvuShsGo",
          "Apprendre le JavaScript : TP, Créer un Carousel (1/4)",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielscarrouseljavascript87Abonnezvous  httpsbitlyGrafikartSubscribeJe vous propose aujourdhui de dcouvrir comment crer un carrousel en utilisant du JavaScript On nutilisera pas ici de librairies particulires mais on crira notre code en utilisant la syntaxe ES6 afin de faciliter lorganisation du code si vous souhaitez supporter des navigateurs qui ne comprennent pas cette syntaxe libre  vous dutiliser un outil pour convertir le code Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/1hHVvuShsGo/default.jpg",
          "1:17",
          "2018-03-06",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WXaDeTmZTgk",
          "Apprendre le JavaScript : TP, Créer un Carousel, Pagination (2/4)",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielscarrouseljavascriptpagination989Abonnezvous  httpsbitlyGrafikartSubscribeNous allons dans ce chapitre rajouter une pagination  notre systme de CarouselhttpswwwgrafikartfrformationsdebuterjavascriptcarrouseljavascriptSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/WXaDeTmZTgk/default.jpg",
          "12:43",
          "2018-03-07",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "eBiNsThWR70",
          "Apprendre le JavaScript : TP, Créer un Carousel, Défilement infini (3/4)",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielscarrouseljavascriptinfini990Abonnezvous  httpsbitlyGrafikartSubscribeNous allons dans ce chapitre rajouter un systme de dfilement infini  notre systme de CarouselhttpswwwgrafikartfrformationsdebuterjavascriptcarrouseljavascriptSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/eBiNsThWR70/default.jpg",
          "30:2",
          "2018-03-08",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jAYyeRjQJdQ",
          "Apprendre le JavaScript : TP, Créer un Carousel, Gestion du tactile (4/4)",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielscarrouseljavascripttouch991Abonnezvous  httpsbitlyGrafikartSubscribeNous allons dans ce chapitre rajouter la gestion des crans tactiles  notre systme de CarouselhttpswwwgrafikartfrformationsdebuterjavascriptcarrouseljavascriptSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/jAYyeRjQJdQ/default.jpg",
          "28:17",
          "2018-03-09",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "o5UAtZUx7l0",
          "Apprendre le JavaScript : JavaScript côté serveur",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsjavascriptservernodejs2080Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a fait le tour des bases du langage JavaScript je vous propose de voir comment on va pouvoir utiliser ce langage ct serveur pour pouvoir intragir avec le systme criture  lecture de fichiers cration dun serveur webSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/o5UAtZUx7l0/default.jpg",
          "9:47",
          "2022-10-29",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bunBbhY4da4",
          "JavaScript côté serveur : Installer NodeJS sur Windows",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsnodejsinstallwindows2081Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment installer NodeJS sur un systme Windows en utlisant linstalleur officiel Si vous savez utilisez le WSL vous pouvez aussi choisir de linstaller dans votre sous systme en suivant le process pour Linux  MacSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bunBbhY4da4/default.jpg",
          "3:55",
          "2022-10-29",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "g01qBs1CpAc",
          "JavaScript côté serveur : Installer NodeJS avec Volta",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsnodejsinstallvolta2082Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment installer NodeJS sur Linux et MacOS avec Voltahttpsdocsvoltash Cet outil va vous permettre de grer plusieurs version de NodeJS et de pouvoir verrouiller une version spcifique  votre projetSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/g01qBs1CpAc/default.jpg",
          "4:9",
          "2022-10-29",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cT6b6_XzFmI",
          "JavaScript côté serveur : Lire et écrire des fichiers",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsnodejsfilesystem2083Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre consacr  NodeJS nous allons voir comment lire et crire des fichiersSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/cT6b6_XzFmI/default.jpg",
          "31:31",
          "2022-10-29",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "O2v_ghJlVAA",
          "JavaScript côté serveur : Les streams",
          "Apprendre le JavaScript",
          "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV",
          "Article  httpsgrafikartfrtutorielsnodejsstreams2084Abonnezvous  httpsbitlyGrafikartSubscribeLes streams permettent de grer des flux de donnes avec un systme de lecture ou dcriture progressive Si par exemple on tente de copier un fichier sans utiliser la mthode copyFile on serait tent dcrire le code suivantSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/O2v_ghJlVAA/default.jpg",
          "8:36",
          "2022-10-30",
          "javascript"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLXXpRlzDZq7d8iS6YXgnslt",
  "Apprendre SQL de A à Z",
  "sql"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jZZDfl6Jq2o",
          "Créer un Puissance 4 en ligne : Explications et choix technologiques",
          "Apprendre SQL de A à Z",
          "PLjwdMgw5TTLXXpRlzDZq7d8iS6YXgnslt",
          "Article  httpsgrafikartfrtutorielspuissance4technos2032Abonnezvous  httpsbitlyGrafikartSubscribeLobjectif du projet est de crer un jeu de puissance 4 connect ou 2 joueurs peuvent se dfierSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/jZZDfl6Jq2o/default.jpg",
          "8:11",
          "2022-07-13",
          "sql"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "V2TaV_jHEh0",
          "Créer un Puissance 4 en ligne : Machine à états",
          "Apprendre SQL de A à Z",
          "PLjwdMgw5TTLXXpRlzDZq7d8iS6YXgnslt",
          "Article  httpsgrafikartfrtutorielspuissance4machineetats2033Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons crer notre machine  tats qui nous permettra de piloter le jeu On utilisera vitest pour tester le fonctionnement de cette machine0000 Dfinition de la machine0100 Premire guard2230 Premire action2520 Cration des tests fonctionnels3024 Phase de lobby3320 Phase de jeuSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/V2TaV_jHEh0/default.jpg",
          "1:21:30",
          "2022-07-13",
          "sql"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vibswHh0IqM",
          "Créer un Puissance 4 en ligne : Composants React",
          "Apprendre SQL de A à Z",
          "PLjwdMgw5TTLXXpRlzDZq7d8iS6YXgnslt",
          "Article  httpsgrafikartfrtutorielspuissance4react2034Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons allons crer les composants qui nous serviront plus tard dans notre jeu Le principal composant qui va demander du travail sera le composant  qui permettra de reprsenter notre jeu et de dposer des pices0153 Slection de pseudo0807 Slection de la couleur1751 Grille de jeu4455 Ecran de victoire4817 Peaufinage du styleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/vibswHh0IqM/default.jpg",
          "53:54",
          "2022-07-13",
          "sql"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UAf37Ph_AB8",
          "Créer un Puissance 4 en ligne : Contexte React",
          "Apprendre SQL de A à Z",
          "PLjwdMgw5TTLXXpRlzDZq7d8iS6YXgnslt",
          "Article  httpsgrafikartfrtutorielspuissance4contexte2035Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nos composants sont prt nous allons pouvoir les brancher avec la logique de notre machine  tats Pour cela nous allons crer un hook qui permettra de pouvoir intragir plus simplement avec notre systme On se reposera le systme de contexte de React en offrant la signature suivante afin de pouvoir accder nimporte o aux mthodes ncessairesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UAf37Ph_AB8/default.jpg",
          "36:7",
          "2022-07-13",
          "sql"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
  "Apprendre TypeScript",
  "typescript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "iHKE_4KeNWQ",
          "Apprendre et maitriser SQL : Qu'est ce que le SQL ?",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlformationintroduction1980Abonnezvous  httpsbitlyGrafikartSubscribeSQL pour Structured Query Language est un langage qui permet dinterroger une base de donnes relationnelle afin de pouvoir modifier ou rcuprer des informations Les bases de donnes relationnelles permettent de sauvegarder les informations sous forme de tableau  2 dimensionsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/iHKE_4KeNWQ/default.jpg",
          "4:27",
          "2022-01-31",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HM8ihP0MzE8",
          "Apprendre et maitriser SQL : Démarrer avec SQLite sur VSCode",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlitevscode1981Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment configurer le systme de gestion de base de donnes SGBD SQLitehttpssqliteorg pour lutiliser au sein de lditeur Visual Studio Code Cet diteur nous permettra davoir la coloration syntaxique des requtes SQL et aussi de pouvoir crer plusieurs requtes que lon pourra xcuter les unes  la suite des autresSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/HM8ihP0MzE8/default.jpg",
          "4:4",
          "2022-01-31",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wGqVjwNpBxY",
          "Apprendre et maitriser SQL : Démarrer avec SQLite dans le terminal",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqliteshell1982Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment configurer le systme de gestion de base de donnes SGBD SQLitehttpssqliteorg pour lutiliser directement dans le terminal Cette base de donnes simple dutilisation nous permettra de commencer facilement notre apprentissage du langage SQL Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wGqVjwNpBxY/default.jpg",
          "4:16",
          "2022-01-31",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "awnTOWQckpo",
          "Apprendre et maitriser SQL : Démarrer avec SQLite sur TablePlus",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlitetableplus1983Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment configurer le systme de gestion de base de donnes SGBD SQLitehttpssqliteorg et comment utiliser le logiciel Table Plushttpswwwtableplusio pour taper les requtes que lon va apprendre tout au long de cette formationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/awnTOWQckpo/default.jpg",
          "3:24",
          "2022-01-31",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "67pOwWxhXP4",
          "Apprendre et maitriser SQL : Créer sa première table",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlcreatetable1984Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir nos premires requtes SQL et on va commencer par les requtes DDL Data Definition Language qui permettent de dfinir la structure des donnesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/67pOwWxhXP4/default.jpg",
          "19:19",
          "2022-01-31",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YgyB6ZRbX9w",
          "Apprendre et maitriser SQL : SELECT, UPDATE & INSERT",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlselectinsertupdate1985Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nos tables sont cres on va voir les requtes qui vont permettre dinsrer des donnes de les modifier ou de les supprimer Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/YgyB6ZRbX9w/default.jpg",
          "16:40",
          "2022-02-01",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vYpiLn3JXiA",
          "Apprendre et maitriser SQL : Clés primaires et index",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlprimarykeyindex1986Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon cre des enregistrements dans notre table il est important de pouvoir les identifier de manire unique pour les conditions de rcupration des modifications et des suppressions En effet si on utilise le champ titre il peut tre amen  changer dans le futur Il nous faut donc une valeur qui sera invariante tout au long de la vie de notre enregistrement Pour remplir ce besoin on pourra se baser sur les cls primairesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/vYpiLn3JXiA/default.jpg",
          "12:58",
          "2022-02-02",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "dJq514eor7s",
          "Apprendre et maitriser SQL : La valeur NULL",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlnullvalue1987Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir la valeur NULLhttpswwwsqliteorgnullshtml Cette valeur un peu spciale permet de reprsenter labsence de valeur pour une colonne donne Son comportement peut varier dune base de donnes  lautreSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/dJq514eor7s/default.jpg",
          "7:33",
          "2022-02-03",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "0vJoRP6_5tI",
          "Apprendre et maitriser SQL : Clés étrangères et jointures",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqljointable1988Abonnezvous  httpsbitlyGrafikartSubscribeJusqu maintenant nous navons utiliser quune table pour exprimenter avec nos premires requtes SQL Dans la ralit on aura souvent besoin dutiliser plusieurs tables pour reprsenter nos donnes que lon pourra ensuite lier les unes aux autres grce  des cls trangresSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/0vJoRP6_5tI/default.jpg",
          "22:57",
          "2022-02-04",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OxJo051TMr8",
          "Apprendre et maitriser SQL : Schématiser avec les MCD & MLD",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlmcdmld1989Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a vu quil tait possible de reprsenter des donnes complexes au travers de plusieurs table  laide de liaison il est temps de faire une pause pour parler de modlisation Cette tape permet de rflchir en amont  la structure de nos donnes et de concevoir plus facilement une base de donnes par la suite Cette schmatisation suit des normes qui permettront une meilleur comprhension avec les autres dveloppeurs sur le projet Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OxJo051TMr8/default.jpg",
          "19:28",
          "2022-02-05",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uaxczOUFCJo",
          "Apprendre et maitriser SQL : TP Conversion du MLD",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqltpmcd1990Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons mettre en pratique les requtes SQL que lon a vu depuis le dbut de cette formation en suivant le MCD que lon a cr dans le chapitre prcdentSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uaxczOUFCJo/default.jpg",
          "33:43",
          "2022-02-06",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "NXZEWKftBM0",
          "Apprendre et maitriser SQL : Agréger les données",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlaggregatecount1991Abonnezvous  httpsbitlyGrafikartSubscribeNous allons voir dans ce chapitre comment agrger les donnes afin dobtenir des informations  partir de plusieurs lignes Pour cela on pourra se reposer sur des fonctions dagrgation comme COUNT SUM ou AVG Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/NXZEWKftBM0/default.jpg",
          "17:11",
          "2022-02-07",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OL9T7pI-m84",
          "Apprendre et maitriser SQL : Order et Limit",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlorderlimit1992Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment organiser et limiter le nombre de rsultats que lon obtientSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OL9T7pI-m84/default.jpg",
          "7:35",
          "2022-02-08",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "NkdBYPodiT4",
          "Apprendre et maitriser SQL : Requêtes imbriquées",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlsubquery1993Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment utiliser les requtes imbriques Cela permet dutiliser le rsultat dune requte  diffrents niveauxSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/NkdBYPodiT4/default.jpg",
          "11:26",
          "2022-02-09",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zRCJ_jLyv-4",
          "Apprendre et maitriser SQL : Les transactions",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlsubquery1994Abonnezvous  httpsbitlyGrafikartSubscribeLes transactions sont une mcanique qui permet de grouper lxcution de plusieurs requtes afin de pouvoir revenir en arrire en cas de problmes On commencera par activer la transactionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zRCJ_jLyv-4/default.jpg",
          "6:38",
          "2022-02-10",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "0pe3XzbjdxA",
          "Apprendre et maitriser SQL : Les vues",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlview1995Abonnezvous  httpsbitlyGrafikartSubscribeLes vues permettent de crer une table virtuelles  partir du rsultat dune requte SQL Les vues seront nomms ce qui permettra dy faire rfrence plus facilementSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/0pe3XzbjdxA/default.jpg",
          "6:17",
          "2022-02-11",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "aw1Q47vSaCc",
          "Apprendre et maitriser SQL : Les triggers",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqltrigger1996Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons parler des TRIGGER qui permettent de rajouter de la logique lorsque certaines opration sont effectues sur la base de donnes Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/aw1Q47vSaCc/default.jpg",
          "13:51",
          "2022-02-12",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "mXg0T_LAP0I",
          "Apprendre et maitriser SQL : Requête récursive",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqlrecursion2008Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment crire des requtes pour rcuprer des donnes rcursives recursive common table expressions Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/mXg0T_LAP0I/default.jpg",
          "11:56",
          "2022-08-16",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "qeqpmge-qZA",
          "Apprendre et maitriser SQL : Fonction de fenêtrage",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielswindowfunctionsql2045Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir le fentrage qui permet dutiliser les fonctions daggrgations sur plusieurs lignes Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/qeqpmge-qZA/default.jpg",
          "12:12",
          "2022-09-14",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "o5TNp-4OKnw",
          "Apprendre et maitriser SQL : Interlude, que faire maintenant ?",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielssqltrigger1999Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a vu les bases du langage SQL je vous propose de faire une pause pour rflchir  ce que vous pouvez faire pour la suiteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/o5TNp-4OKnw/default.jpg",
          "2:47",
          "2022-02-21",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WI0UfIFBOXw",
          "Apprendre et maitriser SQL : Introduction à MySQL",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlintro2000Abonnezvous  httpsbitlyGrafikartSubscribeDepuis le dbut de cette formation nous avons utilis SQLite Mme si cest une bonne base de donnes pour commencer ce nest pas forcment la base de donnes que vous allez utiliser pour vos premiers projets pro Je vous propose aujourdhui de dcouvrir rapidement les particularit de MySQL un systme de gestion de base de donnes que vous allez trs souvent retrouver surtout si vous travaillez avec des hbergements mutualissSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/WI0UfIFBOXw/default.jpg",
          "4:27",
          "2022-02-21",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "1oxLmS8MiEo",
          "Installer de MySQL ou MariaDB sur Windows",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlwindows2001Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir comment installer la base de donnes MySQLhttpswwwmysqlcom et MariaDBhttpsmariadbcom sur WindowsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/1oxLmS8MiEo/default.jpg",
          "12:10",
          "2022-02-21",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "o2x_pZ1dk1c",
          "Utiliser MySQL avec Visual Studio Code",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlwindows2002Abonnezvous  httpsbitlyGrafikartSubscribeAfin de pratiquer MySQL nous utiliser Visual Studio Code Pour intragir avec notre base de donnes nous allons installer lextension MySQLhttpsmarketplacevisualstudiocomitemsitemNamecweijanvscodemysqlclient2 qui nous permettra de lister nos bases de donnes mais aussi dintragir via des commandes SQL directement dans lditeurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/o2x_pZ1dk1c/default.jpg",
          "2:25",
          "2022-02-21",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "kbevrZZpu1w",
          "Découverte de MySQL : Requêtes  de bases",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlcreatetable2003Abonnezvous  httpsbitlyGrafikartSubscribePour ce premier chapitre nous allons voir les particularit de MySQL par rapport  SQLite sur les commandes de bases cration de base de donnes et de tableSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/kbevrZZpu1w/default.jpg",
          "14:32",
          "2022-02-21",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "qYVQhN64Lv8",
          "Découverte de MySQL : Données temporelles",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqldatetime2004Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons parler des types temporelshttpsdevmysqlcomdocrefman80endateandtimetypeshtml qui permettent de grer des dates et des temps sur MySQL Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/qYVQhN64Lv8/default.jpg",
          "13:36",
          "2022-02-21",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uSpi5CNqouM",
          "Découverte de MySQL : Données spatiales",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlspatialtype2005Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons parler des types spatiauxhttpsdevmysqlcomdocrefman80enspatialtypeshtml qui permettent de grer des lments gomtriques Ce type est assez spcifique et vous ne serez pas forcment amen  lutiliser trs souvent Malgr tout cela peut rpondre  des problmatiques prcises comme la sauvegarde de position gographiqueSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uSpi5CNqouM/default.jpg",
          "7:38",
          "2022-02-22",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OSuYt848-x4",
          "Découverte de MySQL : Données JSON",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqljson2006Abonnezvous  httpsbitlyGrafikartSubscribeMySQL support le type JSONhttpsdevmysqlcomdocrefman57enjsonhtml depuis la version 578 2015 et permet de chercher ensuite un champs dans le document JSON Malheureusement ct MariaDB le type JSON est un alias pour un LONGTEXT et ne permettra pas lutilisation que nous allons dcrireSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OSuYt848-x4/default.jpg",
          "10:3",
          "2022-02-23",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pazmwFz5uAs",
          "Découverte de MySQL : Recherche FullText",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlfulltext2009Abonnezvous  httpsbitlyGrafikartSubscribeLes recherches FullTexthttpsdevmysqlcomdocrefman80eninnodbfulltextindexhtml permettent deffectuer une recherche dans la base de donnes de manire plus avance que loprateur LIKE et permettent aussi dorganiser les rsultats en fonction de la pertinenceSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/pazmwFz5uAs/default.jpg",
          "12:",
          "2022-02-24",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VlF-XG1vVPU",
          "Apprendre et maitriser SQL : Gestion des permissions",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlgrant2007Abonnezvous  httpsbitlyGrafikartSubscribeUn avantage de MySQL est sa capacit  pouvoir grer facilement les niveau daccs aux base de donnes et aux tables grce  un systme dadministrationhttpsdevmysqlcomdocrefman57enaccountmanagementstatementshtmlSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/VlF-XG1vVPU/default.jpg",
          "6:57",
          "2022-02-25",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "5gJ0Xxa6390",
          "Découverte de MySQL : Procédures stockées",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqlprocedure2008Abonnezvous  httpsbitlyGrafikartSubscribeMySQL permet dutiliser des procdure stockeshttpsdevmysqlcomdocrefman57encreateprocedurehtml lorsque lon souhaite sauvegarder une ou plusieurs sries dopration Ces procdures peuvent aussi prendre des paramtres en entre comme en sortieSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/5gJ0Xxa6390/default.jpg",
          "11:11",
          "2022-02-26",
          "typescript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "O5GADAyuOPo",
          "Découverte de MySQL : Sauvegarde ses bases avec mysqldump",
          "Apprendre TypeScript",
          "PLjwdMgw5TTLX1tQ1qDNHTsy_lrkCt4VW3",
          "Article  httpsgrafikartfrtutorielsmysqldump2010Abonnezvous  httpsbitlyGrafikartSubscribeLa commande mysqldumphttpsdevmysqlcomdocrefman80enmysqldumphtml vous permettra deffectuer une sauvegarde de votre base de donnes au format SQLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/O5GADAyuOPo/default.jpg",
          "8:36",
          "2022-02-27",
          "typescript"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
  "Déboguer son code JavaScript",
  "javascript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ffCIANfx_-0",
          "Apprendre TypeScript : Introduction",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptintroduction1949Abonnezvous  httpsbitlyGrafikartSubscribeBienvenue dans cette nouvelle formation consacre  lapprentissage du TypeScript Lobjectif de cette formation est de vous apprendre les bases du langage mais aussi de partager avec vous des petits trucs et astuces que jai pu apprendre au fil de mon utilisationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ffCIANfx_-0/default.jpg",
          "11:53",
          "2021-10-05",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uOuulpBs8dQ",
          "Apprendre TypeScript : Installation",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptinstallation1950Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment installer TypeScript et lutiliser pour compiler nos premier fichiers TypeScript Nous allons aussi voir lutilisation du fichier tsconfigjsonhttpswwwtypescriptlangorgtsconfig qui permettra de configurer la compilation et le fonctionnement de TypeScriptSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uOuulpBs8dQ/default.jpg",
          "10:24",
          "2021-10-05",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PtsTS2S8hZM",
          "Apprendre TypeScript : Syntaxe de base",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptsyntax1951Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que TypeScript est install nous allons parler de la syntaxe de base du langage et des types principaux Vous pouvez aussi vous rfrer  la documentationhttpswwwtypescriptlangorgdocshandbook2everydaytypeshtml si vous avez besoin de revenir sur un des types voqus dans cette vidoSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PtsTS2S8hZM/default.jpg",
          "13:31",
          "2021-10-06",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wxZ9mv5kbgo",
          "Apprendre TypeScript : Type Narrowing",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptnarrowing1952Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voquer le Narrowinghttpswwwtypescriptlangorgdocshandbook2narrowinghtml qui est le processus qui permet via des condition de rduire les types possible Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wxZ9mv5kbgo/default.jpg",
          "8:19",
          "2021-10-07",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "dB_LbNMgVAA",
          "Apprendre TypeScript : Alias & Generics",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptgeneric1953Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment il est possible dviter la rptition dans la dclaration de type via les aliasSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/dB_LbNMgVAA/default.jpg",
          "12:34",
          "2021-10-08",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "MlwFhfdEVwo",
          "Apprendre TypeScript : Les classes en TypeScript",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptclass1954Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir ce que TypeScript apporte au niveau de la syntaxe des classeshttpswwwtypescriptlangorgdocshandbook2classeshtml La principale particularit est la possibilit de dfinir la visibilit des propritshttpswwwtypescriptlangorgdocshandbook2classeshtmlmembervisibility en choisissant entre public priv et protg des concepts qui vous seront surement familiers si vous avez lhabitude de travailler avec des langages orients objetsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/MlwFhfdEVwo/default.jpg",
          "25:19",
          "2021-10-09",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sFNQeh5Oc08",
          "Apprendre TypeScript : Type ou Interface ?",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescripttypevsinterface1955Abonnezvous  httpsbitlyGrafikartSubscribeSi vous avez regard un peu la documentation vous avez du voir des exemples alterner entre les types et les interfaces Mme si dans beaucoup de cas les 2 peuvent tre utiliss de manire interchangeable il y a des diffrences qui vous feront choisir lun ou lautreSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sFNQeh5Oc08/default.jpg",
          "7:12",
          "2021-10-10",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "yxCOyCqy2Jw",
          "Apprendre TypeScript : Tuple & Enum",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescripttupleenum1958Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons continuer notre exploration des types et dcouvrir les types unknown Tuple et EnumSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/yxCOyCqy2Jw/default.jpg",
          "17:22",
          "2021-10-11",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "_nmlVZU_hvI",
          "Apprendre TypeScript : Les fichiers de déclaration",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptdeclaration1956Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voquer les fichiers de dclarations Ces fichiers peuvent tre gnrs  partir de votre code TypeScript pour aider ceux qui souhaiteraient utiliser votre librairie et ils peuvent aussi tre utiliss pour typer des lments que TypeScript ne pourrait par connatreSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/_nmlVZU_hvI/default.jpg",
          "12:29",
          "2021-10-12",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Hg9rPl7Z4zA",
          "Apprendre TypeScript : Types utilitaires",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescripttypeutilitaire1957Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment on peut utiliser TypeScript dans des cas plus complexes avec des signature de fonctions plus complexes Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Hg9rPl7Z4zA/default.jpg",
          "19:26",
          "2021-10-13",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wr38dKznQ3Q",
          "Apprendre TypeScript : L'opérateur satisfies",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielssatisfiestypescript2103Abonnezvous  httpsbitlyGrafikartSubscribeLoprateur satisfieshttpswwwtypescriptlangorgdocshandbookreleasenotestypescript49htmlthesatisfiesoperator ajout dans la version 49 de TypeScript permet de sassurer quune expression corresponde  un type tout en conservant un type spcifique  lexpression Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wr38dKznQ3Q/default.jpg",
          "4:19",
          "2023-01-27",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "N5cqN4BRirs",
          "Apprendre TypeScript : Type Challenge pas si facile",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescripttypechallenges1959Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons nous entraner  crer des types utilitaires en utilisant le dpt typechallengeshttpsgithubcomtypechallengestypechallengesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/N5cqN4BRirs/default.jpg",
          "27:14",
          "2021-10-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BxpF2vB4_iA",
          "Apprendre TypeScript : Challenge : AlpineJS",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescripttypechallenges1960Abonnezvous  httpsbitlyGrafikartSubscribePour continuer notre entranement sur les types je vous propose de dcouvrir la cration dun fichier de dclaration dans un cas rel avec le typage dAlpineJShttpsgrafikartfrtutorielsalpinejs1944 Lobjectif est de faire fonctionner la signature suivante Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/BxpF2vB4_iA/default.jpg",
          "9:31",
          "2021-10-15",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "s8Xs2T_plIA",
          "Apprendre TypeScript : Challenge : Forme conditionnel",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptconditionalshape1963Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir un cas qui donne souvent du fil  retordre quand on dbute un objet dont la forme dpend dune de ses propritsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/s8Xs2T_plIA/default.jpg",
          "10:3",
          "2021-10-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Ubo9Rhjf0ks",
          "Apprendre TypeScript : Les décorateurs",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptdecorateur1961Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir le principe des dcorateurshttpswwwtypescriptlangorgdocshandbookdecoratorshtml qui permettent de rajouter des comportements  une classe ou un objetSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Ubo9Rhjf0ks/default.jpg",
          "11:51",
          "2021-10-17",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3ruUu-7VPLM",
          "Apprendre TypeScript : Valider à l'exécution",
          "Déboguer son code JavaScript",
          "PLjwdMgw5TTLWWXgsHpfCLHJ1Oq4YnE08e",
          "Article  httpsgrafikartfrtutorielstypescriptvalidation1962Abonnezvous  httpsbitlyGrafikartSubscribeTypeScript ne permet que de faire de lanalyse statique et ne pourra en aucun cas vous prmunir derreurs lorsque les types reus  lexcution ne correspondent pas au types annoncs lors de lcriture du code Cela savrera particulirement problmatique lorsque lon va travailler avec des systmes externes comme des APIs Pour remdier  ce problme il va falloir vrifier que les objets reus correspondent  ce que lon attend  lexcution et on se retrouve du coup  doubler le travail dclaration des types  validation des schmas de donnes  lexcution Heureusement des librairies comme zodhttpsgithubcomcolinhackszod permettent de gnrer les types  partir des schmas et vous permettra de vous assurer de la structure dun objet  la compilation et  lexcution avec un seul formatSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/3ruUu-7VPLM/default.jpg",
          "7:56",
          "2021-10-18",
          "javascript"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
  "Apprendre React 16 (Déprécié)",
  "javascript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Ap6l56bLQtQ",
          "Découverte d'API Platform : Qu'est ce qu'API Platform",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformintro1902Abonnezvous  httpsbitlyGrafikartSubscribeAvant de nous lancer dans le code je vous propose de dcouvrir ensemble ce quest API Platform et les problmatiques quil rsoudSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Ap6l56bLQtQ/default.jpg",
          "4:54",
          "2021-04-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "43JOlgEGN5A",
          "Découverte d'API Platform : Premiers pas",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformdecouverte1903Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre je vous propose de faire nos premiers pas avec API Platform et de dcouvrir son fonctionnement  travers la cration de nos premiers points dentreSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/43JOlgEGN5A/default.jpg",
          "21:9",
          "2021-04-16",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PLBYYe435qo",
          "Découverte d'API Platform : La sérialisation",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformserialisation1904Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment grer les donnes  exposer dans notre API et comment grer les groupes de normalisation  dnormalisationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PLBYYe435qo/default.jpg",
          "16:34",
          "2021-04-17",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UhdPiMJWNsw",
          "Découverte d'API Platform : La validation",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformvalidation1905Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon cre des points dentre qui permettent de crer ou modifier des information on veut sassurer de la validit des donnes avant dinsrer les informations en base Nous allons voir ici comment utiliser le systme de validationhttpsapiplatformcomdocsadminvalidation afin de vrifier les donnes qui rentrent dans notre systmeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UhdPiMJWNsw/default.jpg",
          "11:49",
          "2021-04-18",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Ge2pix7A7vM",
          "Découverte d'API Platform : Pagination et Filtres",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformpaginationfiltres1906Abonnezvous  httpsbitlyGrafikartSubscribeNous allons revenir sur les opration lies aux collection de donnes et voir comment paramtrer la paginationhttpsapiplatformcomdocscorepagination et grer les filtreshttpsapiplatformcomdocscorefilters qui permettent dorganiser ou de filtrer les donnes  renvoyerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Ge2pix7A7vM/default.jpg",
          "14:41",
          "2021-04-19",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "IPmgvfS07LM",
          "Découverte d'API Platform : Fonctionnement d'API Platform",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformcore1907Abonnezvous  httpsbitlyGrafikartSubscribeAvant daller plus loin je pense quil est important de faire le point sur le fonctionnement interne dAPI Platform afin de comprendre les diffrentes tapes qui se droulent lors du traitement dune requte Une meilleur comprhension des rouages du framework nous permettra de connaitre plus facilement le type de classe  utiliser pour tendre les fonctionnalits de notre APISoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/IPmgvfS07LM/default.jpg",
          "10:15",
          "2021-04-20",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BhXFvTqByeQ",
          "Découverte d'API Platform : Opération personnalisé",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformcustomoperation1908Abonnezvous  httpsbitlyGrafikartSubscribePar dfaut API Platform est capable de gnrer les diffrentes routes qui correspondent  un CRUD classique Cependant on a parfois besoin de crer des points dentre spcifiques et nous allons devoir crer de nouvelles oprationshttpsapiplatformcomdocscorecontrollersSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/BhXFvTqByeQ/default.jpg",
          "26:26",
          "2021-04-20",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "-eQ8LTMI720",
          "Découverte d'API Platform : Améliorer la documentation OpenAPI",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformopenapi1909Abonnezvous  httpsbitlyGrafikartSubscribeAPI Platform est capable de gnrer une grande partie de la documentation mais dans certains cas cela nest pas suffisant Si on dcide de crer une nouvelle opration il est important de documenter le point dentre afin que les personnes qui consomment notre API puissent lutiliser Nous allons voir ici comment tendre la documentation qui est gnre par loutil  laide dun OpenApiFactoryhttpsapiplatformcomdocscoreopenapioverridingtheopenapispecificationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/-eQ8LTMI720/default.jpg",
          "14:14",
          "2021-04-21",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "MM4QWX2nxZQ",
          "Découverte d'API Platform : Créer un DataProvider",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformdataprovider1910Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon a explor le fonctionnement interne dAPI Platform nous avons vu quil utilise un systme de DataProvider bas sur lORM Doctrine pour rcuprer les informations provenant de la base de donnes Parfois nous allons avoir besoin de crer une API qui permet de contrler des informations qui ne proviennent pas dune base de donnes Aussi pour ces cas il faudra crer un DataProvider personnalis afin de piloter la rcupration des donnes lies  notre APISoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/MM4QWX2nxZQ/default.jpg",
          "18:21",
          "2021-04-22",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LVY93--p7zw",
          "Découverte d'API Platform : Créer un DataPersister",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformdatapersister1911Abonnezvous  httpsbitlyGrafikartSubscribeLes DataPersisterhttpsapiplatformcomdocscoredatapersisters vont permettre de grer la persistence des resources lors des actions POST PUT ou PATCHSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/LVY93--p7zw/default.jpg",
          "17:59",
          "2021-04-23",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Wyh8rd_BrAc",
          "Découverte d'API Platform : PUT vs PATCH",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformputpatch1912Abonnezvous  httpsbitlyGrafikartSubscribeLes mthodes PUThttpsdevelopermozillaorgenUSdocsWebHTTPMethodsPUT et PATCHhttpsdevelopermozillaorgenUSdocsWebHTTPMethodsPATCH ont des significations diffrentes Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Wyh8rd_BrAc/default.jpg",
          "4:9",
          "2021-04-24",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bewgb9buIfI",
          "Découverte d'API Platform : Authentification JSON",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformauthjson1913Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant attaquer la partie authentification et nous allons commencer pour cela par lauthentification base sur un point dentre apilogin qui recevra les identifiants de lutilisateur et qui dfinira un Cookie utilisateur Cette approche fonctionne si votre API et votre application cliente fonctionnent sur le mme nom de domaineSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bewgb9buIfI/default.jpg",
          "26:56",
          "2021-04-25",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "-o3dDgYOqvs",
          "Découverte d'API Platform : Authentification Form HTML",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformauthform1914Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir un driv de la mthode prcdente en se basant sur une authentification dtache de lAPI via un simple formulaire HTML Le principe est de laisser lutilisateur sauthentifier via le site classique et de se contenter dutiliser le cookie lors des appels APISoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/-o3dDgYOqvs/default.jpg",
          "10:46",
          "2021-04-26",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "XPXrNI-fux4",
          "Découverte d'API Platform : Authentification JWT",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformauthjwt1915Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment grer une authentification base sur des tokens JWTtutorielsjsonwebtokenpresentation958 Ce systme nest pas spcifique  API Platform mais se repose sur le bundle LexikJWTAuthenticationBundlehttpsgithubcomlexikLexikJWTAuthenticationBundle qui permet dajouter la gestion des tokens JWT au composant Security de SymfonySoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/XPXrNI-fux4/default.jpg",
          "24:19",
          "2021-04-27",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "fLMspLal4Wk",
          "Découverte d'API Platform : Authentification par clef d'API",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformauthapikey1917Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir la cration dun systme dauthentification personnalis qui permettra aux utilisateurs dutiliser une clef dAPI pour utiliser lAPI Lobjectif est ici de mieux comprendre le systme dauthenticator et de UserProvider de SymfonySoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/fLMspLal4Wk/default.jpg",
          "10:28",
          "2021-04-29",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "G5rsq2Gc6qM",
          "Découverte d'API Platform : Rafraichir les tokens JWT",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformauthjwtrefresh1916Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon sait utiliser les token JWT je vous propose de dcouvrir comment rafrachir ses token grce  un systme de refreshToken et le bundle JWTRefreshTokenBundlehttpsgithubcommarkitosgvJWTRefreshTokenBundleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/G5rsq2Gc6qM/default.jpg",
          "11:39",
          "2021-04-30",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "R4qKu1d0J9Q",
          "Découverte d'API Platform : Limiter par utilisateur via DoctrineExtension",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformdoctrineextension1918Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a vu comment mettre en place le systme dauthentification on veut pouvoir filtrer les contenus pour nafficher que les articles appartenant  lutilisateur Mme si les filtres peuvent sembler tre une solution viable la meilleure approche reste lutilisation dun DoctrineExtensionhttpsapiplatformcomdocscoreextensions qui va permettre de filtrer lensemble des rsultats pour tous les types de collectionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/R4qKu1d0J9Q/default.jpg",
          "15:14",
          "2021-04-30",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Z6BjWD08jJ8",
          "Découverte d'API Platform : Injecter l'utilisateur via un Denormalizer",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformdenormalizer1919Abonnezvous  httpsbitlyGrafikartSubscribeEn plus de pouvoir filtrer les contenus en fonction de lutilisateur on souhaite aussi que lutilisateur soit automatiquement associ aux contenus que lon cre Pour cela nous allons dcouvrir comment crer un denormalizer personnalisSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Z6BjWD08jJ8/default.jpg",
          "12:23",
          "2021-05-01",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "eO1txnnqhU4",
          "Découverte d'API Platform : Limiter les champs exposés",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformnormalizer1920Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir comment grer les groupes de serialization dynamiquement afin de limiter les champs renvoys par lAPI en fonction des permissions de lutilisateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/eO1txnnqhU4/default.jpg",
          "25:5",
          "2021-05-02",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "fhdD7K5nZSA",
          "Tutoriel API Platform : Envoi de fichiers",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformfileupload1921Abonnezvous  httpsbitlyGrafikartSubscribeLenvoi de fichier nest jamais une chose simple lorsque lon communique avec une API car il est difficile de choisir le mode de communication  utiliser Dans ce chapitre nous allons voir comment grer lenvoi de fichier  laide du format multipart et du bundle VichUploaderBundlehttpsgithubcomdustin10VichUploaderBundleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/fhdD7K5nZSA/default.jpg",
          "19:42",
          "2021-05-03",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "K8iVhRvjPoM",
          "Tutoriel API Platform : Désérialiser du multipart",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformmultipart1922Abonnezvous  httpsbitlyGrafikartSubscribePour grer lenvoi des fichiers on a vu quAPI platform ntait pas capable de dsrialiser les requtes au format multipartformdata nativement Aussi nous allons voir dans ce chapitre comment tendre APIPlatform en dcorant le DeserializeListenerhttpsgithubcomapiplatformcoreblobmainsrcEventListenerDeserializeListenerphpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/K8iVhRvjPoM/default.jpg",
          "22:42",
          "2021-05-04",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QD782XTZlFw",
          "Tutoriel API Platform : Support du GraphQL",
          "Apprendre React 16 (Déprécié)",
          "PLjwdMgw5TTLWom67YfZuha-1iYzIirwJR",
          "Article  httpsgrafikartfrtutorielsapiplatformmultipart1924Abonnezvous  httpsbitlyGrafikartSubscribeComme voqu au dbut de cette formation APIPlatform a la capacit de gnrer une API GraphQLhttpsapiplatformcomdocscoregraphql Les requtes et les mutations sont gres sparemment de lAPI Rest mais les fonctionnement son similaires Resolver Security et groupes de serialisationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/QD782XTZlFw/default.jpg",
          "30:26",
          "2021-05-05",
          "APIPlatform,GraphQL,PHP,Symfony"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLW-KLG7B6Ohe0eEwLAhfm7_",
  "Wordpress avancé",
  "wordpress"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "upfsiT_A33I",
          "Déboguer son code JavaScript : RegeneratorRuntime is not defined",
          "Wordpress avancé",
          "PLjwdMgw5TTLW-KLG7B6Ohe0eEwLAhfm7_",
          "Article  httpsgrafikartfrtutorielsjavascriptregeneratorruntime1349Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir une erreur classique lorsque lon travaille avec un bundler et babel Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/upfsiT_A33I/default.jpg",
          "3:29",
          "2020-07-10",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hXRt-Pb_Z04",
          "Déboguer son code JavaScript : Cannot read property of null",
          "Wordpress avancé",
          "PLjwdMgw5TTLW-KLG7B6Ohe0eEwLAhfm7_",
          "Article  httpsgrafikartfrtutorielsjavascriptcannotreadproperty1348Abonnezvous  httpsbitlyGrafikartSubscribeAujourdhui je vous propose de vous aider  dboguer une erreur classique en javascriptSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/hXRt-Pb_Z04/default.jpg",
          "10:48",
          "2020-07-09",
          "wordpress"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
  "Créer un thème WordPress",
  "wordpress"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "SMgQlTSoXf0",
          "React : Chapitre 1, Introduction",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsintroduction1312Abonnezvous  httpsbitlyGrafikartSubscribeSi on se fie  la dfinition offerte par la documentation React est une bibliothque JavaScript pour crer des interfaces utilisateurs Cette dfinition est un peu gnrique et ne nous aide pas forcment  comprendre ce quest rellement React Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/SMgQlTSoXf0/default.jpg",
          "6:6",
          "2020-06-10",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "V8G0ILBE-Ok",
          "React : Chapitre 2, Nos premiers pas avec React",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielspremierpasreact1313Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre je vous propose de faire vos premier pas avec React Nous allons voir comment on peut commencer  lutiliser et on va dcouvrir le fonctionnement de react et reactdom On va voir ce quest le VirtualDom ReactcreateElement et lavantage de cette approche par rapport  un simple innerHTMLSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/V8G0ILBE-Ok/default.jpg",
          "12:1",
          "2020-06-10",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "SFFZ0hpIk5Q",
          "React : Chapitre 3, La syntaxe JSX",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielssyntaxejsxreact1314Abonnezvous  httpsbitlyGrafikartSubscribePour dcouvrir React nous avons utiliser la fonction ReactcreateElement mais cela produit un code qui est assez verbeux et assez peu lisible Pour simplifier la cration dlments React il est possible dutiliser une syntaxe spcifique  La syntaxe JSXSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/SFFZ0hpIk5Q/default.jpg",
          "13:38",
          "2020-06-10",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "dSarn49JYQo",
          "React : Chapitre 4, Notre premier composant",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielscomposantreact1315Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons crer notre premier composant React Les composants permettent de crer des lments rutilisables qui vont englober leur propre logique et leur propre tat Nous allons aussi dcouvrir les mthodes lies au cycle de vie dun composantSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/dSarn49JYQo/default.jpg",
          "20:46",
          "2020-06-11",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "AkEtv7J4kA8",
          "React : Chapitre 5, Les évènements",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielseventsreact1316Abonnezvous  httpsbitlyGrafikartSubscribePour le moment on a vu comment crer des lments et les afficher Dans ce chapitre nous allons voir comment grer les interactions avec lutilisateurs clic sur un lment par exemple et comment modifier ltat en fonction de ces interactions Nous allons aussi dcouvrir les SyntheticEventhttpsreactjsorgdocseventshtmlSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/AkEtv7J4kA8/default.jpg",
          "14:47",
          "2020-06-12",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "oYuybfkwGx4",
          "React : Chapitre 6, Les formulaires",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsformulairesreact1317Abonnezvous  httpsbitlyGrafikartSubscribeLes champs dans le DOM sont capables de retenir leur propre tat un champs garde la valeur entre par lutilisateur dans sa proprit value Il est cependant possible de demander  React de contrler un champs en spcifiant la valeur et le comportement  adopter lors dun changement Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/oYuybfkwGx4/default.jpg",
          "29:36",
          "2020-06-13",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "m-W1zFR-PVI",
          "React : Chapitre 7, TP : Convertisseur Celsius / Fahrenheit",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielstpreactconvertisseur1318Abonnezvous  httpsbitlyGrafikartSubscribeJe vous propose de mettre en pause notre apprentissage et dessayer un petit TP pour mettre en pratique ce que lon a vu jusqu maintenant Dans un premier temps on crera un systme dans lequel on entre une temprature en celsius et qui devra dire si leau bout ou nonSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/m-W1zFR-PVI/default.jpg",
          "27:5",
          "2020-06-14",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "O4DEVXdgokY",
          "React : Chapitre 8, La composition",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielscompositionreactcomposant1319Abonnezvous  httpsbitlyGrafikartSubscribeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/O4DEVXdgokY/default.jpg",
          "6:10",
          "2020-06-15",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bapLrqtXEkA",
          "React : Chapitre 9, TP : Liste de produit",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielstpreactlisteproduit1320Abonnezvous  httpsbitlyGrafikartSubscribeDans ce petit TP nous allons essayer de voir comment rflchir et dcouper une interface en Composant Lorsque lon travaille avec React il est indispensable de russir ce dcoupage car il est dterminant pour la conception de nimporte quelle interfaceSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bapLrqtXEkA/default.jpg",
          "32:9",
          "2020-06-16",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cJ5IUmGGxdY",
          "React : Chapitre 10, Composant pur",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactpurecomponent1321Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir limpact que peut avoir un rendu et comment optimiser les composants qui contiennent une logique complexe Lorsquun changement dtat est opr sur un composant sa fonction render est appele et lensemble des sous composant sont rendu  nouveau Il est cependant possible de mmoriser le rendu dun lment afin dviter les rendu conscutif si ses proprits et son tat na pas chang depuis le dernier rendu Il existe 2 mthodes pour mmoiser un composant Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/cJ5IUmGGxdY/default.jpg",
          "19:13",
          "2020-06-17",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QhM0KW2txSc",
          "React : Chapitre 11, Les refs et le DOM",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactrefdom1322Abonnezvous  httpsbitlyGrafikartSubscribeComme on la vu depuis le dbut de cette formation React offre une couche dabstraction qui permet de ne plus se soucier du DOM Cependant on a parfois besoin dinteragir avec le DOM et on a besoin dune mcanique pour rcuprer un lment dans le DOM Le systme de refs va permettre de rcuprer un lment DOM dans notre composantSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/QhM0KW2txSc/default.jpg",
          "13:27",
          "2020-06-18",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "SuWfqA1VaXM",
          "React : Chapitre 12, React Dev Tool",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactdevtool1324Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir comment dboguer une application  laide de loutil React Dev Tool Cette extension est disponible sur FirefoxhttpsaddonsmozillaorgenUSfirefoxaddonreactdevtools et Chromehttpschromegooglecomwebstoredetailreactdevelopertoolsfmkadmapgofadopljbjfkapdkoienihi et vous permettra danalyser ltat de vos composant ainsi que la structure de votre arbre dlmentsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/SuWfqA1VaXM/default.jpg",
          "8:56",
          "2020-06-19",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "kx_hJExdqzw",
          "React : Chapitre 13, Create React App",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielscreatereactapp1325Abonnezvous  httpsbitlyGrafikartSubscribeJusqu maintenant nous avons travaill avec React en utilisant les scripts depuis un CDN et en utilisant babel en mode standalone Mme si cette mthode est suffisante pour dcouvrir la librairie ce nest pas la mthode que lon utilisera dans un cas concret On utilisera un bundler qui sera capable de grer limport de React depuis un gestionnaire de paquet et qui sera aussi capable de convertir la syntaxe JSX La configuration dun bundler nest pas forcment une tche aise et React offre un template qui va vous permettre davoir un environnement de dveloppement pour React clef en main  Create React ApphttpsgithubcomfacebookcreatereactappSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/kx_hJExdqzw/default.jpg",
          "14:50",
          "2020-06-20",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "stN8pf-23Wo",
          "React : Chapitre 14, React avec Parcel",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactparcel1326Abonnezvous  httpsbitlyGrafikartSubscribeParcel est un bundler que jai dj prsent dans une autre vidohttpswwwgrafikartfrtutorielsparcelbundler985 qui offre comme avantage principal une configuration minimale Nous allons dcouvrir dans cette vido comment il est possible dutiliser Parcel pour commencer un projet React rapidement avec un minimum de configuration Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/stN8pf-23Wo/default.jpg",
          "10:18",
          "2020-06-20",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "t6IAQn4d5mU",
          "React : Chapitre 15, Le hook useState",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookuseState1327Abonnezvous  httpsbitlyGrafikartSubscribeDans les chapitres prcdent on a vu quil tait possible de dfinir un composant  partir dune simple fonctionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/t6IAQn4d5mU/default.jpg",
          "17:4",
          "2020-06-21",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OC9swIBpD_U",
          "React : Chapitre 16, Le hook useEffect",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookuseeffect1328Abonnezvous  httpsbitlyGrafikartSubscribeLe hook useEffect est un hook qui va permettre de dclencher une fonction de manire asynchrone lorsque ltat du composant change Cela peut permettre dappliquer des effets de bords ou peut permettre de reproduire la logique que lon mettait auparavant dans les mthodes componentDidMount et componentWillUnmountSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OC9swIBpD_U/default.jpg",
          "9:35",
          "2020-06-22",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ysDDC80hD2Y",
          "React : Chapitre 17, Créer un hook personnalisé",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookpersonnalise1329Abonnezvous  httpsbitlyGrafikartSubscribeAvant de continuer notre exploration des hooks je vous propose de mettre en pratique les 2 hooks que nous avons vu prcdemment  travers quelques petits exemples concret Cela vous permettra de mieux comprendre lintrt que peut avoir cette nouvelle APISoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ysDDC80hD2Y/default.jpg",
          "25:42",
          "2020-06-23",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wNX5iRhczHM",
          "React : Chapitre 18, Les hook useMemo & useCallback",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookusememo1330Abonnezvous  httpsbitlyGrafikartSubscribeUn des problmes que lon rencontre avec les composants sous formes de fonctions est limpossibilit de sauvegarder une mmoire car on na pas de notion dinstance au sein dune fonction Aussi lors dun changement dtat le code entier de votre fonction est relanc pour crer le nouveau rendu est cela peut tre inefficace dans certaines situations useMemo va permettre de crer une valeur qui va tre mmoseSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wNX5iRhczHM/default.jpg",
          "9:39",
          "2020-06-24",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "A7mSiXePpW4",
          "React : Chapitre 19, Le hook useRef",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookuseref1331Abonnezvous  httpsbitlyGrafikartSubscribeNous avons dj voqu le principe des ref lorsque lon a vu la mthode ReactcreateRef useRef est lquivalent sous forme de hook pour cette mthode lSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/A7mSiXePpW4/default.jpg",
          "4:14",
          "2020-06-25",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "eBsJ3NZnS_w",
          "React : Chapitre 20, Le hook useLayoutEffect",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookuselayouteffect1332Abonnezvous  httpsbitlyGrafikartSubscribeuseLayoutEffect est un hook qui a un comportement similaire  useEffect mais pour lequel la fonction de rappel est appele de manire synchrone avant laffichage des modifications au niveau de lutilisateur Ce hook sera principalement utilis pour faire des manipulation au niveau du DOM avant le rendu finalSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/eBsJ3NZnS_w/default.jpg",
          "5:19",
          "2020-06-26",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UlSulQxCh7I",
          "React : Chapitre 21, Le hook useReducer",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthookuseReducer1333Abonnezvous  httpsbitlyGrafikartSubscribeuseReducer est un hook qui permettra de dfinir un tat en laccompagnant dune fonction rductrice qui permettra de dcrire les diffrentes mutations possiblesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UlSulQxCh7I/default.jpg",
          "9:21",
          "2020-06-27",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DFelPhMUr0c",
          "React : Chapitre 22, Récapitulatif des hooks",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacthooksrecap1334Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons faire un rcapitulatif des diffrents hooks que lon a vu jusqu maintenant et de leur rle dans le cadre des composants sous forme de fonctionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/DFelPhMUr0c/default.jpg",
          "4:39",
          "2020-06-29",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WayVzizZRLk",
          "React : Chapitre 23, Les contextes",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactcontextes1335Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment faire communiquer des composants qui sont  diffrents niveau dans la structure de notre application grce au systme de contexteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/WayVzizZRLk/default.jpg",
          "39:31",
          "2020-06-29",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "7-t6oisOglM",
          "React : Chapitre 24, Les portails",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactportals1336Abonnezvous  httpsbitlyGrafikartSubscribeLes portails vont vous permettre de monter un composant sur un lment spcifique du DOM tout en le gardant dans votre lment react Cela permet par exemple de crer une boite modale qui sera  la racine du body sans avoir  changer la structure de vos composantsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/7-t6oisOglM/default.jpg",
          "4:2",
          "2020-06-30",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "EhSS5ZEVQjQ",
          "React : Chapitre 25, Manipuler les composants enfants",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactchildren1373Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment manipuler les composants enfants dans React grce aux mthodes ReactChildrentoArray et ReactcloneElementSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/EhSS5ZEVQjQ/default.jpg",
          "18:31",
          "2021-01-06",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "tV3xTo98O6g",
          "React : Chapitre 26, Capturer les erreurs",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacterrorboundary1337Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment react ragit lorsquune exception est leveSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/tV3xTo98O6g/default.jpg",
          "8:50",
          "2020-07-01",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "MbBk9O9Vp-g",
          "React : Chapitre 27, Valider les propriétés",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactproptypes1338Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment valider les types  laide de proptypes Lorsque votre application grandit et le nombre de composants augmente des erreurs peuvent se glisser dans vos propsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/MbBk9O9Vp-g/default.jpg",
          "10:11",
          "2020-07-02",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ZEE3AyEep64",
          "React : Chapitre 28, Comment tester ?",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacttests1346Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir ensemble comment tester vos composants React  laide de la librairie Jesthttpswwwgrafikartfrtutorielsjesttestframework1202 et de Testing Libraryhttpstestinglibrarycom Tester permet de sassurer que les composants fonctionnent comme attendu et permet aussi dviter dintroduire des bugs lors que lon effectue un refactoringSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ZEE3AyEep64/default.jpg",
          "26:39",
          "2020-07-03",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4Hv3knQkVgE",
          "React : Chapitre 28, TP Recettes: Introduction",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreacttprecetteintro1339Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons vu les bases de React je vous propose de mettre en pratiques tout ce que lon a vu  travers un exemple concret  une application de gestion de recettes de cuisineSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/4Hv3knQkVgE/default.jpg",
          "13:6",
          "2020-07-04",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hItgswI1WiM",
          "React : Où est la suite des TP ?",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "La partie TP est disponible sur le site  httpswwwgrafikartfrformationsreact",
          "https://i.ytimg.com/vi/hItgswI1WiM/default.jpg",
          "47",
          "2020-07-04",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uC42BkvAsO8",
          "React : Chapitre 36, Conclusion",
          "Créer un thème WordPress",
          "PLjwdMgw5TTLWF1VV9TFWrsUTvWjtGS7Qt",
          "Article  httpsgrafikartfrtutorielsreactconclusion1347Abonnezvous  httpsbitlyGrafikartSubscribeBravo  Vous avez maintenant acquis les bases quil y a  connaitre sur React Aussi dans cette vido je vous propose quelques pistes  explorer pour continuer votre exploration de ReactSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uC42BkvAsO8/default.jpg",
          "4:23",
          "2020-07-05",
          "wordpress"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
  "Découvrir WordPress",
  "wordpress"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "XU0nvV-CJwc",
          "WordPress avancé : Introduction",
          "Découvrir WordPress",
          "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
          "Article  httpsgrafikartfrtutorielswordpressavancepresentation1304Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon travaille de manire rcurrente sur WordPress on va chercher  amliorer ses mthodes de dveloppements pour gagner en efficacit et en rapidit Dans cette formation je vous propose de dcouvrir une srie de librairies qui vous permettront damliorer votre exprience de dveloppementSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/XU0nvV-CJwc/default.jpg",
          "1:27",
          "2020-05-05",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "2lcRaKiw1-I",
          "Tutoriel WordPress : Découverte de Bedrock",
          "Découvrir WordPress",
          "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
          "Article  httpsgrafikartfrtutorielswordpressbedrock1305Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir Bedrockhttpsrootsiobedrock un kit de dmarrage pour WordPress qui intgre les outils de dveloppement modernes et qui propose une meilleur structure de dossiersSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/2lcRaKiw1-I/default.jpg",
          "11:53",
          "2020-05-05",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "IZlWH7CZPFQ",
          "Tutoriel WordPress/Wordplate : Wordplate",
          "Découvrir WordPress",
          "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
          "Article  httpsgrafikartfrtutorielswordplate973Abonnezvous  httpsbitlyGrafikartSubscribeDans ce tutoriel je vous propose de dcouvrir Wordplatehttpswordplategithubio un outil qui vous permet dinstaller et de travailler avec Wordpress dune manire plus organise Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/IZlWH7CZPFQ/default.jpg",
          "31:7",
          "2018-01-04",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "oP_YzFx7f0A",
          "Tutoriel WordPress : WP-CLI",
          "Découvrir WordPress",
          "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
          "Article  httpsgrafikartfrtutorielswordpresswpcli1306Abonnezvous  httpsbitlyGrafikartSubscribeWPCLIhttpswpcliorg est un outil qui vous permettra dintragir avec WordPress en ligne de commande est deffectuer un ensemble dopration sans quitter votre terminal mais aussi pour automatiser certaines opration en cas de dploiement par exempleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/oP_YzFx7f0A/default.jpg",
          "10:58",
          "2020-05-05",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WtzciSNRvyo",
          "WordPress avancé : Chapitre 5, Extended ACF",
          "Découvrir WordPress",
          "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
          "Article  httpsgrafikartfrtutorielswordpressextendedacf1307Abonnezvous  httpsbitlyGrafikartSubscribeExtended ACFhttpsgithubcomwordplateextendedacf est une librairie qui va vous permettre de gnrer vos champs ACF en un clin doeil grce  un systme dclaratifSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/WtzciSNRvyo/default.jpg",
          "14:42",
          "2020-05-05",
          "wordpress"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "o-io2Ck9iDk",
          "Tutoriel WordPress : Timber",
          "Découvrir WordPress",
          "PLjwdMgw5TTLXQ7eBAiC7giFbm4NUisryc",
          "Article  httpsgrafikartfrtutorielswordpresstimber1308Abonnezvous  httpsbitlyGrafikartSubscribeTimberhttpstimbergithubiodocs est une librairie  plugin qui vous permettra de concevoir vos thmes en utilisant le moteur de template TwighttpstwigsymfonycomSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/o-io2Ck9iDk/default.jpg",
          "26:38",
          "2020-05-06",
          "wordpress"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
  "Poissons d'avril",
  "style"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "lb6E5nXhDp8",
          "Coding Challenge : JS Spanify()",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Premire vido pour essayer un nouveau format La consigne  httpscodesandboxioschallengespanify4oxrrfileREADMEmdDiscord  httpsgrafikartfrtchat proposez votre solution dans le salon challenge",
          "https://i.ytimg.com/vi/lb6E5nXhDp8/default.jpg",
          "1:54",
          "2020-04-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4BB7KjRqS2Y",
          "Coding Challenge Spanify() : Vos Réponses",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Article listant les solutions  httpswwwgrafikartfrblogcodingchallengespanify",
          "https://i.ytimg.com/vi/4BB7KjRqS2Y/default.jpg",
          "14:57",
          "2020-05-01",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4BB7KjRqS2Y",
          "Coding Challenge Spanify() : Vos Réponses",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Article listant les solutions  httpswwwgrafikartfrblogcodingchallengespanify",
          "https://i.ytimg.com/vi/4BB7KjRqS2Y/default.jpg",
          "14:57",
          "2020-05-01",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Uw3jh-8pwuM",
          "Coding Challenge HTML/CSS : Grille et Flex",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Consigne  httpsgithubcomGrafikartChallengesblobmasterCSS1GrillesmdDiscord   httpswwwgrafikartfrtchat",
          "https://i.ytimg.com/vi/Uw3jh-8pwuM/default.jpg",
          "1:29",
          "2020-05-12",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zqKHaiB3A3c",
          "Coding Challenge Grille & Flex : Vos solutions",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Article listant les solutions  httpswwwgrafikartfrblogcodingchallengegrilleflex",
          "https://i.ytimg.com/vi/zqKHaiB3A3c/default.jpg",
          "21:44",
          "2020-05-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zqKHaiB3A3c",
          "Coding Challenge Grille & Flex : Vos solutions",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Article listant les solutions  httpswwwgrafikartfrblogcodingchallengegrilleflex",
          "https://i.ytimg.com/vi/zqKHaiB3A3c/default.jpg",
          "21:44",
          "2020-05-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cX-5J_cy8TM",
          "Coding Challenge : JS Impot.calculate()",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Pour ce nouveau challenge je vous propose de crer un calculateur pour calculer limpt sur le revenushttpsgithubcomGrafikartChallengestreemasterJS2Impotfr",
          "https://i.ytimg.com/vi/cX-5J_cy8TM/default.jpg",
          "3:19",
          "2020-08-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sLuQUKTSr5s",
          "Solution du Coding Challenge sur le calculateur d'impôt",
          "Poissons d'avril",
          "PLjwdMgw5TTLVyXoDRzBpVEHkvhX7OxxL6",
          "Voici la vido de correction du Coding Challenge o le but tait de crer un petit calculateur dimpt sur le revenu en HTML  JavaScriptConsigne  Solutions  httpsgrafikartfrblogcodingchallengeimpotSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sLuQUKTSr5s/default.jpg",
          "24:50",
          "2021-06-21",
          "style"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
  "Le préprocesseur SASS",
  "php"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "fjm5jaQsvSw",
          "Créer un thème WordPress : Chapitre 1, Présentation",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressthemepresentation1251Abonnezvous  httpsbitlyGrafikartSubscribeBienvenue dans cette formation o je vous propose de dcouvrir le baba de la cration de thme sur WordPress Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/fjm5jaQsvSw/default.jpg",
          "2:16",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "H5CIUAXi0Uk",
          "Créer un thème WordPress : Chapitre 2, Installation de l'environnement",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressenvironnementwamp1252Abonnezvous  httpsbitlyGrafikartSubscribePetit rappel aujourdhui pour les personnes qui nauraient pas un environnement de dveloppement prt  fonctionner Nous allons ici voir linstallation sur Windows en se basant sur xamphttpswwwapachefriendsorgindexhtmlSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/H5CIUAXi0Uk/default.jpg",
          "11:5",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "qoGzCZtcCZE",
          "Créer un thème WordPress : Chapitre 3, Installation de WordPress",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressinstallation1253Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment installer WordPress en local pour pouvoir travailler sur le site plus facilementSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/qoGzCZtcCZE/default.jpg",
          "4:35",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "FYUvBuEsaAY",
          "Créer un thème WordPress : Chapitre 4, Création du thème",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresscreationtheme1254Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant entrer dans le vif du sujet et crer les premiers fichiers de notre thme Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/FYUvBuEsaAY/default.jpg",
          "9:59",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wiQMfaKcA9k",
          "Créer un thème WordPress : Chapitre 5, Les actions",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressactionshook1255Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voquer un premier point clef de WordPress  Les hookshttpsdeveloperwordpressorgpluginshooks Ces hooks permettent dtendre WordPress depuis un thme ou un plugin en injectant des fonctionnalits lors de moment clefSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wiQMfaKcA9k/default.jpg",
          "15:42",
          "2020-03-12",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "oLP2T9DfnEk",
          "Créer un thème WordPress : Chapitre 6, Les filtres",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressactionsfilters1256Abonnezvous  httpsbitlyGrafikartSubscribeLes filtres sont un type de hook spcial qui permettent daltrer une valeur en la faisant passer par une srie doprationsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/oLP2T9DfnEk/default.jpg",
          "6:39",
          "2020-03-13",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "8AoGETGUbh0",
          "Créer un thème WordPress : Chapitre 7, La boucle WordPress",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressloop1257Abonnezvous  httpsbitlyGrafikartSubscribeLa boucle est le code PHP qui permet  WordPress dafficher une srie darticle Lutilisation de la boucle permet de traiter les diffrents articles et dafficher les informations associes sur la page Aussi il faudra faire attention car certaines fonctions de WordPress ne fonctionne quau sein de la boucle comme la fonction thetitle par exempleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/8AoGETGUbh0/default.jpg",
          "16:6",
          "2020-03-14",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "CFbYbKu5dTg",
          "Créer un thème WordPress : Chapitre 8, La hiérarchie des templates",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresshierarchy1258Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment la principe de la hirarchie des templatehttpsdeveloperwordpressorgthemesbasicstemplatehierarchy Lorsque WordPress charge une page il va essayer de charger un fichier PHP en fonction du type de la page qui est affiche Il est ainsi possible de crer un modle de page diffrent pour la page dun article et la page darchiveSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/CFbYbKu5dTg/default.jpg",
          "11:53",
          "2020-03-15",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "8SWt8bc2gK0",
          "Créer un thème WordPress : Chapitre 9, Gérer les menus",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressmenu1259Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant voir comment grer les menu de notre thme Il est possible depuis le thme de dfinir plusieurs emplacement de menu qui seront ensuite utiliss par ladministrateur du site Lenregistrement se fait au travers de la fonction registernavmenu Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/8SWt8bc2gK0/default.jpg",
          "17:52",
          "2020-03-16",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3khRV9BGRo0",
          "Créer un thème WordPress : Chapitre 10, Formulaire de recherche",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressrecherche1260Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment mettre en place le formulaire de recherche sur notre site Pour afficher le formulaire de recherche il vous suffit dutiliser la fonction getsearchformSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/3khRV9BGRo0/default.jpg",
          "4:51",
          "2020-03-17",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xOQq7-nvJU0",
          "Créer un thème WordPress : Chapitre 11, Les permaliens",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresspermaliens1261Abonnezvous  httpsbitlyGrafikartSubscribeWordPress permet davoir de jolies URLs  laide du systme de rcriture dURL Cependant cest un systme quil va falloir configurer pour pouvoir lutiliser Si vous utilisez apache vous ne devriez rien avoir  faire car il gnrera automatiquement un fichier htaccess En revanche si vous tes sur nginx il y aura un peu plus de configuration  faire en modifiant la configuration pour y ajouter la redirection vers le fichier indexphp de WordPressSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/xOQq7-nvJU0/default.jpg",
          "4:5",
          "2020-03-18",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "0q7oxrq1isI",
          "Créer un thème WordPress : Chapitre 12, Pagination",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresspagination1262Abonnezvous  httpsbitlyGrafikartSubscribeNous avons vu comment lister les contenus  laide de la boucle WordPress sans forcment se proccuper de la pagination Il existe diffrentes mthodes qui permettent de crer une pagination mais la plus intressante est la fonction paginatelinks Cette fonction noffre pas forcment une tonne doption en terme de personnalisation et vous aurez surement besoin de crer une fonction personnalise pour vous adapter  la structure de votre templateSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/0q7oxrq1isI/default.jpg",
          "14:16",
          "2020-03-19",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ylEM-Je9IvI",
          "Créer un thème WordPress : Chapitre 13, Modèle de page",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresstemplate1263Abonnezvous  httpsbitlyGrafikartSubscribeEn plus du template pagephp il est aussi possible de dfinir des modles de pages personnaliss qui pourront ensuite tre utilis dans la partie backoffice Pour crer un template il vous suffit de crer un nouveau fichier PHP qui aura un commentaire spcifique au dbutSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ylEM-Je9IvI/default.jpg",
          "3:8",
          "2020-03-20",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "MuSb4BvKg18",
          "Créer un thème WordPress : Chapitre 14, Les formats d'images",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressimagesize1264Abonnezvous  httpsbitlyGrafikartSubscribeDans notre thme nous allons avoir besoin dafficher les images  la une de nos articles  diffrents endroits avec des dimensions spcifiques Il est possible denregistrer plusieurs formats dimages  laide de la fonction addimagesizeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/MuSb4BvKg18/default.jpg",
          "7:13",
          "2020-03-21",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gVbnkd-7fEA",
          "Créer un thème WordPress : Chapitre 15, Les métadonnées",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressmetabox1265Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment grer les mtadonnes associes  un article et comment crer une interface pour les administrer Les mtadonnes permettent de sauvegarder des informations supplmentairesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/gVbnkd-7fEA/default.jpg",
          "34:",
          "2020-03-22",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "IXJa8MZZBIU",
          "Créer un thème WordPress : Chapitre 16, Les taxonomies",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresstaxonomy1266Abonnezvous  httpsbitlyGrafikartSubscribePar dfaut WordPress permet de dfinir plusieurs taxonomies sur les articles  des catgories et des tags Il est aussi possible de dfinir ses propres taxonomies  laide de la fonction registertaxonomyhttpscodexwordpressorgFunctionReferenceregistertaxonomy Cette fonction permet de dclarer une nouvelle taxonomy qui pourra ensuite tre utilis dans ladministrationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/IXJa8MZZBIU/default.jpg",
          "26:48",
          "2020-03-23",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "1BfrWrFa92g",
          "Créer un thème WordPress : Chapitre 17, Les custom post type",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresscustomposttype1267Abonnezvous  httpsbitlyGrafikartSubscribeComme pour les taxonomies il est possible denregistrer de nouveau type de contenu quil sera ensuite possible dadministrer et de consulterSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/1BfrWrFa92g/default.jpg",
          "10:51",
          "2020-03-24",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "oGJ_4jkzcB8",
          "Créer un thème WordPress : Chapitre 18, Options du thème",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressthemesetting1270Abonnezvous  httpsbitlyGrafikartSubscribeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/oGJ_4jkzcB8/default.jpg",
          "16:46",
          "2020-03-25",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4bAFGZeZ2mI",
          "Créer un thème WordPress : Chapitre 19, CSS et JS dans l'administration",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressadminenqueuescript1271Abonnezvous  httpsbitlyGrafikartSubscribeParfois les fonctions que lon souhaite mettre en place dans ladministration ncessite dutiliser du JavaScript ou du CSS Il sera alors possible dutiliser le hook adminenqueuescripts pour enregistrer les assets  charger Le fonctionnement est identique  celui du hook enqueuescript mais on essaiera de faire en sorte de ne pas charger des fichiers lourd sur toute ladministration si il ne sont ncessaire que pour notre panneau doptionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/4bAFGZeZ2mI/default.jpg",
          "11:21",
          "2020-03-26",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "8FkER1exCKU",
          "Créer un thème WordPress : Chapitre 20, Ajouter des colonnes dans l'administration",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressadmincolumns1272Abonnezvous  httpsbitlyGrafikartSubscribePour des types de contenu personnaliss on aura parfois besoin de pousser la personnalisation de ladministration un peu plus loin en ajoutant des colonnes supplmentaires dans le listing de ladministration Par exemple on souhaite mettre en place laffichage dune miniature dans nos listing de bien pour aider ladministrateur  slectionner le bien quil souhaite diterSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/8FkER1exCKU/default.jpg",
          "12:59",
          "2020-03-27",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wRXaICf5zEc",
          "Créer un thème WordPress : Chapitre 21, L'objet WP_Query",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresswpquery1273Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant revenir sur la partie front et parler dun objet essentiel dans WordPress  lobjet WPQuery Cette class est utilise en interne pour rcuprer les articles  afficher dans la boucle Mais vous pouvez aussi lutiliser dans votre thme pour rcuprer une liste darticle en fonction de critres prcis Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wRXaICf5zEc/default.jpg",
          "19:24",
          "2020-03-28",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "RsxrBMct_dI",
          "Créer un thème WordPress : Chapitre 22, L'action pre_get_posts",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresspregetposts1274Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons parler du hook pregetposts Ce hook permet daltrer une requte avant son xcution et va notamment permettre daltrer la requte principale de WordPress pour y ajouter des filtres spcifiquesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/RsxrBMct_dI/default.jpg",
          "14:39",
          "2020-03-29",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Pfh9xKk1jXI",
          "Créer un thème WordPress : Chapitre 23, Gestion des sidebars",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresssidebar1275Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment dclarer de nouvelles sidebar dans WordPress Ces sidebars accueilleront ensuite diffrents widgets qui pourront tre slectionns par ladministrateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Pfh9xKk1jXI/default.jpg",
          "10:18",
          "2020-03-30",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LKMKgihS6cw",
          "Créer un thème WordPress : Chapitre 24, Création d'un widget",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresswidget1276Abonnezvous  httpsbitlyGrafikartSubscribeEn plus des widgets proposs par dfaut il est aussi possible de crer ses propres widgets qui pourront ensuite tre placs dans les diffrentes sidebars de notre thme Pour crer un widget il suffit de crer une classe qui va tendre de la class WPWidget de WordPressSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/LKMKgihS6cw/default.jpg",
          "16:50",
          "2020-03-31",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "r1pZElaM9cc",
          "Créer un thème WordPress : Chapitre 25, Les commentaires",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresscomments1277Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment grer laffichage des commentaires Comme pour le menu WordPress a une opinion trs forte sur la structure HTML et il sera prfrable de coller  cette structure pour viter un maximum de travail Il est cependant possible de personnaliser les choses en profondeur  laide de hook et de WalkerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/r1pZElaM9cc/default.jpg",
          "26:3",
          "2020-04-01",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YVZMqJ7CJsE",
          "Créer un thème WordPress : Chapitre 26, AfterSwitchTheme",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressafterswitchtheme1278Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de rpondre  une question qui a t pose par un utilisateur sur la vido concernant la taxonomieSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/YVZMqJ7CJsE/default.jpg",
          "6:44",
          "2020-04-02",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "T23ji6DSIZQ",
          "Créer un thème WordPress : Chapitre 27, L'API Customize",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresscustomizeapi1279Abonnezvous  httpsbitlyGrafikartSubscribeNous allons aujourdhui dcouvrir lAPI Customizehttpsdeveloperwordpressorgthemescustomizeapi de WordPress qui permet de grer de manire visuelle les options lies  lapparence de notre thme Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/T23ji6DSIZQ/default.jpg",
          "21:",
          "2020-04-03",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "N6TAyuOtiA4",
          "Créer un thème WordPress : Chapitre 28, L'internationalisation",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressi18n1280Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant voquer linternationalisation i18n de notre thme Lobjectif est de faire en sorte que notre thme sadapte au langage choisi par ladministrateur du site Pour traduire un thme ou un plugin WordPress utilise la librairie gettexthttpwwwgnuorgsoftwaregettextSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/N6TAyuOtiA4/default.jpg",
          "13:46",
          "2020-04-04",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jGEHju_MOWA",
          "Créer un thème WordPress : Chapitre 29, Thème enfant",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresschildtheme1281Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment utiliser le principe des thmes enfants dans WordPressSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/jGEHju_MOWA/default.jpg",
          "13:3",
          "2020-04-05",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HYZtRQCUluE",
          "Créer un thème WordPress : Chapitre 30, Extensions",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressplugins1282Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon cre un thme pour un site il peut tre intressant de sparer certaines fonctionnalits dans un plugin afin de pouvoir les conserver en cas de changement de thme ou pour les rendre rutilisable de projet en projet Un plugin fonctionne comme un thme et peut utiliser toutes les fonctionnalits que lon a vu jusqu maintenant Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/HYZtRQCUluE/default.jpg",
          "9:45",
          "2020-04-06",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "aWnCwbHW0o0",
          "Créer un thème WordPress : Chapitre 31, Evénements planifiés",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresscron1283Abonnezvous  httpsbitlyGrafikartSubscribeWordPress dispose dun systme qui permet de planifier des oprations  effectuer  intervalle rgulier Il faut commencer par enregistrer une actionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/aWnCwbHW0o0/default.jpg",
          "11:25",
          "2020-04-07",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "dfvylUsTXTE",
          "Créer un thème WordPress : Chapitre 32, L'objet wpdb",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresswpdb1284Abonnezvous  httpsbitlyGrafikartSubscribeParfois les fonctions offertes par WordPress ne suffiront pas pour rcuprer les donnes que vous souhaitez et il faudra faire appel  la base de donnes Lobject wpdb vous permet deffectuer les oprations de bases UPDATE INSERT DELETE et permet aussi dexcuter des requtes SQL pour des besoins plus complexesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/dfvylUsTXTE/default.jpg",
          "9:40",
          "2020-04-08",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "2_fuGrXNtyM",
          "Créer un thème WordPress : Chapitre 33, L'API Rest",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressrestapi1285Abonnezvous  httpsbitlyGrafikartSubscribeWordPress dispose aujourdhui dune API Resthttpsdeveloperwordpressorgrestapi active par dfaut qui permet de rcuprer des contenus spcifiques Si vous avez des besoins spcifiques vous pouvez aussi tendre cette API avec vos propres endpointsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/2_fuGrXNtyM/default.jpg",
          "16:28",
          "2020-04-09",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "mIrF7AlAaps",
          "Créer un thème WordPress : Chapitre 34, Gestion du cache",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresscache1286Abonnezvous  httpsbitlyGrafikartSubscribeCertaines fonctions que lon va crer feront des oprations lentes que lon ne veut pas voir rptes  chaque requte  WordPress dispose dune API pour grer le cachehttpscodexwordpressorgClassReferenceWPObjectCache mais ne dispose pas dune couche de persistance pour ces donnes Pour combler ce besoin il faudra installer un plugin pour sauvegarder les donnes entre les requtesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/mIrF7AlAaps/default.jpg",
          "7:1",
          "2020-04-10",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "68ttwUkPA0U",
          "Créer un thème WordPress : Chapitre 35, Plugin Query Monitor",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressquerymonitor1287Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a vu les bases je vous propose de faire un tour dhorizon des extensions utiles au dveloppement de thme Nous allons commencer par lextension Query Monitorhttpswordpressorgpluginsquerymonitor qui permet de gnrer une barre de debug pour votre site qui va afficher des informations importante sur le fonctionnement de votre thme  pluginSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/68ttwUkPA0U/default.jpg",
          "6:39",
          "2020-04-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ESVyMCc6kIw",
          "Créer un thème WordPress : Chapitre 36, Plugin Migrate DB",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressmigratedb1288Abonnezvous  httpsbitlyGrafikartSubscribeUn des problme frquent que lon rencontre avec WordPress est la migration Certaines informations clefs comme le nom de domaine est sauvegard  de multiples reprises dans la base de donnes Aussi si vous copiez votre base de donnes sur un serveur le site ne fonctionnera pas forcment Pour remdier  ce problme vous pouvez utiliser lextension WP Migrate DBhttpswordpressorgpluginswpmigratedb qui permet de gnrer un fichier SQL avec certaines chaines remplaces correctement en prenant en compte les donnes serialissSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ESVyMCc6kIw/default.jpg",
          "4:38",
          "2020-04-12",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rMYMmW6jjDg",
          "Créer un thème WordPress : Chapitre 37, Plugin ACF",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressacf1289Abonnezvous  httpsbitlyGrafikartSubscribeDans cette formation nous avons vu comment crer des mtadonnes  la main Malheureusement le code  crire est assez long et grer des formulaires complexes peut savrer assez pnibles ACFhttpswwwadvancedcustomfieldscom est un plugin qui permet de grer de manire visuelle les formulaire de mtadonnes pour vos diffrents types de contenu Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/rMYMmW6jjDg/default.jpg",
          "25:50",
          "2020-04-13",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sSZNvsRwyi0",
          "Créer un thème WordPress : Chapitre 38, Gestion des blocks via ACF",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpressacfblocks1301Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir comment la version PRO dACF permet de crer des blocs personnaliss pour lditeur visuel de WordPressSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sSZNvsRwyi0/default.jpg",
          "15:33",
          "2020-04-13",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "q7GK3cVuBCM",
          "Créer un thème WordPress : Chapitre 39, Travaux pratiques",
          "Le préprocesseur SASS",
          "PLjwdMgw5TTLWVp8WUGheSrGnmEWIMk9H6",
          "Article  httpsgrafikartfrtutorielswordpresstpintro1290Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons vu la partie thorique je vous propose de passer  la pratique  travers lintgration dune maquette HTML  CSS dans WordPressSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/q7GK3cVuBCM/default.jpg",
          "3:18",
          "2020-04-13",
          "php"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
  "Apprendre PHP",
  "php"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "B_vCy1uTg68",
          "Découverte de WordPress : Chapitre 1, Présentation de WordPress",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielspresentationwordpress1240Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre je vous propose de faire le point sur ce quest WordPress Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/B_vCy1uTg68/default.jpg",
          "4:1",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YS1CSCGbi5A",
          "Découverte de WordPress : Chapitre 2, Mettre en place WordPress sur Infomaniak",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielsinstallationwordpressinfomaniak1241Abonnezvous  httpsbitlyGrafikartSubscribeNous allons dans cette vido dcouvrir comment installer notre premier site WordPress simplement  laide de lhbergeur Infomaniakhttpswwwinfomaniakcomfrhebergementwebetmailhebergementwebetmailutmterm59f74db50448d Cet hbergeur est intressant car il intgre dans ses offre une solution permettant la mise en place dun site WordPress sans avoir  mettre les mains dans le codeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/YS1CSCGbi5A/default.jpg",
          "9:39",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BIVPSzBSbf0",
          "Découverte de WordPress : Chapitre 3, Découverte de l'interface WordPress",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressdecouverteinterface1242Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir ensemble ladministration de WordPress en faisant un petit tour du propritaire Nous entreront plus en dtail sur le fonctionnement de chaque module dans la suite de cette formationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/BIVPSzBSbf0/default.jpg",
          "12:44",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DMB-FGJIIo4",
          "Découverte de WordPress : Chapitre 4, L'éditeur de contenu",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpresseditor1243Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant voquer le fonctionnement de lditeur de contenu Bien comprendre le fonctionnement de lditeur est essentiel car il sera votre moyen principal dinsrer du contenu sur votre siteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/DMB-FGJIIo4/default.jpg",
          "24:22",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bUj2M8dsf1M",
          "Découverte de WordPress : Chapitre 5, Gestion du menu",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressmenu1244Abonnezvous  httpsbitlyGrafikartSubscribeIl est important de mettre en place un menu afin de permettre  vos utilisateurs de naviguer Heureusement pour nous WordPress dispose dun systme de gestion de menu trs simple dutilisation qui vous permettra de grer les diffrents menu prsents sur votre siteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bUj2M8dsf1M/default.jpg",
          "13:9",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wbturmZn7pw",
          "Découverte de WordPress : Chapitre 6, Gestion du blog",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressbloggestion1245Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant nous focaliser sur la gestion de la partie blog du site Nous allons voir comment grer les catgories les tags et le systme de commentairesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wbturmZn7pw/default.jpg",
          "14:37",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4kMoBpUOGno",
          "Découverte de WordPress : Chapitre 7, Gestion de la page d'accueil",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressaccueil1246Abonnezvous  httpsbitlyGrafikartSubscribePar dfaut WordPress affiche une liste dactualits lorsque lon se rend sur la page daccueil Ceci peut convenir dans le cadre dun blog mais pas ncessairement dans le cadre dun site o on souhaitera afficher une page spcifique en tant que page daccueilSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/4kMoBpUOGno/default.jpg",
          "5:43",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bGOCXBZFmrU",
          "Découverte de WordPress : Chapitre 8, Gestion des widgets",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpresswidgets1247Abonnezvous  httpsbitlyGrafikartSubscribeCertains thmes offre des emplacements permettant dajouter des modules Ces widgets permettent de mettre en avant certains contenus et permettent dagrmenter votre pied de page ou la barre latrale de votre blogSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bGOCXBZFmrU/default.jpg",
          "9:14",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KqwnG8bzI3E",
          "Découverte de WordPress : Chapitre 9, Les thèmes",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressthemes1248Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment changer le thme de son site et comment tlcharger de nouveaux thme depuis le site de WordPress Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/KqwnG8bzI3E/default.jpg",
          "15:14",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gHuGIhykcFs",
          "Découverte de WordPress : Chapitre 10, Gestion des média",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressmedia1249Abonnezvous  httpsbitlyGrafikartSubscribeNous allons rapidement voquer la gestion des images WordPress dispose dun panneau mdia qui centralise tous les fichiers envoys sur votre site Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/gHuGIhykcFs/default.jpg",
          "7:28",
          "2020-03-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Jo_rw8Td8Sk",
          "Découverte de WordPress : Chapitre 11, Les plugins",
          "Apprendre PHP",
          "PLjwdMgw5TTLVDv-ceONHM_C19dPW1MAMD",
          "Article  httpsgrafikartfrtutorielswordpressplugins1250Abonnezvous  httpsbitlyGrafikartSubscribeWordPress offre par dfaut un assez grand nombre de fonctionnalits mais on se retrouve parfois avec des besoins qui sortent des outils offerts de base Dans ce cas l il faudra avoir recours  des pluginshttpsfrwordpressorgplugins qui permettent de rajouter des fonctionnalits supplmentaire  WordPress comme par exemple un formulaire de contactSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Jo_rw8Td8Sk/default.jpg",
          "12:7",
          "2020-03-11",
          "php"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
  "Héberger son site internet / Comment marche internet",
  "style"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "5E9E1WYvBkU",
          "Rediff : Challenge estimateur d'impôt",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Rediffusion du Live sur la Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/5E9E1WYvBkU/default.jpg",
          "2:28:31",
          "2020-09-10",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QEHIJuZLVuI",
          "Rediff LiveCoding : Découverte de librairies CSSinJS",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/QEHIJuZLVuI/default.jpg",
          "1:41:11",
          "2020-09-09",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OyvdER5JXwE",
          "LiveCoding : Edition de profil",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/OyvdER5JXwE/default.jpg",
          "1:54:15",
          "2020-04-26",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "2lJs7yUFTwE",
          "LiveCoding : Forum ou édition de profil ?",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/2lJs7yUFTwE/default.jpg",
          "2:30:24",
          "2020-04-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "8Xvqw3j5ZRs",
          "LiveCoding : Préparation des prochains tutoriel",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/8Xvqw3j5ZRs/default.jpg",
          "1:47:53",
          "2020-04-21",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "A_H8Xg9u0qs",
          "LiveCoding : Préparation des prochains tutoriel",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/A_H8Xg9u0qs/default.jpg",
          "2:9:43",
          "2020-04-17",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VCRaQcfZrGs",
          "LiveCoding : Symfony, le système de recherche",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/VCRaQcfZrGs/default.jpg",
          "2:51:47",
          "2020-04-16",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gcH7EEKoP5c",
          "LiveCoding : Symfony, on avance sur le Forum",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/gcH7EEKoP5c/default.jpg",
          "1:53:19",
          "2020-04-13",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VRVNVhvSWeI",
          "LiveCoding : Symfony, on avance sur le Forum",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/VRVNVhvSWeI/default.jpg",
          "2:43:47",
          "2020-04-10",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "At7F_jZu-3s",
          "LiveCoding : On finit la modal",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/At7F_jZu-3s/default.jpg",
          "2:8:39",
          "2020-04-03",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DSiN-i0qcYY",
          "LiveCoding : On refait des custom elements",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/DSiN-i0qcYY/default.jpg",
          "2:15:38",
          "2020-04-02",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "asTVJ6ZHP5k",
          "LiveCoding : On avance sur le forum",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/asTVJ6ZHP5k/default.jpg",
          "2:3:4",
          "2020-04-01",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PdCFw92IOB0",
          "LiveCoding : On crée les CustomElements ?",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/PdCFw92IOB0/default.jpg",
          "1:54:35",
          "2020-03-31",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "6K6IwfFVTco",
          "LiveCoding : Vectorisation de la mascotte",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/6K6IwfFVTco/default.jpg",
          "1:30:58",
          "2020-03-30",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "eMO6rVzvZL0",
          "LiveCoding CSS : Intégration site agence immo",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/eMO6rVzvZL0/default.jpg",
          "2:22:3",
          "2020-03-22",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zyp17wYlN6Q",
          "LiveCoding CSS : Intégration site agence immo",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/zyp17wYlN6Q/default.jpg",
          "1:58:24",
          "2020-03-22",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "tG7fYbBl-xM",
          "LiveCoding : Animation de la homepage",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/tG7fYbBl-xM/default.jpg",
          "1:26:59",
          "2020-03-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "6XZqQUgxZTo",
          "LiveCoding : Gestion du suivi",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/6XZqQUgxZTo/default.jpg",
          "2:24:35",
          "2020-03-19",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HlbFj7Nb4lw",
          "LiveCoding : Gestion du suivi",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/HlbFj7Nb4lw/default.jpg",
          "1:53:36",
          "2020-03-17",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "USz2JpIYvbU",
          "LiveCoding : Gestion des technologies",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/USz2JpIYvbU/default.jpg",
          "2:35:27",
          "2020-03-16",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KJ0DkAwYt84",
          "LiveCoding : Gestion des formations",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/KJ0DkAwYt84/default.jpg",
          "1:40:25",
          "2020-03-15",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PyGbBMuxSDI",
          "LiveCoding : Gestion des formations",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/PyGbBMuxSDI/default.jpg",
          "3:5:37",
          "2020-03-14",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "170exrsiqog",
          "LiveCoding : La formation WordPress",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/170exrsiqog/default.jpg",
          "1:50:59",
          "2020-03-11",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "yx2oTEVQ65Y",
          "LiveCoding : Edition des technologies",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/yx2oTEVQ65Y/default.jpg",
          "2:47:24",
          "2020-03-10",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DczoaQOH7G0",
          "LiveCoding : Système de révision",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/DczoaQOH7G0/default.jpg",
          "2:26:15",
          "2020-03-03",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jsvm5Nd1F5c",
          "LiveCoding : Système de commentaire (JS)",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/jsvm5Nd1F5c/default.jpg",
          "2:34:25",
          "2020-02-28",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BDrNjkXOuo4",
          "LiveCoding : Système de commentaire (JS)",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/BDrNjkXOuo4/default.jpg",
          "3:19:29",
          "2020-02-27",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Axv7Q-1UHtU",
          "LiveCoding : Découverte d'API Platform",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/Axv7Q-1UHtU/default.jpg",
          "2:54:28",
          "2020-02-26",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "kPci_Cm6E6M",
          "LiveCoding : Un peu de front & import des commentaires",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/kPci_Cm6E6M/default.jpg",
          "2:40:20",
          "2020-02-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "29R0HnAe-mM",
          "LiveCoding : On finit le système de blog",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/29R0HnAe-mM/default.jpg",
          "4:15:43",
          "2020-02-24",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "c135wQTOxZo",
          "LiveCoding : On finit le système de fichier ?",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/c135wQTOxZo/default.jpg",
          "4:13:24",
          "2020-02-22",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "g2iGewBI1xY",
          "LiveCoding : Quel fw frontend choisir et problème d'algo :(",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916",
          "https://i.ytimg.com/vi/g2iGewBI1xY/default.jpg",
          "4:7",
          "2020-02-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "qWPzcPpWyuQ",
          "LiveCoding :  Développement de Grafikart.fr, Gestion des images",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/qWPzcPpWyuQ/default.jpg",
          "3:58:10",
          "2020-02-19",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cDzHC5Xxs_A",
          "LiveCoding :  Développement de Grafikart.fr, Gestion des images",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/cDzHC5Xxs_A/default.jpg",
          "3:27:38",
          "2020-02-19",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "O-mfTMYamJ4",
          "LiveCoding :  Développement de Grafikart.fr, User input",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/O-mfTMYamJ4/default.jpg",
          "2:28:58",
          "2020-02-18",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4HWtTEcT760",
          "LiveCoding :  Développement de Grafikart.fr, User input",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/4HWtTEcT760/default.jpg",
          "2:16:52",
          "2020-02-18",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3Qk7ZoCsNaI",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr, Live et admin ?",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/3Qk7ZoCsNaI/default.jpg",
          "3:8:23",
          "2020-02-17",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ZcPh9yEsoUY",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr, Live et admin ?",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/ZcPh9yEsoUY/default.jpg",
          "2:11:10",
          "2020-02-17",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zwJ99vSe2z8",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr, Authentification",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStorm httpswwwgrafikartfrformationsphpstormCouleur de lditeur  Material Theme UI Palenight httpspluginsjetbrainscomplugin8006materialthemeui OS  Arch Linux avec lenvironnement de bureau i3 httpswwwgrafikartfrtutorielsi3wmpresentation916aze",
          "https://i.ytimg.com/vi/zwJ99vSe2z8/default.jpg",
          "2:37:58",
          "2020-02-15",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "oRBUinZZonU",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr, Authentification",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStormOS  Arch Linux avec lenvironnement de bureau i3",
          "https://i.ytimg.com/vi/oRBUinZZonU/default.jpg",
          "2:14:12",
          "2020-02-15",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "2GsRCJxPavk",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStormOS  Arch Linux avec lenvironnement de bureau i3",
          "https://i.ytimg.com/vi/2GsRCJxPavk/default.jpg",
          "3:17:52",
          "2020-02-13",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xzxz-SW8J2U",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStormOS  Arch Linux avec lenvironnement de bureau i3",
          "https://i.ytimg.com/vi/xzxz-SW8J2U/default.jpg",
          "1:52:16",
          "2020-02-12",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "grsjxBUo7RA",
          "LiveCoding : J'avance sur le nouveau site Grafikart.fr",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "Editeur  PHPStormOS  Arch Linux avec lenvironnement de bureau i3",
          "https://i.ytimg.com/vi/grsjxBUo7RA/default.jpg",
          "3:14:45",
          "2020-02-09",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "n1uHv1im7O0",
          "LiveCoding symfony make:grafikart",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/n1uHv1im7O0/default.jpg",
          "2:51:56",
          "2020-02-08",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "iDkFOMGNr7A",
          "LiveCoding symfony make:grafikart",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/iDkFOMGNr7A/default.jpg",
          "2:44:58",
          "2020-02-08",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ILaQjKLcqUQ",
          "LiveCoding symfony make:grafikart",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/ILaQjKLcqUQ/default.jpg",
          "2:34:16",
          "2020-01-31",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gNKmKnHKwkk",
          "LiveCoding symfony make:grafikart",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/gNKmKnHKwkk/default.jpg",
          "2:32:31",
          "2020-01-26",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xo-EheKjE7g",
          "LiveCoding : Portfolio",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/xo-EheKjE7g/default.jpg",
          "2:6:1",
          "2020-01-21",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "CFVd_-tWDVg",
          "LiveCoding : Intégration d'une maquette (Agence immo) (part3)",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/CFVd_-tWDVg/default.jpg",
          "47:40",
          "2020-01-16",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xfzM8jbIkh8",
          "LiveCoding : Intégration d'une maquette (Agence immo) (part2)",
          "Héberger son site internet / Comment marche internet",
          "PLjwdMgw5TTLX_17EodZJ9w4nxV2GbAtdy",
          "",
          "https://i.ytimg.com/vi/xfzM8jbIkh8/default.jpg",
          "2:10:31",
          "2020-01-16",
          "style"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
  "Le statut de Développeur Freelance",
  "html"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ukocHoa8y3o",
          "Tester sur symfony : Chapitre 1, Introduction et configuration",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonyintroduction1213Abonnezvous  httpsbitlyGrafikartSubscribeJe vous propose de dcouvrir comment tester son code au sein dune application Symfony Lobjectif de cette formation est de dcouvrir  la fois les techniques mais aussi les objectifs derrires les testsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ukocHoa8y3o/default.jpg",
          "11:38",
          "2020-01-07",
          "html"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "p_ONHGLv-xs",
          "Tester sur symfony : Chapitre 2, Tester avec une base de données",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonyfixtures1214Abonnezvous  httpsbitlyGrafikartSubscribeDans le cadre des tests fonctionnels on va souvent tre amen  travailler avec une base de donnes Afin de matriser les donnes qui sont prsentes au moment de note test on va pouvoir utiliser un systme de fixtures Ce systme va permettre de dclarer un ensemble de donnes  rentrer dans la base avant dexcuter chaque test Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/p_ONHGLv-xs/default.jpg",
          "14:50",
          "2020-01-08",
          "html"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sxcvaT5mua0",
          "Tester sur symfony : Chapitre 3, Tester une entité",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonyentity1215Abonnezvous  httpsbitlyGrafikartSubscribeNous allons commencer notre dcouverte des tests avec les tests des entits Grce au typage dans les dernires versions de PHP il nest plus forcment ncessaire dcrire des tests pour nos accesseur et no getters En revanche il peut tre intressant de tester que les annotations lies aux validations fonctionne correctement Cest la mme mthode de test que lon utilisera dans le cadre des objets DataModelSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sxcvaT5mua0/default.jpg",
          "14:54",
          "2020-01-09",
          "html"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "u6Oy9tLnReA",
          "Tester sur symfony : Chapitre 4, Tester un validateur",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonyvalidator1216Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant nous allons voir comment tester un validateur Notre objectif est de crer une nouvelle contrainte de validation que lon va pouvoir utiliser sur lensemble de nos entits Il est donc important de nous assurer que ce systme de validation fonctionne convenablement avant de lintgrer au reste de lapplicationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/u6Oy9tLnReA/default.jpg",
          "28:52",
          "2020-01-10",
          "html"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DZZbGpGy8sM",
          "Tester sur symfony : Chapitre 5, Tester un EventSubscriber",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonyeventsubscriber1228Abonnezvous  httpsbitlyGrafikartSubscribeLes EventSubscriber ne sont pas forcment des classes complexes  tester Ils agissent comme de simples services en ayant comme particularit de dfinir les vnements auxquels ils souscriventSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/DZZbGpGy8sM/default.jpg",
          "18:37",
          "2020-01-15",
          "html"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zfwdc8xRyaI",
          "Tester sur symfony : Chapitre 6, Tester un controller",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonycontroller1217Abonnezvous  httpsbitlyGrafikartSubscribePour tester les controllers nous allons nous baser sur le systme de WebTestCase de Symfony Ce systme va nous permettre denvoyer une requte et de vrifier que le rponse est bien celle attendue  Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zfwdc8xRyaI/default.jpg",
          "38:14",
          "2020-01-11",
          "html"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hJqQNKHvHBw",
          "Tester sur symfony : Chapitre 7, Tests EndToEnd avec Panther",
          "Le statut de Développeur Freelance",
          "PLjwdMgw5TTLURarhrbpQr08iuf91U3tqe",
          "Article  httpsgrafikartfrtutorielstestssymfonypanther1223Abonnezvous  httpsbitlyGrafikartSubscribePantherhttpsgithubcomsymfonypanther est une librairie qui va vous permettre dxcuter des tests endtoend en se basant sur un vritable navigateur Cela vous permettra de tester des pages qui ncessite lutilisation du JavaScript pour fonctionnerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/hJqQNKHvHBw/default.jpg",
          "14:32",
          "2020-01-12",
          "html"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLUeixVGPNl1uZNeJy4UY6qX",
  "Apprendre l'HTML",
  "php"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YG_FuwKVpXE",
          "Tutoriel PHP : Revue de code : felixdorn/flash",
          "Apprendre l'HTML",
          "PLjwdMgw5TTLUeixVGPNl1uZNeJy4UY6qX",
          "Article  httpsgrafikartfrtutorielscodereviewphpfelixdornflash1207Abonnezvous  httpsbitlyGrafikartSubscribeJe vous propose aujourdhui de dcouvrir un nouveau format de vido la revue de code Le principe de ce format est dapprendre de nouvelles choses et damliorer sa manire de dvelopper en analysant le code dautres dveloppeursSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/YG_FuwKVpXE/default.jpg",
          "20:9",
          "2019-11-06",
          "php"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLVzGXGxEBdjwHXCeYnBb7n8",
  "Comprendre Webpack",
  "php"
    );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLXP6JWACTxDqun0jJ5_sYvK",
  "Mise en pratique de la POO en PHP",
  "php"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zrwBXT5VHUk",
          "Poisson d'avril 2019 : Comment instancier des pancakes ?",
          "Mise en pratique de la POO en PHP",
          "PLjwdMgw5TTLXP6JWACTxDqun0jJ5_sYvK",
          "Article  httpsgrafikartfrtutorielsinstancierpancakes1155Abonnezvous  httpsbitlyGrafikartSubscribeDans cette nouvelle vido je vous propose de dcouvrir ensemble comment instancier des pancakes Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zrwBXT5VHUk/default.jpg",
          "3:3",
          "2019-04-01",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bjFie0V4yVE",
          "Poisson d'avril 2014 : Créer son site internet",
          "Mise en pratique de la POO en PHP",
          "PLjwdMgw5TTLXP6JWACTxDqun0jJ5_sYvK",
          "Article  httpsgrafikartfrtutorielscreersiteinternet492Abonnezvous  httpsbitlyGrafikartSubscribeDans ce tutoriel je vous propose de dcouvrir lHTML  travers la cration de votre premier site internet Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bjFie0V4yVE/default.jpg",
          "3:21",
          "2014-04-01",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vQ321gpB3eY",
          "Poisson d'avril 2022 : Réaliser un ascenseur sans code #nocode",
          "Mise en pratique de la POO en PHP",
          "PLjwdMgw5TTLXP6JWACTxDqun0jJ5_sYvK",
          "Article  httpsgrafikartfrtutorielsascenseurnocode2015Abonnezvous  httpsbitlyGrafikartSubscribePour changer par rapport  dhabitude je vous propose de dcouvrir comment raliser un ascenseur sans utiliser de code Et on ira mme plus loin en nutilisant pas la clavier la souris et lcran Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/vQ321gpB3eY/default.jpg",
          "2:46",
          "2022-04-01",
          "php"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
  "Ruby on Rails (5.X)",
  "javascript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "aOccUzHD_MQ",
          "Le préprocesseur SASS (1/11) : Présentation de SASS",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssasspresentation1100Abonnezvous  httpsbitlyGrafikartSubscribeJe vous propose dans cette formation de dcouvrir ensemble le prprocesseur SASS SASS est un prprocesseur qui vous propose de travailler avec une syntaxe CSS amliore qui offre des fonctionnalits supplmentaires comme par exemple la possibilit dimbriquer les rgles de concatner plusieurs fichiers ensemble ou de crer des fonctions afin de limiter la rptitionSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/aOccUzHD_MQ/default.jpg",
          "2:28",
          "2019-01-08",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "MOstrhqpIsI",
          "Le préprocesseur SASS (2/11) : Installation de SASS",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassinstallation1101Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir comment installer et utiliser le prprocesseur SASS Le prprocesseur peut tre utilis de trois manires diffrentes Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/MOstrhqpIsI/default.jpg",
          "8:53",
          "2019-01-08",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jPUnVFiutDU",
          "Le préprocesseur SASS (3/11) : L'imbrication",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassimbrication1102Abonnezvous  httpsbitlyGrafikartSubscribeLa syntaxe SCSS permet de faire de limbricationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/jPUnVFiutDU/default.jpg",
          "6:46",
          "2019-01-09",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "i6ULtjyh1rc",
          "Le préprocesseur SASS (4/11) : L'héritage",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassextend1103Abonnezvous  httpsbitlyGrafikartSubscribeLhritage permet de faire en sorte quune rgle hrite des proprits dune autre rgleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/i6ULtjyh1rc/default.jpg",
          "8:56",
          "2019-01-10",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "tnmGdg46LnM",
          "Le préprocesseur SASS (5/11) : Les variables",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassvariables1104Abonnezvous  httpsbitlyGrafikartSubscribeLes variable sur SASS remplissent les mmes fonctions que les variables CSS standards mais sont convertir lors de la compilation ce qui permet dviter les problmes de compatibilit il nest en revanche pas possible de les modifier aprs coup comme cela peut tre le cas des variables CSSSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/tnmGdg46LnM/default.jpg",
          "11:54",
          "2019-01-11",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "egH3cPggJbU",
          "Le préprocesseur SASS (6/11) : Les mixins",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassmixins1105Abonnezvous  httpsbitlyGrafikartSubscribeLes mixins vont permettre de crer un bloc de proprits qui pourra tre rutilis  plusieurs endroitsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/egH3cPggJbU/default.jpg",
          "17:23",
          "2019-01-12",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "GC2fMckVxAI",
          "Le préprocesseur SASS (7/11) : Les conditions",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassconditions1106Abonnezvous  httpsbitlyGrafikartSubscribeLes conditions permettent deffectuer une vrification et de gnrer du code en fonction du rsultat de cette vrificationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/GC2fMckVxAI/default.jpg",
          "4:14",
          "2019-01-13",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "FGegyC3AVnk",
          "Le préprocesseur SASS (8/11) : Les boucles",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassboucles1107Abonnezvous  httpsbitlyGrafikartSubscribeLes boucles permettent de rpter un code un certain nombre de fois en changeant une valeur au fur et  mesureSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/FGegyC3AVnk/default.jpg",
          "7:17",
          "2019-01-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3vsurb6LWNo",
          "Le préprocesseur SASS (9/11) : La syntaxe SASS",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssasssyntax1108Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons dcouvrir la seconde syntaxe offerte par SASS la syntaxe SASSSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/3vsurb6LWNo/default.jpg",
          "4:",
          "2019-01-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QLgB-KQOtH8",
          "Le préprocesseur SASS (10/11) : L'invite de commande",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssasscli1109Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir lensemble des commandes disponibles sur SASSSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/QLgB-KQOtH8/default.jpg",
          "9:18",
          "2019-01-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WEzg6ZP4W2g",
          "Le préprocesseur SASS (11/11) : Utiliser Bootstrap avec SASS",
          "Ruby on Rails (5.X)",
          "PLjwdMgw5TTLWfI1B2Wv2WPgR9iOyw12zi",
          "Article  httpsgrafikartfrtutorielssassbootstrap1110Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir comment utiliser Bootstrap  partir des sources SASSSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/WEzg6ZP4W2g/default.jpg",
          "10:15",
          "2019-01-15",
          "javascript"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
  "VueJS 2",
  "style"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cWoq5znh0vw",
          "Apprendre le PHP : Chapitre 1, Présentation de PHP",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsphppresentation1112Abonnezvous  httpsbitlyGrafikartSubscribeNous allons dcouvrir aujourdhui ce quest le langage PHP et quels sont ses avantages mais aussi ses inconvnients Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/cWoq5znh0vw/default.jpg",
          "6:18",
          "2019-01-30",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "kj2NJpO9Z7I",
          "Apprendre le PHP : Chapitre 2, Installer PHP sur MacOS",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsinstallphpmacos1113Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir comment installer PHP sur MacOSSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/kj2NJpO9Z7I/default.jpg",
          "5:6",
          "2019-01-30",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OVTnj3hcHuc",
          "Apprendre le PHP : Chapitre 3, Installer PHP sur Windows",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsinstallphpwindows1114Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir comment installer PHP sur WindowsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OVTnj3hcHuc/default.jpg",
          "4:39",
          "2019-01-30",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rvRAkeeofEI",
          "Apprendre le PHP : Chapitre 4, Installer PHP sur Linux",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsinstallphplinux1153Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir comment installer PHP sur LinuxSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/rvRAkeeofEI/default.jpg",
          "3:37",
          "2019-03-29",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UnqJwiIPbag",
          "Apprendre le PHP : Chapitre 5, Les variables",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsvariablesphp1115Abonnezvous  httpsbitlyGrafikartSubscribeLes variables en PHP permettent de sauvegarder des valeurs pour pouvoir les utiliser plus tard Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UnqJwiIPbag/default.jpg",
          "16:21",
          "2019-01-30",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "l30p6dYg0yQ",
          "Apprendre le PHP : Chapitre 6, Les tableaux",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielstableauxphp1116Abonnezvous  httpsbitlyGrafikartSubscribeLes tableaux vous permette de sauvegarder une liste de valeur Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/l30p6dYg0yQ/default.jpg",
          "13:59",
          "2019-01-31",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zFqdht5bFJY",
          "Apprendre le PHP : Chapitre 7, Les conditions",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsconditionsphp1117Abonnezvous  httpsbitlyGrafikartSubscribeLes conditions vous permettent dxcuter un code en fonction dune condition et peuvent scrire de plusieurs faonsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zFqdht5bFJY/default.jpg",
          "21:48",
          "2019-02-01",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4C4lwPM1ESk",
          "Apprendre le PHP : Chapitre 8, Les boucles",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsbouclesphp1118Abonnezvous  httpsbitlyGrafikartSubscribeLes boucles vous permettent deffectuer plusieurs fois une opration et peuvent scrire de plusieurs manires Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/4C4lwPM1ESk/default.jpg",
          "33:32",
          "2019-02-02",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UXdvpKRQsx8",
          "Apprendre le PHP : Chapitre 9, Les fonctions",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsfonctionsphp1119Abonnezvous  httpsbitlyGrafikartSubscribeLes fonctions vous permettent deffectuer des oprations sur vos variablesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UXdvpKRQsx8/default.jpg",
          "39:49",
          "2019-02-03",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wzDjK4rM67c",
          "Apprendre le PHP : Chapitre 10, Les fonctions utilisateurs",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsfonctionsutilisateursphp1120Abonnezvous  httpsbitlyGrafikartSubscribeEn plus des fonctions offertes par PHP vous avez la possibilit de dfinir vos propres fonctions Cela vous permet dviter au maximum la rptition au sein de votre codeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wzDjK4rM67c/default.jpg",
          "32:20",
          "2019-02-04",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "XFMDnz9DwlU",
          "Apprendre le PHP : Chapitre 11, Require & Include",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsrequireincludephp1121Abonnezvous  httpsbitlyGrafikartSubscribeAfin de mieux organiser notre code nous allons pouvoir le morceler et le sparer en plusieurs fichiers Il est ensuite possible dinclure et dxcuter un fichier  laide des instructions require requireonce include et includeonce Plus dinformations sur la documentationhttpssecurephpnetmanualfrfunctionincludephpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/XFMDnz9DwlU/default.jpg",
          "9:35",
          "2019-02-05",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "_WprUvG1mbs",
          "Apprendre le PHP : Chapitre 12, PHP & HTML",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielshtmltemplatephp1122Abonnezvous  httpsbitlyGrafikartSubscribePHP a la particularit de pouvoir tre mlang aisment  du code HTML pour le rendre dynamique Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/_WprUvG1mbs/default.jpg",
          "38:55",
          "2019-02-06",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pcunj2FI_-c",
          "Apprendre le PHP : Chapitre 13, Traitement des formulaires",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsformsphp1123Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment traiter les formulaires HTML depuis PHPSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/pcunj2FI_-c/default.jpg",
          "1:1:29",
          "2019-02-07",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HgIlzi6QzSc",
          "Apprendre le PHP : Chapitre 14, Les dates",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsdatesphp1124Abonnezvous  httpsbitlyGrafikartSubscribeDans cette leon nous allons voir comment travailler avec les dates en PHPhttpssecurephpnetmanualfrfunctiondatephpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/HgIlzi6QzSc/default.jpg",
          "49:37",
          "2019-02-08",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wif5ZmUzbH8",
          "Apprendre le PHP : Chapitre 15, Lecture de fichiers",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsfilegetcontents1125Abonnezvous  httpsbitlyGrafikartSubscribeDans cette leon nous allons voir comment lire des fichiers en PHPSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wif5ZmUzbH8/default.jpg",
          "35:13",
          "2019-02-09",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pfqB5_Rbz9M",
          "Apprendre le PHP : Chapitre 16, Écriture de fichiers",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsfileputcontents1126Abonnezvous  httpsbitlyGrafikartSubscribeDans cette leon nous allons voir comment crire des fichiers en PHPSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/pfqB5_Rbz9M/default.jpg",
          "16:29",
          "2019-02-10",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LARX660fup0",
          "Apprendre le PHP : Chapitre 17, Les Cookies",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielscookiesphp1127Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant voir comment intragir avec les cookies en PHP en dcouvrant la fonction setcookiehttpssecurephpnetmanualfrfunctionsetcookiephp et la variable globale COOKIESoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/LARX660fup0/default.jpg",
          "35:23",
          "2019-02-11",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "j0a1kQpELRo",
          "Apprendre le PHP : Chapitre 18, La session",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielssessionphp1128Abonnezvous  httpsbitlyGrafikartSubscribeLa session vous permet de stocker des informations sur lutilisateur de manire scurise Contrairement aux cookies lutilisateur ne peut ni voir ni diter les informations qui sont stockes en session Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/j0a1kQpELRo/default.jpg",
          "7:55",
          "2019-02-12",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gHNNNYd6suw",
          "Apprendre le PHP : Chapitre 19, TP : Compteur de vues",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielstpcompteurvues1129Abonnezvous  httpsbitlyGrafikartSubscribeAfin de mettre en pratique ce que lon a vu jusqu maintenant je vous propose de crer un systme de compteur afin de calculer le nombre de fois que votre site a t affichSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/gHNNNYd6suw/default.jpg",
          "13:22",
          "2019-02-13",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cyaHOnc8yl8",
          "Apprendre le PHP : Chapitre 20, TP : Dashboard",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielstpdashboardvues1130Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons conu notre systme pour compter les vues nous allons mettre en place un dashboard pour afficher le trafficSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/cyaHOnc8yl8/default.jpg",
          "31:31",
          "2019-02-14",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "haTwY4yp0lQ",
          "Apprendre le PHP : Chapitre 21, TP : Système de connexion",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielstploginvues1131Abonnezvous  httpsbitlyGrafikartSubscribePour finaliser notre dashboard nous allons mettre en place un systme de connexion utilisateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/haTwY4yp0lQ/default.jpg",
          "19:21",
          "2019-02-15",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wAiSu6oiK-Q",
          "Apprendre le PHP : Chapitre 22, Chiffrer les mots de passe",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielspasswordhash1132Abonnezvous  httpsbitlyGrafikartSubscribeDans le chapitre prcdent on a mis en place un systme de connexion en sauvegardant le mot de passe en clair dans une variable Nous allons dans ce chapitre voir comment mieux scuriser les choses  laide des fonctions passwordhashhttpssecurephpnetmanualfrfunctionpasswordhashphp et passwordverifyhttpssecurephpnetmanualfrfunctionpasswordverifyphpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wAiSu6oiK-Q/default.jpg",
          "8:40",
          "2019-02-16",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DhMcHjDOitE",
          "Apprendre le PHP : Chapitre 23, L'objet DateTime",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsdatetimeobjectphp1133Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir le fonctionnement des objets en PHP  travers la dcouverte de lobjet DateTimehttpssecurephpnetmanualfrclassdatetimephpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/DhMcHjDOitE/default.jpg",
          "17:22",
          "2019-02-17",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HUhjN12HZR0",
          "Apprendre le PHP : Chapitre 24, Les class",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsclassphpoop1134Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons dcouvrir comment crer vos propres classeshttpssecurephpnetlanguageoop5 pour reprsenter des concepts complexes et mieux organiser le code de votre applicationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/HUhjN12HZR0/default.jpg",
          "18:2",
          "2019-02-18",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "C0EP6d2sJPc",
          "Apprendre le PHP : Chapitre 25, Statique",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsmethodstatiquephp1135Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment fonctionne les mthodes et les proprits statiqueshttpssecurephpnetmanualfrlanguageoop5staticphpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/C0EP6d2sJPc/default.jpg",
          "7:",
          "2019-02-19",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "aFJL5Fbq5hM",
          "Apprendre le PHP : Chapitre 26, L'héritage",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsextendsphp1136Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir le principe dhritagehttpssecurephpnetmanualfrlanguageoop5inheritancephp pour nos class en PHPSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/aFJL5Fbq5hM/default.jpg",
          "18:37",
          "2019-02-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "aXt6zrAj3lk",
          "Apprendre le PHP : Chapitre 27, TP : Livre d'or",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielslivreorphp1137Abonnezvous  httpsbitlyGrafikartSubscribePour pratiquer lutilisation des objets nous allons crer un petit systme de livre dorSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/aXt6zrAj3lk/default.jpg",
          "44:57",
          "2019-02-21",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vq7yJDuf42E",
          "Apprendre le PHP : Chapitre 28, Utiliser une API avec cURL",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielscurlphp1138Abonnezvous  httpsbitlyGrafikartSubscribeLorsque lon va concevoir une application complexe on sera souvent amener  communiquer avec des services tiers Dans ce chapitre je vous propose de dcouvrir  comment cette communication peut se faire via la librairie cURLhttpssecurephpnetmanualfrrefcurlphpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/vq7yJDuf42E/default.jpg",
          "41:12",
          "2019-02-22",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "210s8-uYSrg",
          "Apprendre le PHP : Chapitre 29, Les Exceptions",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsexceptionphp1139Abonnezvous  httpsbitlyGrafikartSubscribeQuand on crit un algorithme il y a parfois des cas exceptionnel  grer un retour dAPI incorrect par exemple Il est important de grer ces exception convenablement et cela peut se faire au travers des ExceptionshttpssecurephpnetmanualfrclassexceptionphpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/210s8-uYSrg/default.jpg",
          "25:43",
          "2019-02-23",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "oa1iXzlTs04",
          "Apprendre le PHP : Chapitre 30, PHPDoc",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsphpdoc1140Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons faire le point sur les commentaires en PHP et les bonnes pratique lies  la documentation du code  laide de PHPDochttpsphpdocorgSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/oa1iXzlTs04/default.jpg",
          "9:27",
          "2019-02-24",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Rh7mXaZl1oc",
          "Apprendre le PHP : Chapitre 31, PDO",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielspdophp1141Abonnezvous  httpsbitlyGrafikartSubscribeDans cette leon nous allons voir comment intragir avec une base de donnes  laide de lobjet PDOhttpssecurephpnetmanualfrclasspdophpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Rh7mXaZl1oc/default.jpg",
          "40:53",
          "2019-02-24",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WHtbi8S0rkI",
          "Apprendre le PHP : Chapitre 32, Les espaces de noms",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsnamespacephp1143Abonnezvous  httpsbitlyGrafikartSubscribeDans cette leon nous allons voir comment intragir avec une base de donnes  laide de lobjet PDOhttpssecurephpnetmanualfrclasspdophp Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/WHtbi8S0rkI/default.jpg",
          "11:21",
          "2019-02-25",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pwD-xxtZ1g0",
          "Apprendre le PHP : Chapitre 33, L'autoloader",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsautoloadercomposerphp1144Abonnezvous  httpsbitlyGrafikartSubscribeAvec la multiplication des fichiers dans notre code source on remarque quil est de plus en plus pnible dutiliser des requireonce  chaque fois que lon a besoin dune classe Pour viter ce problme il est possible dutiliser un systme dautoloader Ce systme va tre capable de trouver automatiquement les fichier  importer lorsque lon souhaite utiliser une classeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/pwD-xxtZ1g0/default.jpg",
          "21:",
          "2019-02-26",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "faQyEfhqgIo",
          "Apprendre le PHP : Chapitre 34, Utiliser des librairies tierces",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielscomposerrequire1146Abonnezvous  httpsbitlyGrafikartSubscribeBeaucoup de dveloppeurs PHP nhsitent pas  rendre le code quils crent Open Source afin den faire bnficier toute la communaut  Lavantage pour nous et que lon pourra utiliser ces librairies pour crer des fonctionnalits spcifiques au sein de notre application Linstallation de librairies tiers se fera au travers de ComposerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/faQyEfhqgIo/default.jpg",
          "17:49",
          "2019-02-27",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xJLwegBM64k",
          "Apprendre le PHP : Chapitre 35, Les fonctions anonymes",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsclosurephp1148Abonnezvous  httpsbitlyGrafikartSubscribeLes fonctions anonymes permettent de dclarer une logique qui nest utilis que localement Ces fonctions anonymes sont reprsentes par une classe Closurehttpssecurephpnetmanualfrclassclosurephp qui permet dinteragir plus en profondeur avec elleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/xJLwegBM64k/default.jpg",
          "20:50",
          "2019-02-28",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "tbYa0rJQyoM",
          "Apprendre le PHP : Chapitre 36, Le router",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsrouterphp1149Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment organiser les fichiers et la logique de notre applicationSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/tbYa0rJQyoM/default.jpg",
          "31:26",
          "2019-03-01",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UAlLDgP2AUo",
          "Apprendre le PHP : Chapitre 37, ob_start",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsbufferobstartphp1150Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons dcouvrir les fonctions de bufferisation de contenuhttpphpnetmanualfrrefoutcontrolphpSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UAlLDgP2AUo/default.jpg",
          "9:14",
          "2019-03-02",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "FEskC_x9ADE",
          "Apprendre le PHP : Chapitre 38, Exercice : Tableau dynamique",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsexercicetableaudynamiquephp1181Abonnezvous  httpsbitlyGrafikartSubscribeDans cet exercice je vous propose de mettre en place un systme de tableau qui permet dafficher les donnes provenant dune base de donnes SQLite Notre tableau devra disposer des fonctionnalits suivantes  Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/FEskC_x9ADE/default.jpg",
          "51:25",
          "2019-08-14",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "a9iAgGuCTWM",
          "Apprendre le PHP : Chapitre 39, Exercice : Classe d'authentification",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsclassauthphp1182Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir comment mettre en place un systme dauthentification en se basant sur une base de donnes Afin davoir un code mieux organis on essaiera dutiliser une approche plus oriente objet en crant une classe AuthSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/a9iAgGuCTWM/default.jpg",
          "39:37",
          "2019-08-15",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "yt7utxhDyVg",
          "Apprendre le PHP : Chapitre 40, Exercice : Tester son code",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielstestcodephpphpunit1183Abonnezvous  httpsbitlyGrafikartSubscribeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/yt7utxhDyVg/default.jpg",
          "14:49",
          "2019-08-16",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zCCgo30nbh8",
          "Apprendre le PHP : Chapitre 41, Exercice : Pratiquons les tests",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielstestauthphpphpunit1184Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons pratiquer les tests unitaires en essayant de tester le code de lauthentification que lon a crit prcdemment On en profitera aussi pour dcouvrir comment architecturer nos classes afin davoir un code plus testableSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/zCCgo30nbh8/default.jpg",
          "27:6",
          "2019-08-17",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "GPaOcczDXx4",
          "Apprendre le PHP : Chapitre 42, Exercice : QueryBuilder",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsphpquerybuildertests1185Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a vu comment tester le code et utiliser les tests unitaires je vous propose un exercice pratique sur la cration dune classe permettant de gnrer des requtes SQL un QueryBuilder Pour cet exercice je vous donne les tests et cest  vous dessayer dcrire le code pour les faire fonctionnerSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/GPaOcczDXx4/default.jpg",
          "32:3",
          "2019-08-18",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "TCpoRdFwW54",
          "Apprendre le PHP : Chapitre 43, Exercice : Classe Table",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsphpclasstable1186Abonnezvous  httpsbitlyGrafikartSubscribeDans le chapitre prcdent nous avons cr une classe QueryBuilder qui permet de construire plus simplement des requtes SQL Maintenant je vous propose de lintgrer dans le code de notre tableau dynamique et dessayer de le rorganiser pour le rendre plus rutilisable Lobjectif de ce chapitre est de voir comment les objets peuvent nous permettre de crer un code qui soit plus rutilisable et organisSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/TCpoRdFwW54/default.jpg",
          "36:40",
          "2019-08-19",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ypV3v-0Xsxg",
          "Apprendre le PHP : Chapitre 44, Présentation du projet",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielspresentationtp1161Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons vu ensemble les bases du langage PHP je vous propose de mettre en pratique ce que lon  vu depuis le dbut de cette formation  travers un exemple concret Pour cet exemple nous allons crer un blog o les articles pourront tre associs  une ou plusieurs catgories Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/ypV3v-0Xsxg/default.jpg",
          "3:20",
          "2019-08-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "02PAWdiHsBk",
          "Apprendre le PHP : Chapitre 45, Création de la structure",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsstructuretpphp1162Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre nous allons poser la structure de base de notre application et crer nos 2 premires pages Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/02PAWdiHsBk/default.jpg",
          "21:23",
          "2019-08-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "02PAWdiHsBk",
          "Apprendre le PHP : Chapitre 45, Création de la structure",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsstructuretpphp1162Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre nous allons poser la structure de base de notre application et crer nos 2 premires pages Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/02PAWdiHsBk/default.jpg",
          "21:23",
          "2019-08-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VvqkB80OSHU",
          "Apprendre le PHP : Chapitre 46, Le routeur",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsrouteurphp1163Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a pos la logique nous allons chercher  organiser notre code afin de nous simplifier le travail par le suite Comme on le remarque trs peu de choses changent lorsque lon enregistre nos routesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/VvqkB80OSHU/default.jpg",
          "17:31",
          "2019-08-21",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "02PAWdiHsBk",
          "Apprendre le PHP : Chapitre 45, Création de la structure",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsstructuretpphp1162Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre nous allons poser la structure de base de notre application et crer nos 2 premires pages Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/02PAWdiHsBk/default.jpg",
          "21:23",
          "2019-08-20",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VvqkB80OSHU",
          "Apprendre le PHP : Chapitre 46, Le routeur",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsrouteurphp1163Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que lon a pos la logique nous allons chercher  organiser notre code afin de nous simplifier le travail par le suite Comme on le remarque trs peu de choses changent lorsque lon enregistre nos routesSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/VvqkB80OSHU/default.jpg",
          "17:31",
          "2019-08-21",
          "style"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VlEQHVl4EQ8",
          "Apprendre le PHP : Chapitre 47, Remplir la base de données",
          "VueJS 2",
          "PLjwdMgw5TTLW-mAtlR46VajrKs4dep3y0",
          "Article  httpsgrafikartfrtutorielsbddfakerphp1164Abonnezvous  httpsbitlyGrafikartSubscribePour pouvoir travailler plus confortablement sur notre application nous allons remplir notre base de donnes avec des donnes de tests et vu que lon est un peu feignant on va crer un script que lon pourra appeler pour remplir instantanment la base avec des dixaines de contenusSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/VlEQHVl4EQ8/default.jpg",
          "15:14",
          "2019-08-21",
          "style"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
  "Apprendre NodeJS",
  "php"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "82yVPNwC8cY",
          "Symfony 4 par l'exemple (1/16) : Présentation du projet",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielspresentation1064Abonnezvous  httpsbitlyGrafikartSubscribeDans ce premier chapitre nous allons dcouvrir ensemble le projet que lon va chercher  raliser et on va dcouvrir comment installer et configurer Symfony 4Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/82yVPNwC8cY/default.jpg",
          "12:30",
          "2018-11-05",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "TjHRk1Kk4JI",
          "Symfony 4 par l'exemple (2/16) : Nos premières pages",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsrouting1065Abonnezvous  httpsbitlyGrafikartSubscribeNous allons dcouvrir ici le principe de routing et on va chercher  crer nos premires pages Cela sera loccasion de passer en revue les diffrents composants qui permettent au framework de rpondre aux requtes faites par le navigateurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/TjHRk1Kk4JI/default.jpg",
          "23:6",
          "2018-11-06",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Gv7EUDzq2Z8",
          "Symfony 4 par l'exemple (3/16) : Découverte de doctrine",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsdoctrinedecouverte1066Abonnezvous  httpsbitlyGrafikartSubscribePour grer nos biens immobiliers il va tre ncessaire dutiliser une base de donnes afin de stocker et de rcuprer lensemble de nos biens  Le framework Symfony utilise par dfaut lORM Doctrinehttpswwwdoctrineprojectorgprojectsormhtml qui permet dinteragir avec la base de donnes plus facilement Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Gv7EUDzq2Z8/default.jpg",
          "48:35",
          "2018-11-07",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "6Ryu7-VSV5k",
          "Symfony 4 par l'exemple (4/16) : CRUD des biens immobiliers",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielscrudexemple1067Abonnezvous  httpsbitlyGrafikartSubscribeAfin de faire un tour dhorizon du fonctionnement du framework je vous propose de mettre en place le CRUD pour la gestion des biens Le terme CRUD dsigne lensemble des oprations que lon va pouvoir effectuer sur une ressource Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/6Ryu7-VSV5k/default.jpg",
          "38:",
          "2018-11-08",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "dAcCWKxQKxI",
          "Symfony 4 par l'exemple (5/16) : Valider les données",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsvalidation1068Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment valider les donnes afin de nous assurer que ce qui est rentr en base de donnes est bien conforme  ce que lon attend Symfony dispose pour cela dun systme de validation qui va permettre dannoter certaines proprits de nos entits afin dimposer des rgles de validation spcifiques qui seront vrifi par le systme de formulaireSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/dAcCWKxQKxI/default.jpg",
          "10:31",
          "2018-11-09",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "5LfSTeyvyuM",
          "Symfony 4 par l'exemple (6/16) : Le composant Security",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielssecurity1069Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons cr linterface qui permet dadministrer et de grer les biens on veut pouvoir scuriser les choses afin que seul ladministrateur puisse y avoir accs Aussi dans ce chapitre nous allons dcouvrir le composant Securityhttpssymfonycomdoccurrentsecurityhtml de Symfony qui permet de mettre en place une restriction sur certaines parties du site Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/5LfSTeyvyuM/default.jpg",
          "28:44",
          "2018-11-10",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "9gFhvApgM20",
          "Symfony 4 par l'exemple (7/16) : Paginer les biens",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielspagination1070Abonnezvous  httpsbitlyGrafikartSubscribePour le moment on sest content dafficher lensemble de nos biens sur notre page principale Malheureusement si on a une centaine de biens immobiliers lutilisateur va devoir tous les charger pas trs pratique Pour remdier  ce problme on va mettre en place un systme de pagination qui permettra de paginer les rsultats et dafficher les bien 12 par 12 Cela sera loccasion de dcouvrir comment utiliser un bundle tiers au sein de notre application  KnpPaginatorBundlehttpsgithubcomKnpLabsKnpPaginatorBundleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/9gFhvApgM20/default.jpg",
          "20:",
          "2018-11-11",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "fRJJKxwQDf0",
          "Symfony 4 par l'exemple (8/16) : Filtrer les biens",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsfiltre1071Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant tous nos utilisateurs ne cherchent pas forcment les mmes biens immobiliers Pour les aider  trouver le bien de leur rve nous allons mettre en place un systme de filtre qui va permettre aux utilisateurs de chercher des biens qui correspondent  des critres spcifiques Cela sera loccasion de dcouvrir comment on peut utiliser les composants que lon a vu jusqu maintenant afin de crer un systme un petit peu plus avanc que le CRUD  classiqueSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/fRJJKxwQDf0/default.jpg",
          "15:21",
          "2018-11-12",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gZ4R_Ooq4LA",
          "Symfony 4 par l'exemple (9/16) : Gestion des options",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsoptionsmanytomany1072Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons nous replonger dans lORM Doctrine et nous allons voir le systme de relations entre les donnes et plus prcisment la relation Many to Many Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/gZ4R_Ooq4LA/default.jpg",
          "29:6",
          "2018-11-13",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OZBVd4ZTIqk",
          "Symfony 4 par l'exemple (10/16) : Image à la une",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsuploadbundle1073Abonnezvous  httpsbitlyGrafikartSubscribePour donner envie  nos utilisateurs de visiter un bien nous allons mettre en place un systme dimage  la Une qui permettra dafficher une image pour chacun de vos biens Cela sera encore une fois loccasion de dcouvrir un bundle tiers  VichUploaderBundlehttpsgithubcomdustin10VichUploaderBundle Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OZBVd4ZTIqk/default.jpg",
          "36:46",
          "2018-11-14",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BcTFEOA1Io4",
          "Symfony 4 par l'exemple (11/16) : Formulaire de contact",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielscontact1074Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons voir comment mettre en place le formulaire de contact qui permettra  une personne intresse par un de nos bien de contacter lagent immobilier Cela sera loccasion de dcouvrir comment utiliser le systme de mailerhttpssymfonycomdoccurrentemailhtml qui permet denvoyer des emails depuis notre application Symfony et nous utiliserons Twig pour crer un email au format HTML Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/BcTFEOA1Io4/default.jpg",
          "21:59",
          "2018-11-15",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KjC8VdQUFbI",
          "Symfony 4 par l'exemple (12/16) : Symfony Encore",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsencoresymfony1075Abonnezvous  httpsbitlyGrafikartSubscribeJusqu maintenant nous avons crit notre JavaScript directement dans nos vues Ce nest pas forcment la mthode idale en termes dorganisation et de structure nous allons plutt chercher  crire notre JavaScript dans des fichiers spars en les morcelant en modules Aujourdhui lorsque lon travaille sur du JavaScript de manire avance on a tendance  utiliser loutil webpackhttpswwwgrafikartfrformationswebpack qui permet de bundler notre JavaScript Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/KjC8VdQUFbI/default.jpg",
          "15:40",
          "2018-11-16",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LtoRB9mOBeM",
          "Symfony 4 par l'exemple (15/16) : Le problème n+1",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsperformancesdoctrine1078Abonnezvous  httpsbitlyGrafikartSubscribeDans ce dernier chapitre je vous propose de revenir sur le problme de performances au niveau de nos requtes SQL En effet on remarque un nombre important de requtes SQL sur les pages de listing de nos biens avec prs de 17 requtes pour nafficher que 12 biens Ce problme est li  lutilisation dun ORM et est appel le problme n  1Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/LtoRB9mOBeM/default.jpg",
          "28:18",
          "2018-11-19",
          "php"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "sNmpddaseK8",
          "Symfony 4 par l'exemple (16/16) : Créer un bundle, reCAPTCHA",
          "Apprendre NodeJS",
          "PLjwdMgw5TTLV7VsXd9NOeq39soYXORezN",
          "Article  httpsgrafikartfrtutorielsrecaptchabundle1094Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant dcouvrir comment crer un code rutilisable en utilisant le systme de Bundle de Symfony et nous allons crer un bundle pour mettre en place simplement reCAPTCHAhttpswwwgooglecomrecaptcha sur nos projetsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/sNmpddaseK8/default.jpg",
          "54:52",
          "2018-11-23",
          "php"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLUnvhOKLcpCG8ORQsfE7uB4",
  "Mettre en place un serveur web",
  "sql"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "dEQ8--CqKXE",
          "Mettre son site en ligne (1/4) : Héberger son site",
          "Mettre en place un serveur web",
          "PLjwdMgw5TTLUnvhOKLcpCG8ORQsfE7uB4",
          "Article  httpsgrafikartfrtutorielssiteuploadftp266Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons appris  crer nos premires pages HTML et  les mettre en forme  laide du CSS il est temps de les mettre en ligne afin quelles soient accessibles au plus grand nombre Pour mettre en ligne notre premier site Internet nous allons avoir besoin de deux choses Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/dEQ8--CqKXE/default.jpg",
          "24:40",
          "2018-10-19",
          "sql"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "NULUrtgnGeM",
          "Mettre son site en ligne (2/4) : Comment marche un nom de domaine ?",
          "Mettre en place un serveur web",
          "PLjwdMgw5TTLUnvhOKLcpCG8ORQsfE7uB4",
          "Article  httpsgrafikartfrtutorielsdnsfonctionnement1061Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido je vous propose de dcouvrir rapidement comment fonctionne le systme de DNS Lorsque vous vous rendez sur un site internet vous utilisez en gnral son nom de domaine Ce nom de domaine est facile  retenir pour nous les humains et permet de faire le lien vers ladresse relle du serveur son adresse IPSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/NULUrtgnGeM/default.jpg",
          "14:34",
          "2018-10-24",
          "sql"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Qxs2S4agyxk",
          "Mettre son site en ligne (3/4) : Qu'est ce que le HTTP ?",
          "Mettre en place un serveur web",
          "PLjwdMgw5TTLUnvhOKLcpCG8ORQsfE7uB4",
          "Article  httpsgrafikartfrtutorielshttp1062Abonnezvous  httpsbitlyGrafikartSubscribeAvant de vouloir aller plus loin et dapprendre  langage ct serveur il est important de comprendre comment le navigateur communique avec notre serveur Dans la vido prcdente nous avons vu que lorsque lon tape un nom de domaine le systme est capable de trouver ladresse IP du serveur Une fois quil a cette adresse ip le navigateur va tre en mesure demander une page  notre serveur Mais comment se passe cette demande Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/Qxs2S4agyxk/default.jpg",
          "21:20",
          "2018-10-25",
          "sql"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "_UpuZ0Y3k-c",
          "Mettre son site en ligne (4/4) : Comprends le SSL / HTTPS",
          "Mettre en place un serveur web",
          "PLjwdMgw5TTLUnvhOKLcpCG8ORQsfE7uB4",
          "Article  httpsgrafikartfrtutorielscomprendsssltls745Abonnezvous  httpsbitlyGrafikartSubscribeAujourdhui je vous propose de dcouvrir le SSL En prvision de futures vidos qui concerneront la mise en place du HTTPS sur nginx et sur Apache je pense quil est important de faire un point sur ce protocole afin de mieux comprendre ce que lon devra ensuite configurer sur notre serveurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/_UpuZ0Y3k-c/default.jpg",
          "13:12",
          "2016-02-24",
          "sql"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
  "Apprendre Ruby",
  "html css"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PE8FQ6zihhw",
          "Découverte du CSS (1/31) : Présentation",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielspresentationcss1034Abonnezvous  httpsbitlyGrafikartSubscribeMaintenant que nous avons vu lHTML je vous propose de dcouvrir le CSS Ce langage va permettre de mettre en forme les lments qui constitue notre page webSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PE8FQ6zihhw/default.jpg",
          "7:4",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "EM8UlPeBfuk",
          "Découverte du CSS (2/31) : Les sélecteurs",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsselecteurcss1035Abonnezvous  httpsbitlyGrafikartSubscribeLes slecteurs vont permettre de cibler les lments que lon souhaite mettre en forme dans notre page web Il peuvnet tre plus ou moins complexe suivant les situationsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/EM8UlPeBfuk/default.jpg",
          "30:36",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "k1ID41O4FNM",
          "Découverte du CSS (3/31) : Le modèle de boîte",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsboitecss1036Abonnezvous  httpsbitlyGrafikartSubscribeAvant de nous lancer dans lexploration des diffrentes proprites il est important de comprendre comment fonctionne le modle de botehttpsdevelopermozillaorgfrdocsApprendreCSSIntroductionC3A0CSSLemodC3A8ledeboC3AEteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/k1ID41O4FNM/default.jpg",
          "34:5",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "-uuk57Tu9ds",
          "Découverte du CSS (4/31) : Police & textes",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielspolicetextecss1037Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant voir les diffrentes proprites qui ont attrait  la personnalisations des textes au niveau de notre page webSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/-uuk57Tu9ds/default.jpg",
          "29:55",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "e-GTdjI6vC4",
          "Découverte du CSS (5/31) : Les formats de couleurs",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielscouleurscss1038Abonnezvous  httpsbitlyGrafikartSubscribeComme nous lavons vu dans le chapitre prcdent il est possible de dfinir la couleur de certains lments mais nous navons pas forcment parl des formats de couleurs accepts Aussi je vous propose de nous arrter un moment pour voir comment on peut dcrire une couleur en CSSSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/e-GTdjI6vC4/default.jpg",
          "10:33",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UA1bPCEEo8M",
          "Découverte du CSS (6/31) : Les unités de mesures",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsunitscss1039Abonnezvous  httpsbitlyGrafikartSubscribeComme avec les couleurs il est possible de dfinir les dimensions de nos lments de plusieurs manires En plus des units classiques comme le pixel ou le cm il existe de nombreuses units spcifiques au CSS qui peuvent tre pertinentes suivant les situationsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/UA1bPCEEo8M/default.jpg",
          "16:47",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YGm1T7bVmJQ",
          "Découverte du CSS (7/31) : Le positionnement",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielspositionscss1040Abonnezvous  httpsbitlyGrafikartSubscribeNous allons voir dans ce chapitre comment positionner nos lments au sein de notre page web Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/YGm1T7bVmJQ/default.jpg",
          "18:53",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "hfykeYvwZXs",
          "Découverte du CSS (8/31) : Les éléments flottants : float",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsfloatcss1041Abonnezvous  httpsbitlyGrafikartSubscribePar dfaut la pluspart des lments ceux en display block vont sempiler les uns sous les autres Cest un comportement que lon voudra parfois contourner pour juxtaposer des lments horizontalement On pourra alors avoir recours au lments flottantshttpsdevelopermozillaorgfrdocsWebCSSfloat qui permettent de sortir un lment du flux normal pour le placer  droite ou  gauche de son conteneurSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/hfykeYvwZXs/default.jpg",
          "19:45",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LNqBKTeeiWo",
          "Tutoriel CSS : Flexbox",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsflexbox806Abonnezvous  httpsbitlyGrafikartSubscribeFlexbox est un nouveau mode de mise en page display qui permet de disposer les lments de manire plus flexible et de grer de manire prvisible leur alignement quelque soit la taille de lcran Ce nouveau mode de disposition vient se positionner comme une amlioration du modle block reposant sur les floatsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/LNqBKTeeiWo/default.jpg",
          "33:38",
          "2016-09-06",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "OV0bOifr8AE",
          "Découverte du CSS (9/31) : La propriété background",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsbackgroundcss1042Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons nous attarder sur une proprit trs utile pour mettre en page notre site  la proprit backgroundhttpsdevelopermozillaorgfrdocsWebCSSbackground Cette proprit peut prendre de nombreuses valeurs et il est important de bien comprendre ce quelles signifientSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/OV0bOifr8AE/default.jpg",
          "18:40",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uCJxtO5b7Mw",
          "Découverte du CSS (10/31) : Le box-sizing",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsboxsizingcss1043Abonnezvous  httpsbitlyGrafikartSubscribeLe boxsizinghttpsdevelopermozillaorgfrdocsWebCSSboxsizing permet de modifier le modle de bote CSS qui est utilis pour calculer la largeur et la hauteur dun lment Il permet par exemple de faire entrer le padding dans le calcul de la largeur dun lment Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/uCJxtO5b7Mw/default.jpg",
          "4:16",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "T7U_WuaeVaQ",
          "Découverte du CSS (11/31) : TP : Création d'un blog",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielstpblogcss1044Abonnezvous  httpsbitlyGrafikartSubscribeAvant de continuer  dcouvrir de nouvelles choses je vous propose de faire un peu de travaux pratique en crant une page en conformment  une maquetteSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/T7U_WuaeVaQ/default.jpg",
          "1:15:35",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4T4vRdhkCxw",
          "Découverte du CSS (12/31) : La spécificité des sélecteurs",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsspecificiteselecteurcss1045Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre nous allons parler de la notion de spcificithttpsdevelopermozillaorgfrdocsCSSSpecificitC3A9redirectno des slecteurs CSS En effet un lment peut tre affect par plusieurs rgles provenant de plusieurs slecteurs diffrents Le navigateur doit alors choisir quelle valeur appliquer  notre lment en utilisant le principe de spcificit Bien comprendre le calcul fait par le navigateur permet de mieux prvoir les ventuels problmes et de mieux organiser son CSS pour avoir le moins de surprises possibleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/4T4vRdhkCxw/default.jpg",
          "8:48",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "iZe6211H14w",
          "Découverte du CSS (13/31) : La compatibilité des navigateurs",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielscompatibilitenavigateurcss1046Abonnezvous  httpsbitlyGrafikartSubscribeIl existe aujourdhui une multitude de navigateurs pour naviguer sur internet et mme si les standards sont unique on va trs rapidement remarquer des diffrences daffichage entre les navigateurs Heureusement il est possible dvaluer rapidement le niveau de compatibilit dune fonctionnalit  laide du site caniusehttpscaniusecomSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/iZe6211H14w/default.jpg",
          "13:7",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rEMVFPyoxDY",
          "Découverte du CSS (14/31) : Polices personnalisées",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielspolicepersocss1047Abonnezvous  httpsbitlyGrafikartSubscribeDans ce chapitre je vous propose de dcouvrir comment importer et utiliser des polices personnalises pour votre page web Nous allons aussi voir limpact que peut avoir lutilisation de ces polices sur le chargement de la pageSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/rEMVFPyoxDY/default.jpg",
          "20:52",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "89TfBQd3dII",
          "Découverte du CSS (15/31) : Pseudo-éléments",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielspseudoelementscss171Abonnezvous  httpsbitlyGrafikartSubscribeUn pseudo lmenthttpsdevelopermozillaorgfrdocsWebCSSPseudoC3A9lC3A9ments permet de mettre en forme certaines parties de llment cibl par un slecteur Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/89TfBQd3dII/default.jpg",
          "19:30",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jQG3hAbXQVY",
          "Découverte du CSS (16/31) : Transform",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielstransformcss1048Abonnezvous  httpsbitlyGrafikartSubscribeLa proprit transformhttpsdevelopermozillaorgfrdocsWebCSStransform permet dappliquer une transformation  un lment rotation translation chelleSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/jQG3hAbXQVY/default.jpg",
          "19:3",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "JOBlm6kWsMM",
          "Découverte du CSS (17/31) : Animation & Transition",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsanimationcss1049Abonnezvous  httpsbitlyGrafikartSubscribeLe CSS permet danimer certains lments en appliquant une transitionhttpsdevelopermozillaorgfrdocsWebCSStransition entre 2 tats ou en dclarant une animationhttpsdevelopermozillaorgfrdocsWebCSSanimation Il est possible de piloter diffrents lments de lanimation comme lacclration la dure ou encore le dlaiSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/JOBlm6kWsMM/default.jpg",
          "18:44",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "wu1Sk8iOPnE",
          "Découverte du CSS (18/31) : Media query et le responsive",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsmediaquerycss1050Abonnezvous  httpsbitlyGrafikartSubscribeAujourdhui les gens consomment internet sur une multitude de priphriques diffrents  PC tablette et tlphone Ces priphriques ont des tailles dcran compltement diffrente et il est ncessaire de faire en sorte que le site saffiche correctement sur chacun de ces priphrique Le CSS permet au travers de media query dajouter des conditions sur le type dcran et sur les dimensions pour adapter les rgles suivant les situationsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/wu1Sk8iOPnE/default.jpg",
          "32:55",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "h7KjDZLeSRY",
          "Découverte du CSS (19/31) : TP : Réseau social",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielstpreseausocial1051Abonnezvous  httpsbitlyGrafikartSubscribeNous allons maintenant pratiquer les nouvelles choses que lon a vu en construisant le CSS dun rseau social On fera en sorte de rendre ce site responsive afin quil sadapte aux diffrents types dcransSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/h7KjDZLeSRY/default.jpg",
          "1:37:26",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bvjnbprOKeY",
          "Découverte du CSS (20/31) : TP Restaurant : Ouvrir la maquette",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielstprestaurantfigma1052Abonnezvous  httpsbitlyGrafikartSubscribeLobjectif de ce TP est doffrir un cas pratique au plus proche dun cas rel Nous allons partir ici dune maquette sketch fournit par un designer et essayer de crer le CSS qui correspond en tant le plus proche possible de la maquette originale Dans cette premire partie nous allons voir comment ouvrir le fichier pour lanalyserSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/bvjnbprOKeY/default.jpg",
          "7:46",
          "2018-10-09",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "JZ6R1PaEpww",
          "Découverte du CSS (28/31) : Les frameworks CSS",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsframeworkcss1063Abonnezvous  httpsbitlyGrafikartSubscribeSi vous essayez den apprendre un petit peu plus sur le CSS par vousmme il y a de fortes chances que vous entendiez parler des frameworks CSS et notamment de Bootstraphttpgetbootstrapcom On peut alors se demander sil est ncessaire dapprendre ces technologies pour avancer dans son apprentissageSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/JZ6R1PaEpww/default.jpg",
          "19:58",
          "2018-10-31",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "o5s9ia9ePwE",
          "Découverte du CSS (29/31) : Reset & normalize",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsresetnormalizecss1096Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons parler de deux outils que vous serez srement amen  utiliser lorsque vous ferez du CSS  Reset et Normalize  Ces outils permettent de contrebalancer le problme des styles par dfaut imposs par les navigateurs par exemple les paragraphes ont une marge par dfaut marges qui ne sont pas forcment consistantes entre les navigateursSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/o5s9ia9ePwE/default.jpg",
          "7:25",
          "2018-12-13",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "IUPgwXZhQhg",
          "Découverte du CSS (30/31) : Les variables CSS",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsvariablescss1098Abonnezvous  httpsbitlyGrafikartSubscribeDans cette vido nous allons voir comment utiliser les variables CSShttpsdevelopermozillaorgfrdocsWebCSSLesvariablesCSS Les variables permettent dviter au maximum la rptition dune valeur au sein dune feuille de style et permettent davoir un code CSS plus flexible et dynamique Le fonctionnement est extrmement simple et les variables se dfinissent de la manire suivante Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/IUPgwXZhQhg/default.jpg",
          "11:27",
          "2019-01-07",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "DPVGByyOGqA",
          "Découverte du CSS (31/31) : Les préprocesseurs CSS",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielspreprocesseurcss1099Abonnezvous  httpsbitlyGrafikartSubscribeLes prprocesseurs sont des outils qui vont vous permettre de transformer votre CSS et peuvent tre utiliss pour plusieurs raisons  Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/DPVGByyOGqA/default.jpg",
          "7:21",
          "2019-01-08",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "N-aiPrb1rOM",
          "Tutoriel HTML: Images responsives",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsimagesresponsive1152Abonnezvous  httpsbitlyGrafikartSubscribeDans ce tutoriel je vous propose de dcouvrir comment utiliser les images responsives en HTMLhttpsdevelopermozillaorgfrdocsApprendreHTMLCommentAjouterdesimagesadaptativesC3A0unepagewebSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/N-aiPrb1rOM/default.jpg",
          "17:42",
          "2019-03-29",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "FG3FAtDgsJU",
          "Les techniques d'espacement en CSS, LA 3ème VA VOUS ETONNER !",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsespacemargincss1179Abonnezvous  httpsbitlyGrafikartSubscribeAujourdhui nous nallons pas forcment voir quelque chose de trs complexe mais nous allons essayer de rflchir  un problme simple en CSS Comment espacer plusieurs lments au sain dune section Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/FG3FAtDgsJU/default.jpg",
          "25:50",
          "2019-08-07",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "9gZugKEczJ0",
          "Découverte du CSS : Chapitre 11, Flexbox",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielsflexbox806Abonnezvous  httpsbitlyGrafikartSubscribeFlexbox est un nouveau mode de mise en page display qui permet de disposer les lments de manire plus flexible et de grer de manire prvisible leur alignement quelque soit la taille de lcran Ce nouveau mode de disposition vient se positionner comme une amlioration du modle block reposant sur les floatsSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/9gZugKEczJ0/default.jpg",
          "35:",
          "2019-10-02",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PDiD_Q4YiqM",
          "Découverte du CSS : Chapitre 29, Mini TP : Topbar",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielstptopbarcss1232Abonnezvous  httpsbitlyGrafikartSubscribeBienvenue dans cette nouvelle vido o aujourdhui je vous propose de pratiquer un peu le CSS  travers un petit exemple concret  une topbar responsive Pour suivre cette vido vous pouvez copier le projet disponible sur figmahttpswwwfigmacomfilewXp3rT0R9UFRQbqAaMvZCNCSSEnigmanodeid03A1Soutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/PDiD_Q4YiqM/default.jpg",
          "37:53",
          "2020-01-30",
          "html css"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "CFVP85BKaxU",
          "Tutoriel CSS : Personnaliser des checkbox en CSS",
          "Apprendre Ruby",
          "PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8",
          "Article  httpsgrafikartfrtutorielscheckboxcss423Abonnezvous  httpsbitlyGrafikartSubscribeUn des problmes que lon rencontre assez tt lorsque lon travaille sur le CSS et limpossibilit de styliser certains lments de formulaire  comme les cases  cocher ou les radios Aussi si vous souhaitez crer une interface spcifique pour ce type de champs il va falloir tre cratif et contourner le problmeSoutenez GrafikartDevenez premium  httpsgrafikartfrpremiumDonnez via Utip  httpsutipiografikartRetrouvez Grafikart surLe site  httpsgrafikartfrTwitter  httpstwittercomgrafikartfrDiscord  httpsgrafikartfrtchat",
          "https://i.ytimg.com/vi/CFVP85BKaxU/default.jpg",
          "17:22",
          "2021-07-13",
          "CSS,Tutoriel,Checkbox,pseudo-élément,Grafikart"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLjwdMgw5TTLWqnmYIogcaPVWoFLRsID6B",
  "Tester son code Javascript",
  "javascript"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "XYqkBDudz5Y",
          "Le statut de Freelance, Introduction",
          "Tester son code Javascript",
          "PLjwdMgw5TTLWqnmYIogcaPVWoFLRsID6B",
          "Si vous avez des questions sur le statut de Freelance nhsitez pas  nous rendre visite sur httpswwwgrafikartfrtchat",
          "https://i.ytimg.com/vi/XYqkBDudz5Y/default.jpg",
          "1:47",
          "2018-06-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "GufWXO1RUo0",
          "Le statut de Freelance",
          "Tester son code Javascript",
          "PLjwdMgw5TTLWqnmYIogcaPVWoFLRsID6B",
          "Si vous avez des questions sur le statut de Freelance nhsitez pas  nous rendre visite sur httpswwwgrafikartfrtchat0000 Introduction658 Le statut1822 Les projets2400 Les clients3105 La solitude",
          "https://i.ytimg.com/vi/GufWXO1RUo0/default.jpg",
          "34:50",
          "2018-06-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "v9rEiHQFpmM",
          "Le statut de Freelance, vos questions",
          "Tester son code Javascript",
          "PLjwdMgw5TTLWqnmYIogcaPVWoFLRsID6B",
          "Si vous avez des questions sur le statut de Freelance nhsitez pas  nous rendre visite sur httpswwwgrafikartfrtchat0000 Introduction0014  Kadevland  As tu pens au espacebureau de coworking 0105  Brandon  Kakaka  Kadevland  Comment trouver les projets quel moyen quelle plateforme0250  parweb  passe tu pars une boite de commercial pour trouver des missions 0345  Iseldore  Comment sy retrouver dans tous les statuts possibles  Que doisje choisir 0515  Brandon  Cest quoi un chiffre daffaire concrtement 0515  Victor  A quel moment estil interessant de passer a un autre statut que celui dauto entrepreneur Pour quel statut du coup0729  WebD  Comment grestu le paiement Paiement avant ou aprs Un accompte1031  Yubo  Quels sont les logiciels indispensables pour la comptabilit 1212  Brandon  Peuxton relement savoir si nous sommes fait pour tre Freelance avant de ce lancer tte baiss 1418  Mahdy  Estce que lACCRE est si simple  avoir que a pour les moins de 26 ans  ya til des moyens pour maximiser ses chances 1508  Brandon  Comment grer le temps divertissement le boulot la vie prive 1705  Shin  Se mettre en autoentrepreneur risqu ou pas 1835  maescristo  combien tu factures  la journe pour attirer les clients 2023  betaWeb  Comment bien grer sa journe  Pourquoi estce important de travailler  son propre rythme lorsque cela est possible 2135  betaWeb  Comment bien grer les relations avec un client chiant ou non 2425  WebD  Comment faire pour sortir de sa bulle lorsquon travaille seul chez sois Je veux dire se dgourdir les jambes prendre une marche etc2640  learnCode  Il faudrait un portfolio et un github obligatoirement  Il faudrait des diplmes 2914  AlexKTP  Comment choisir ses missions 3110  Swith  Comment se calcule une facturation 3335  Artemix  Comment dfinir un devis grer un contrat 3518  chloecorfmat  Pourquoi avoir choisir lEURL  il me semble que cest le statut que tu as choisi3650  Hugo  Fautil dclarer son statut de freelancer  Si oui comment procdeton  Avantages  Inconvnients 3800  JMERISE  Par ou et comment ce lancer avec 0 exprience pro 3953  Howlett  Salut cest possible de cumuler un CDI 37h et tre freelance  ct de temps en temps 4049  duffJohn  Quelles dmarches faut il faire une fois le plafond TVA atteint en autoentreprise  ou mme le plafond de CA4200  Fov  Fautil tre un full stack obligatoirement 4356  itman  peux tu dtailler ce quil y a  payer charge social formation ",
          "https://i.ytimg.com/vi/v9rEiHQFpmM/default.jpg",
          "47:35",
          "2018-06-14",
          "javascript"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cz-g_l5GNTA",
          "Le statut de Freelance, Mon expérience",
          "Tester son code Javascript",
          "PLjwdMgw5TTLWqnmYIogcaPVWoFLRsID6B",
          "0000 Introduction0035  AutoEntrepreneur Origin story0724  Passage en EURL1145  Cration de lEURL1400  Comment se passe la facturation  dclaration 2148  Sur quoi  Comment je travaille  3455  Parlons argent 3857  Pour rsumer",
          "https://i.ytimg.com/vi/cz-g_l5GNTA/default.jpg",
          "41:31",
          "2018-06-14",
          "javascript"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
  "Entity Framework Core Training",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Xeb6fMCWxOE",
          "Entity Framework Core | EF Core | Day 1 | By Pranaya Rout | Dot Net Core Tutorials | Online Training",
          "Entity Framework Core Training",
          "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
          "Entity Framework Core  EF Core  Day 1  By Pranaya Rout  Dot Net Core Tutorials  Online TrainingWhat is Entity Framework CoreEntity Framework EF Core is an ORM ObjectRelational Mapper Framework for data access in NET Core It was released along with NET Core and is an Extensible Lightweight Open Source and CrossPlatform Version of Entity Framework data access technology It works on multiple operating systems like Windows Mac and LinuxTo take full advantage of this Entity Framework Core Tutorials you should have the basic knowledge of C and any database such as SQL Server Oracle or MySQL to gain more knowledge of these tutorials Having NET Core Visual Studio and SQL Server installed on your computer is goodText Document Links Introduction to Entity Framework Core httpsdotnettutorialsnetlessonentityframeworkcoreHow to Install Entity Framework Core using Visual Studio httpsdotnettutorialsnetlessoninstallentityframeworkcoreDbContext Class in Entity Framework Core httpsdotnettutorialsnetlessondbcontextentityframeworkcoreDatabase Connection String in Entity Framework Core httpsdotnettutorialsnetlessondatabaseconnectionstringinentityframeworkcoreYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsEntityFrameworkCore EFCore EntityFramework ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/Xeb6fMCWxOE/default.jpg",
          "2:25:24",
          "2023-10-05",
          "Introduction to Entity Framework Core,How to Install Entity Framework Core using Visual Studio,DbContext Class in Entity Framework Core,Database Connection String in Entity Framework Core,Introduction to EF Core,How to Install EF Core using Visual Studio,DbContext Class in EF Core,Database Connection String in EF Core"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cScOQ5eNEY0",
          "CRUD Operations in Entity Framework Core | Day 2 | By Pranaya Rout | Dot Net Core Tutorials",
          "Entity Framework Core Training",
          "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
          "CRUD Operations in Entity Framework Core  Day 2  By Pranaya Rout  Dot Net Core Tutorials  EF Core  Online TrainingCRUD Operations in Entity Framework Core EF CoreCRUD Operation means we need to perform Create Retrieve Update and Delete Operations To perform the Insert Update and Delete operations in Entity Framework Core we have two persistence scenarios ie connected and disconnectedThe same DbContext instance retrieves and saves the entities in the Connected scenario On the other hand the DbContext instance differs in the disconnected scenario One DbContext instance retrieves the data and another DbContext instance saves the data into the database An entity that contains data in its scalar property will be either INSERTED UPDATED or DELETED based on the State of the Entity The Entity Framework Core API builds and executes the INSERT UPDATE and DELETE SQL Statements for the entities whose Entity State is Added Modified and Deleted respectively when the SaveChanges method is called on the DbContext instanceText Document Links CRUD Operations in Entity Framework Core httpsdotnettutorialsnetlessoncrudoperationsinentityframeworkcoreYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsCRUDEntityFrameworkCore EFCoreCRUD EntityFrameworkCore EntityFrameworkCRUDOperation ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/cScOQ5eNEY0/default.jpg",
          "1:38:16",
          "2023-10-05",
          "CRUD Operations in Entity Framework Core,Create Operation using Entity Framework Core,Read Operation using Entity Framework Core,Update Operation in Entity Framework Core,Delete Operation in Entity Framework Core,CRUD Operations in EF Core,Create Operation using EF Core,Read Operation using EF Core,Update Operation in EF Core,Delete Operation in EF Core"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KCJsFBcQqxs",
          "LINQ to Entities in Entity Framework Core | Day 3 | By Pranaya Rout | Dot Net Core Tutorials",
          "Entity Framework Core Training",
          "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
          "LINQ to Entities in Entity Framework Core  Day 3  By Pranaya Rout  Dot Net Core TutorialsEntity States in Entity Framework Core EF CoreThe Entity Lifecycle in Entity Framework Core describes how an Entity is created added modified deleted etc Entities have many states during their lifetime EF Core maintains the state of each entity during its lifetime Each entity has a state based on the operation performed via the context class the class derived from the DbContext classLINQ to Entities in EF CoreLINQ Language Integrated Query is a powerful feature in NET that allows developers to write queries directly using C or VBNET language When working with Entity Framework Core EF Core we can use LINQ to query our entities in a way that feels like we are working with inmemory objects This approach is called LINQ to EntitiesQuerying in Entity Framework Core using LINQ to Entities remains the same as in Entity Framework 6x with more optimized SQL queries and the ability to include CVBNET functions into LINQtoEntities queriesText Document Links Entity States in Entity Framework Core httpsdotnettutorialsnetlessonentitystatesinentityframeworkcoreLINQ to Entities in Entity Framework Core httpsdotnettutorialsnetlessonlinqtoentitiesinentityframeworkcoreYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsEntitStatesInEntityFrameworkCore LINQtoEntitiesEntityFrameworkCore EntitiesEntityFrameworkCore ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/KCJsFBcQqxs/default.jpg",
          "1:58:48",
          "2023-10-06",
          "Entity States in Entity Framework Core,LINQ to Entities in Entity Framework Core,Entity States in EF Core,LINQ to Entities in EF Core,Entity Framework Core Entity States,Entity Framework Core LINQ to Entities,EF Core Entity States,EF Core LINQ to Entities"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "A3mJ7q6EtcQ",
          "Lazy vs. Eager vs. Explicit Loading in EF Core | Day 4 | By Pranaya Rout | Dot Net Core Tutorials",
          "Entity Framework Core Training",
          "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
          "Lazy vs Eager vs Explicit Loading in EF Core  Day 4  By Pranaya Rout  Dot Net Core TutorialsEager Loading in EF CoreEager loading is one of the approaches Entity Framework Core EF Core provides to load related data of an entity from the database This approach fetches the related data as part of the initial query resulting in the primary entity and its related data being retrieved in a single roundtrip to the databaseLazy Loading in Entity Framework CoreLazy Loading is a Process where Entity Framework Core loads the related entities on demand That means the related entities or child entities are loaded only when it is being accessed for the first time So in simple words we can say that Lazy loading delays the loading of related entities until you specifically request it Explicit Loading in Entity Framework CoreEven if Lazy Loading is disabled in Entity Framework Core it is still possible to lazily load the related entities but it must be done with an explicit call Here we need to explicitly call the Load method to load the related entities That means the EF Cores Explicit Loading loads related data from the database separately by calling the Load methodText Document Links Lazy Loading in Entity Framework Core httpsdotnettutorialsnetlessonlazyloadinginentityframeworkcoreEager Loading in Entity Framework Core httpsdotnettutorialsnetlessoneagerloadinginentityframeworkcoreExplicit Loading in Entity Framework Core httpsdotnettutorialsnetlessonexplicitloadinginentityframeworkcoreYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsLazyLoadingEntityFrameworkCore EagerLoadingEntityFrameworkCore ExplicitLoadingEntityFrameworkCore ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/A3mJ7q6EtcQ/default.jpg",
          "1:53:2",
          "2023-10-09",
          "Lazy Loading in Entity Framework Core,Eager Loading in Entity Framework Core,Explicit Loading in Entity Framework Core,Lazy Loading in EF Core,Eager Loading in EF Core,Explicit Loading in EF Core,Entity Framework Core Lazy Loading,Entity Framework Core Eager Loading,Entity Framework Core Explicit Loading,EF Core Lazy Loading,EF Core Eager Loading,EF Core Explicit Loading"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "7LgYEQjHLQY",
          "Data Annotation Attributes in Entity Framework Core | Day 5 | Entity Framework Core Tutorials",
          "Entity Framework Core Training",
          "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
          "Data Annotation Attributes in Entity Framework Core  Day 5  Entity Framework Core TutorialsDefault Conventions in EF Core Entity Framework Core EF Core uses a set of default conventions that determines how to map between our database and entity classes These conventions help us reduce the configuration code to achieve this mappingData Annotation Attributes in Entity Framework CoreData Annotations are nothing but Attributes or Classes that can be applied to our domain classes and their properties to override the default conventions that Entity Framework Core followsThe Data Annotations Attributes are included in separate namespaces called SystemComponentModelDataAnnotations and SystemComponentModelDataAnnotationsSchemaTable Data Annotation Attribute in Entity Framework CoreThe Table Data Annotation Attribute in Entity Framework Core can be applied to a domain class to configure the corresponding database table name and schema It overrides the default convention in Entity Framework Core As per the default conventions Entity Framework Core will create a database table whose name is the same as the DbSet Property nameColumn Data Annotation Attribute in Entity Framework CoreThe Column Data Annotation Attribute can be applied to one or more properties of a domain entity to configure the corresponding database column name column order and column data type That means it represents the database column that a property is mapped toIn Entity Framework Core EF Core the Column attribute allows developers to provide additional configuration related to how an entity class property maps to a database column With the Column attribute you can specify things like the name of the database column its order and its data typeText Document Links Default Conventions in Entity Framework Core httpsdotnettutorialsnetlessondefaultconventionsinentityframeworkcoreData Annotation Attributes in Entity Framework Core httpsdotnettutorialsnetlessondataannotationattributesinentityframeworkcoreTable Attribute in Entity Framework Core httpsdotnettutorialsnetlessontableattributeinentityframeworkcoreColumn Attribute in Entity Framework Core httpsdotnettutorialsnetlessoncolumnattributeinentityframeworkcore You can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsDataAnnotationAttributesEntityFrameworkCore TableAttributeEntityFrameworkCore ColumnAttributeEntityFrameworkCore DefaultConventionsEntityFrameworkCore ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/7LgYEQjHLQY/default.jpg",
          "1:35:34",
          "2023-10-10",
          "Default Conventions in Entity Framework Core,Data Annotation Attributes in Entity Framework Core,Table Attribute in Entity Framework Core,Column Attribute in Entity Framework Core,Default Conventions in EF Core,Data Annotation Attributes in EF Core,Table Attribute in EF Core,Column Attribute in EF Core"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KIFavlOitoo",
          "Key Attribute | Foreign Key Attribute | Index Attribute in Entity Framework Core | Dot Net Tutorials",
          "Entity Framework Core Training",
          "PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ",
          "Key Attribute  Foreign Key Attribute  Index Attribute in Entity Framework Core  Dot Net Core Tutorials  Pranaya RoutKey Attribute in Entity Framework CoreThe Key Data Annotation Attribute in Entity Framework Core can be applied to a property of an entity to make it the key property and it will also make that corresponding column the Primary Key column in the databaseForeignKey Attribute in Entity Framework CoreIn Entity Framework Core EF Core the ForeignKey Attribute is used to configure the relationship between two entities This attribute overrides the EF Cores default foreign key convention which is followed otherwise By default Entity Framework Core searches for a foreign key property in the Dependent Entity with the same name as the primary key property in the Principal EntityIndex Attribute in Entity Framework CoreEntity Framework Core EF Core provides the Index attribute to create an index on a particular column in the database Creating an index on multiple columns using the Index Attribute is also possible Adding the Index Attribute to one or more properties of an Entity will cause Entity Framework Core to create the corresponding index in the databaseText Document Links Key Attribute in Entity Framework Core httpsdotnettutorialsnetlessonkeyattributeinentityframeworkcoreForeignKey Attribute in Entity Framework Core httpsdotnettutorialsnetlessonforeignkeyattributeinentityframeworkcoreIndex Attribute in Entity Framework Core httpsdotnettutorialsnetlessonindexattributeinentityframeworkcoreYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsKeyAttributeEntityFrameworkCore ForeignKeyAttributeEntityFrameworkCore IndexAttributeEntityFrameworkCore KeyAttributeEFCore ForeignKeyAttributeEFCore IndexAttributeEFCore ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EFCore EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/KIFavlOitoo/default.jpg",
          "1:53:32",
          "2023-10-10",
          "Key Attribute in Entity Framework Core,ForeignKey Attribute in Entity Framework Core,Index Attribute in Entity Framework Core,Key Attribute in EF Core,ForeignKey Attribute in EF Core,Index Attribute in EF Core,Entity Framework Core Key Attribute,Entity Framework Core ForeignKey Attribute,Entity Framework Core Index Attribute,EF Core Key Attribute,EF Core ForeignKey Attribute,EF Core Index Attribute"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06KwHZ4zv83zJONFpwuix5nQ",
  "Advanced C# Training",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "IDNd5uSmhTU",
          "Advanced C# Training | Day - 1 | Introduction to C# Training | Dot Net Tutorials | By Pranaya Rout",
          "Advanced C# Training",
          "PLNgSFZ9yC06KwHZ4zv83zJONFpwuix5nQ",
          "Advanced C Training Online Training  Day  1  Introduction to C Training  Dot Net Tutorials  By Pranaya RoutIn this Advanced CNET Online Training we will cover all the basic and advanced concepts of C This Advanced CNET Online Training course will explain using different types of applications including the Console Windows ASPNET Core MVC and Web API ASPNET MVC and Web API by taking some realtime scenariosIt is very important to understand CNET as it is the base for all types of applications CNET is the most powerful programming language among all programming languages available in the NET frameworkIn this Training you will learn Basic C Concepts OOPs Concepts Collection Framework Exception Handling NET Core Architecture Multithreading Asynchronous Programming Parallel Programming Events and Delegates Lambda Expression and Annonymous Methods File Handling Reflection Automapper C New Features Entity Framework Core ADO NET Core SOLID Design Principles Gang of Four 23 Design Patterns LINQ Dependency and Repository Design Patterns More than 50 Logical Programs and many more If you want to participate in this training please join the telegram group below Join Telegram httpstelegrammedqhg6SdNRfkwNjllYou can even contact us directly using the below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetFor Detailed Course Syllabus please visit the following URLhttpsdotnettutorialsnetlessoncsharpdotnetonlinetrainingDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JON Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/IDNd5uSmhTU/default.jpg",
          "1:39:44",
          "2023-09-06",
          "Basic C# Concepts,OOPs Concepts,Collection Framework,Exception Handling,.NET Core Architecture,Multithreading,Asynchronous Programming,Parallel Programming,Events and Delegates,Lambda Expression and Annonymous Methods,File Handling,Reflection,Automapper,C# New Features,Entity Framework Core,ADO .NET Core,SOLID Design Principles,Gang of Four 23 Design Patterns,LINQ,Dependency and Repository Design Patterns"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "JXuylTuOnRU",
          "Dot Net Developer Road Map in 2023 | Dot Net Online Training | Pranaya Rout | Day 2 | Advanced C#",
          "Advanced C# Training",
          "PLNgSFZ9yC06KwHZ4zv83zJONFpwuix5nQ",
          "Dot Net Developer Road Map in 2023  Dot Net Online Training  Pranaya Rout  Day 2  Advanced C Training Online TrainingNET Developer Roadmap for 2023The NET Ecosystem is vast and constantly evolving with new tools frameworks and libraries emerging regularly to help developers develop different kinds of applications As a NET developer staying updated with the latest trends and technologies is essential for success in this highly competitive IT Industry Now let us try to understand what essential resources and knowledge are mandatory and optional as a NET developer in 2023Here is a roadmap for becoming a proficient NET developer encompassing the broader ecosystem This roadmap gives an idea of the knowledge and skills one might acquire to become a proficient NET developerIn this Advanced CNET Online Training we will cover all the basic and advanced concepts of C This Advanced CNET Online Training course will explain using different types of applications including the Console Windows ASPNET Core MVC and Web API ASPNET MVC and Web API by taking some realtime scenariosIt is very important to understand CNET as it is the base for all types of applications CNET is the most powerful programming language among all programming languages available in the NET frameworkIn this Training you will learn Basic C Concepts OOPs Concepts Collection Framework Exception Handling NET Core Architecture Multithreading Asynchronous Programming Parallel Programming Events and Delegates Lambda Expression and Annonymous Methods File Handling Reflection Automapper C New Features Entity Framework Core ADO NET Core SOLID Design Principles Gang of Four 23 Design Patterns LINQ Dependency and Repository Design Patterns More than 50 Logical Programs and many more If you want to participate in this training please join the telegram group below Join Telegram httpstelegrammedqhg6SdNRfkwNjllYou can even contact us directly using the below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetFor Detailed Course Syllabus please visit the following URLhttpsdotnettutorialsnetlessoncsDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JON Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/JXuylTuOnRU/default.jpg",
          "1:42:56",
          "2023-09-07",
          "Basic C# Concepts,OOPs Concepts,Collection Framework,Exception Handling,.NET Core Architecture,Multithreading,Asynchronous Programming,Parallel Programming,Events and Delegates,Lambda Expression and Annonymous Methods,File Handling,Reflection,Automapper,C# New Features,Entity Framework Core,ADO .NET Core,SOLID Design Principles,Gang of Four 23 Design Patterns,LINQ,Dependency and Repository Design Patterns,More than 50 Logical Programs and many more"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PLm8pSnpRj4",
          "Introduction to Programming  Languages| Dot Net Online Training | Pranaya Rout | Day 3| Advanced C#",
          "Advanced C# Training",
          "PLNgSFZ9yC06KwHZ4zv83zJONFpwuix5nQ",
          "Introduction to Programming  Languages Dot Net Online Training  Pranaya Rout  Day 3  Advanced CWhat is Computer languageA computer language is also a set of instructions in other words we can say that a set of programs that the computer can understand So in simple words we can say that a computer language is a language used to communicate with a computerWhat is a TranslatorThe users instructions are always in English which is called source code But the computer cannot understand this source code and the computers understandable code is binarymachine 0s and 1s We use the interface software called translators to convert this source code into binary codeWhat are Standalone ApplicationsThe application we install on our computer is called a standalone application To work with any application if you install that software into your computer then it is called a standalone application For Example if you want to play some videos we generally use VLC Media PLAYER To create a documentation or PowerPoint presentation we generally go for MS Office To browse something from the internet we are using Mozilla Firefox or Google Chrome All these are standalone applicationsWhat are Web applicationsWithout installing any software on our machine it is called a web application if we are working with the software using a web browser We regularly use gmailcom facebookcom YouTube and googlecom we dont need to install these applications on our machine before using them It is independent of the operating system which is not dependent on a particular one So we only need a web browser like Google Chrome Mozilla Firefox Opera etcProgramming MethodologiesThe programming Paradigms are the stylesmethodologies of writing the code in a program Various programming styles have been adopted depending on the requirements There have been different styles used since the beginning of programming languages and now we will explore a few wellknown ways as follows1 Monolithic Programming2 Modular Procedural Programming3 ObjectOriented ProgrammingIn this Advanced CNET Online Training we will cover all the basic and advanced concepts of C This Advanced CNET Online Training course will explain using different types of applications including the Console Windows ASPNET Core MVC and Web API ASPNET MVC and Web API by taking some realtime scenariosIt is very important to understand CNET as it is the base for all types of applications CNET is the most powerful programming language among all programming languages available in the NET frameworkIn this Training you will learn Basic C Concepts OOPs Concepts Collection Framework Exception Handling NET Core Architecture Multithreading Asynchronous Programming Parallel Programming Events and Delegates Lambda Expression and Annonymous Methods File Handling Reflection Automapper C New Features Entity Framework Core ADO NET Core SOLID Design Principles Gang of Four 23 Design Patterns LINQ Dependency and Repository Design Patterns More than 50 Logical Programs and many more If you want to participate in this training please join the telegram group below Join Telegram httpstelegrammedqhg6SdNRfkwNjllYou can even contact us directly using the below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetFor Detailed Course Syllabus please visit the following URLhttpsdotnettutorialsnetlessoncsDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JON Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/PLm8pSnpRj4/default.jpg",
          "1:22:7",
          "2023-09-08",
          "Basic C# Concepts,OOPs Concepts,Collection Framework,Exception Handling,.NET Core Architecture,Multithreading,Asynchronous Programming,Parallel Programming,Events and Delegates,Lambda Expression and Annonymous Methods,File Handling,Reflection,Automapper,C# New Features,Entity Framework Core,ADO .NET Core,SOLID Design Principles,Gang of Four 23 Design Patterns,LINQ,Dependency and Repository Design Patterns,More than 50 Logical Programs and many more"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
  "ASP. NET Core (.NET 6) Online Training",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "VBTcHsVGCYk",
          "Introduction To ASP.NET Core Tutorials | ASP.NET Core Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Introduction To ASPNET Core Tutorials  ASPNET Core Online TrainingIn this training you will learn the basic and advanced concepts of dot net core This training is entirely industryorientedASPNET Core Tutorials are for whomThese ASPNET Core Tutorials are designed for Beginners and Professional Developers who want to learn ASPNET Core step by step Here in these NET Core Tutorials we will provide a handson approach to the subject with stepbystep program examples that will assist you in learning and putting the acquired knowledge into practiceASPNET Core NETASPNET Core NET is a free opensource and cloudoptimized framework that can run on Windows Linux or macOS You can say it is the new version of ASPNET The framework is a complete rewrite from scratch to make it opensource modular and crossplatformASPNET Core           Web Framework           OpenSource           CrossPlatform           Modular           Cloud Optimize           Runs on top of the NET Core and NET FrameworkWhy NET CoreThere are some limitations to the NET Framework For example it only runs on the Windows OS Platform Also you need to use different NET APIs for different Windows devices such as Windows Desktop Windows Store Windows Phone and Web Applications In addition to this the NET Framework is a machinewide framework Any changes made to it affect all applications that depend on itThese Training Videos are designed for Students Freshers Beginners and Professional Software Developers who want to learn and enhance their knowledge of ASPnet Core MVC Core and Net Core Web API Applications Here we will explain all the ASPnet Core MVC core and Net Core Web API step by step ie first we will discuss the definition then we will give simple as well as multiple realtime examplesFor live training you can contact us using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFrameworkDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/VBTcHsVGCYk/default.jpg",
          "2:5:51",
          "2023-07-20",
          "#aspdotnetcoretutorial,#dotnetcore,Introduction to ASP.NET Core Framework,History of ASP.NET,What is ASP.NET Core,Why ASP.NET Core,Where can we Develop Applications using .NET Core,What the ASP.NET Core Doesn’t have,.NET Core vs. ASP.NET Core,Overview of Microsoft Web Technologies"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "AbPsZ-MRvzA",
          "Introduction to ASP NET Core Framework | Day 2 | Dot Net Tutorials | Pranaya Rout | Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Introduction to ASP NET Core Framework  Day 2  Dot Net Tutorials  Pranaya Rout  Online TrainingWhat is ASPNET CoreAccording to Microsoft ASPNET Core is the opensource version of ASPNET that runs on Windows Linux macOS and DockerASPNET Core is the new version of the ASPNET Web Framework mainly targeted to run on the NET Core Platform ASPNET Core is a FREE OPENSOURCE HIGHPERFORMANCE LIGHTWEIGHT AND CROSSPLATFORM Framework for building Web Applications on the NET NET Core Platform It is designed to run on the cloud as well as onpremises Overview of Microsoft Web TechnologiesASPNET is a web technology for building web applications ASPNET offers several frameworks for building web applications They are Web Forms ASPNET MVC ASPNET Web Pages ASPNET Core NET Blazor etc Each of the ASPNET web technologies offered by Microsoft has its own purpose None of the web frameworks is trying to replace the otherText Document Links Introduction to ASPNET Core Framework httpsdotnettutorialsnetlessonintroductiontoaspnetcoreOverview of Microsoft Web Technologies httpsdotnettutorialsnetlessonoverviewofmicrosoftwebtechnologiesFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFrameworkDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/AbPsZ-MRvzA/default.jpg",
          "1:53:38",
          "2023-09-14",
          "Introduction to ASP.NET Core Framework,History of ASP.NET,What is ASP.NET Core,Why ASP.NET Core,Where can we Develop Applications using .NET Core,What the ASP.NET Core Doesn’t have,.NET Core vs. ASP.NET Core,Overview of Microsoft Web Technologies"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "x4p4A7S53Wg",
          "ASP NET Core Environment Setup | Day 3 | Dot Net Tutorials | Pranaya Rout | Online Live Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "ASP NET Core Environment Setup  Day 3  Dot Net Tutorials  Pranaya Rout  Online Live TrainingTools and Software Required for the Development of NET 6 ApplicationsLet us understand what mandatory and optional software is required for ASPNET Core Application DevelopmentOperating SystemAny modern operating system such as Windows macOS or Linux can be used for ASPNET Core developmentIntegrated Development Environment IDEYou can choose from various IDEs for ASPNET Core development includingVisual Studio Visual Studio is a powerful and featurerich IDE developed by Microsoft It provides extensive tooling debugging capabilities and a rich development experience for ASPNET Core development Visual Studio is available for Windows and macOSVisual Studio Code Visual Studio Code is a lightweight crossplatform code editor supporting ASPNET Core development It offers excellent extension support integrated terminal and source control integration Visual Studio Code is available for Windows macOS and LinuxNet Core CLI Using NET Core CLI Command Line Interface tool we can also create build run and publish ASPNET Core applicationsNET SDKThis is the software development KIT and this KIT is helpful for the development and running of the application in the system The NET SDK Software Development Kit is required to build and run ASPNET Core applications It includes the NET runtime libraries and commandline tools You can download and install the NET SDK from the official NET websiteASPNET CoreASPNET Core is the framework for building web applications including Web APIs with NET Core It is included in the NET SDK and can be installed using the command line or through the Visual Studio installerPackage ManagerYou can choose between two popular package managers for NET Core developmentNuGet NuGet is the official package manager for NET and is integrated into Visual Studio It allows you to manage and install packages libraries and dependencies in your ASPNET Core projectnpm If you are using frontend technologies such as Angular or React in your ASPNET Core project you may need to use npm Node Package Manager to manage JavaScript packages and dependenciesDatabase Management System OptionalYou may need a database management system depending on your applications requirements Common options for ASPNET Core includeMicrosoft SQL Server A popular and robust relational database management system developed by MicrosoftSQLite It is a lightweight and filebased database system suitable for development and smallscale applicationsMySQL An opensource relational database management systemPostgreSQL A powerful opensource relational database management systemSQL Server Management Studio SSMSSQL Server Management Studio SSMS is an integrated environment for managing any SQL infrastructure from SQL Server to Azure SQL Database SSMS provides tools to configure monitor and administer instances of the SQL Server databasesAPI Client Postman Fiddler These are client tools used to test the Web APIs ie Restful Web Services which we will develop using ASPNET Core Web APIThese are the essential software components required for ASPNET Core Web API development Depending on your specific project needs you may also require additional software or tools such as Source Control Systems eg Git TFS etc API Documentation Generators eg Swagger or Testing Frameworks eg xUnit NUnitText Document Links ASPNET Core Environment Setup httpsdotnettutorialsnetlessonaspnetcoreenvironmentsetupDownload and Install Visual Studio 2022 httpsdotnettutorialsnetlessondownloadandinstallvisualstudio2022Download and Install NET Core SDK httpsdotnettutorialsnetlessondownloadandinstallnetcoresdkDownload and Install Visual Studio Code httpsdotnettutorialsnetlessondownloadandinstallvisualstudiocodeDownload and Install SQL Server 2022 httpsdotnettutorialsnetlessondownloadandinstallsqlserver2022Download and Install SSMS httpsdotnettutorialsnetlessondownloadandinstallssmsDownload and Install Postman and Fiddler httpsdotnettutorialsnetlessondownloadandinstallpostmanandfiddlerYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFrameworkDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/x4p4A7S53Wg/default.jpg",
          "1:24:48",
          "2023-09-14",
          "ASP.NET Core Environment Setup,Download and Install Visual Studio 2022,Download and Install .NET Core SDK,Download and Install Visual Studio Code,Download and Install SQL Server 2022,Download and Install SSMS,Download and Install Postman and Fiddler"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HFUCPwUmxCk",
          "Creating First ASP.NET Core Application | Dot Net Tutorials | Pranaya Rout | Day 4 | Live Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Creating First ASPNET Core Application  Dot Net Tutorials  Pranaya Rout  Day 4  Live TrainingText Document Links Creating First ASPNET Core Application httpsdotnettutorialsnetlessonaspnetcorewebapplicationusingnet6ASPNET Core Project File httpsdotnettutorialsnetlessonaspnetcoreprojectfileASPNET Core Main Method in NET 6 httpsdotnettutorialsnetlessonaspnetcoremainmethodYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFrameworkDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/HFUCPwUmxCk/default.jpg",
          "1:42:34",
          "2023-09-14",
          "Creating First ASP.NET Core Application,ASP.NET Core Project File,ASP.NET Core Main Method in .NET 6,ASP.NET Core Main Method"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "G5GfIJmPqV0",
          "ASP.NET Core Hosting Models | Part - 1 | | Dot Net Tutorials | Pranaya Rout | Day 5 | Live Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "ASPNET Core Hosting Models  Part  1   Dot Net Tutorials  Pranaya Rout  Day 5  Live TrainingWhat is the Hosting Model in ASPNET CoreIn ASPNET Core the Hosting Model refers to how the application is hosted and executed The hosting model defines how the application starts requests are processed and responses are returned to clients ASPNET Core has two types of Hosting Models InProcess and OutOfProcess What is the InProcess Hosting Model in ASPNET CoreIn the case of the InProcess Hosting Model the ASPNET Core Web Application will be hosted inside of the IIS Worker Process ie w3wpexe and IIS is the only Web Server going to handle the Incoming HTTP RequestIn ASPNET Core hosting refers to the process of running your web application and making it accessible over the internet or intranet InProcess hosting is one of the hosting options available in ASPNET Core which allows you to run your application within the same process as the IIS Internet Information Services web serverIn InProcess hosting the ASPNET Core application runs as a part of the IIS worker process This means that the application code and the IIS worker process share the same memory space This hosting model performs better than OutOfProcess hosting because it eliminates communication overhead between the web server and the application processWhat is Kestrel Web ServerAs we already discussed ASPNET Core is a CrossPlatform framework It means it supports developing and running applications on different operating systems such as Windows Linux or MacOSThe Kestrel is the CrossPlatform Web Server for the ASPNET Core Web Application That means this Server supports all the platforms and versions that the ASPNET Core Supports By default it is included as the Internal Web Server in the NET Core applicationBut if you want then you can also use this as the Internet Facing Web Server ie External Web Server In this case the Kestrel Web Server is used as an Edge Server ie the internetfacing web server which will directly process the incoming HTTP request from the client In the case of the Kestrel web server the process name that is used to host and run the ASPNET Core application is nothing but the project nameKestrel is a lightweight crossplatform web server built specifically for ASPNET Core applications Its designed to be a fast scalable and efficient web server that can handle incoming HTTP requests and serve content to clients Kestrel is the default web server that comes with ASPNET Core and it can be used standalone or in combination with other web servers like IIS or NginxWhat is the ASPNET Core InProcess Hosting ModelLets first have a look at the InProcess Hosting Model before proceeding to the Out of Process Hosting Model in the ASPNET Core Web Application As we already discussed if we use IIS Express Profile while launching the application it will use In Process Hosting by default If we use the Application Name as the Launch Profile in Visual Studio it will use the Out of Process Hosting using Kestrel ServerText Document Links ASPNET Core InProcess Hosting Model httpsdotnettutorialsnetlessonaspnetcoreinprocesshostingKestrel Web Server in ASPNET Core httpsdotnettutorialsnetlessonkestrelwebserveraspnetcoreASPNET Core OutOfProcess Hosting httpsdotnettutorialsnetlessonaspnetcoreoutofprocesshostingYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsHostingModels InProcessHostingModel OuOfProcessHostingModel Kestrelwebserver ASPNETCoreFramework ASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFrameworkDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/G5GfIJmPqV0/default.jpg",
          "14:44",
          "2023-09-14",
          "ASP.NET Core Hosting Models,ASP.NET Core InProcess Hosting Model,Kestrel Web Server in ASP.NET Core,ASP.NET Core OutOfProcess Hosting"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4mR-Gfbc_CM",
          "ASP.NET Core Hosting Models | Part - 2 | | Dot Net Tutorials | Pranaya Rout | Day 5 | Live Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "ASPNET Core Hosting Models  Part  2   Dot Net Tutorials  Pranaya Rout  Day 5  Live TrainingASPNET Core Hosting Models  Part  1   Dot Net Tutorials  Pranaya Rout  Day 5  Live TrainingWhat is the Hosting Model in ASPNET CoreIn ASPNET Core the Hosting Model refers to how the application is hosted and executed The hosting model defines how the application starts requests are processed and responses are returned to clients ASPNET Core has two types of Hosting Models InProcess and OutOfProcess What is the InProcess Hosting Model in ASPNET CoreIn the case of the InProcess Hosting Model the ASPNET Core Web Application will be hosted inside of the IIS Worker Process ie w3wpexe and IIS is the only Web Server going to handle the Incoming HTTP RequestIn ASPNET Core hosting refers to the process of running your web application and making it accessible over the internet or intranet InProcess hosting is one of the hosting options available in ASPNET Core which allows you to run your application within the same process as the IIS Internet Information Services web serverIn InProcess hosting the ASPNET Core application runs as a part of the IIS worker process This means that the application code and the IIS worker process share the same memory space This hosting model performs better than OutOfProcess hosting because it eliminates communication overhead between the web server and the application processWhat is Kestrel Web ServerAs we already discussed ASPNET Core is a CrossPlatform framework It means it supports developing and running applications on different operating systems such as Windows Linux or MacOSThe Kestrel is the CrossPlatform Web Server for the ASPNET Core Web Application That means this Server supports all the platforms and versions that the ASPNET Core Supports By default it is included as the Internal Web Server in the NET Core applicationBut if you want then you can also use this as the Internet Facing Web Server ie External Web Server In this case the Kestrel Web Server is used as an Edge Server ie the internetfacing web server which will directly process the incoming HTTP request from the client In the case of the Kestrel web server the process name that is used to host and run the ASPNET Core application is nothing but the project nameKestrel is a lightweight crossplatform web server built specifically for ASPNET Core applications Its designed to be a fast scalable and efficient web server that can handle incoming HTTP requests and serve content to clients Kestrel is the default web server that comes with ASPNET Core and it can be used standalone or in combination with other web servers like IIS or NginxWhat is the ASPNET Core InProcess Hosting ModelLets first have a look at the InProcess Hosting Model before proceeding to the Out of Process Hosting Model in the ASPNET Core Web Application As we already discussed if we use IIS Express Profile while launching the application it will use In Process Hosting by default If we use the Application Name as the Launch Profile in Visual Studio it will use the Out of Process Hosting using Kestrel ServerText Document Links ASPNET Core InProcess Hosting Model httpsdotnettutorialsnetlessonaspnetcoreinprocesshostingKestrel Web Server in ASPNET Core httpsdotnettutorialsnetlessonkestrelwebserveraspnetcoreASPNET Core OutOfProcess Hosting httpsdotnettutorialsnetlessonaspnetcoreoutofprocesshostingYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsHostingModels InProcessHostingModel OuOfProcessHostingModel Kestrelwebserver ASPNETCoreFramework ASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFrameworkDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/4mR-Gfbc_CM/default.jpg",
          "1:49:44",
          "2023-09-14",
          "ASP.NET Core Hosting Models,ASP.NET Core InProcess Hosting Model,Kestrel Web Server in ASP.NET Core,ASP.NET Core OutOfProcess Hosting"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "6XVGwf_XgPU",
          "LaunchSettings and AppSettings in ASP.NET Core  | Day 6 | Dot Net Tutorials | Pranaya Rout",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "LaunchSettings and AppSettings in ASPNET Core   Day 6  Dot Net Tutorials  Pranaya RoutText Document Links LaunchSettings in ASPNET Core httpsdotnettutorialsnetlessonaspnetcorelaunchsettingsjsonfileAppSettings in ASPNET Core httpsdotnettutorialsnetlessonaspnetcoreappsettingsjsonfileYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsLaunchSettingsInNETCore AppSettingsInNETCore LaunchSettingsandAppSettings LaunchSettingsInNET AppSettingsInNET ASPNETCore IntroductiontoASPNETCoreFramework ASPNETCoreFramework DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/6XVGwf_XgPU/default.jpg",
          "1:27:41",
          "2023-09-14",
          "LaunchSettings and AppSettings in ASP.NET Core,LaunchSettings in ASP.NET Core,AppSettings in ASP.NET Core,LaunchSettings and AppSettings in .NET Core,LaunchSettings in .NET Core,AppSettings in .NET Core,LaunchSettings and AppSettings in .NET,LaunchSettings in .NET,AppSettings in .NET"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "n9heGJoYeKI",
          "Middleware Components in ASP NET Core | Day 7 | Dot Net Tutorials | Pranaya Rout | Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Middleware Components in ASP NET Core  Day 7  Dot Net Tutorials  Pranaya Rout  Online TrainingAt the end of this video you will understand the following pointersWhat are the ASPNET Core Middleware ComponentsWhere do we use the Middleware Components in the ASPNET Core applicationHow to Configure Middleware Components in ASPNET Core applicationExamples of using Middleware ComponentsWhat is the Execution Order of Middleware Components in ASPNET CoreWhat are Request Delegates in ASPNET CoreWhat is Use Run and Map Methods in ASPNET CoreWhat is UseDeveloperExceptionPage Middleware ComponentHow to Configure Middleware Components using the Run and Use Extension MethodsWhat is the difference Between MapGet and Map MethodsDifferences Between Mao Use and Run Extension MethodsWhat is ASPNET Core Request Processing PipelineExample to Understand ASPNET Core Request Processing PipelineHow to create and register multiple middleware components in ASPNET CoreWhat is the execution order of middleware components in the request processing pipelineNET Core vs NET Framework Code Execution ProcessWhat are ASPNET Core Middleware ComponentsASPNET Core middleware components are modular reusable components that form the building blocks of the request processing pipeline in an ASPNET Core application Middleware components are responsible for handling specific tasks while processing incoming HTTP requests and outgoing responses They enable you to add various functionalities to your application such as authentication routing logging compression and more in a highly modular and customizable mannerMiddleware components are executed in the order they are added to the pipeline and each component has the ability to process requests modify responses or perform other actions before and after passing the request to the next middleware component This sequential execution allows you to create a flexible and extensible pipeline tailored to your applications needsWhat is the ASPNET Core Request Processing PipelineThe ASPNET Core Request Processing Pipeline often called the middleware pipeline is a sequence of components or middleware that handle an incoming HTTP request in an ASPNET Core application The pipeline plays a crucial role in processing requests and performing various tasks such as routing authentication authorization caching logging and more Each middleware component in the pipeline processes the request in a specific way and can modify the request or response as neededThe request processing pipeline is essential to how ASPNET Core handles incoming requests and prepares responses It follows a specific sequence of steps as the request travels through the pipeline with each middleware component having the opportunity to examine modify or act upon the request before passing it along to the next componentText Document Links ASPNET Core Middleware Components httpsdotnettutorialsnetlessonaspnetcoremiddlewarecomponentsNET Core vs NET Framework Code Execution Process httpsdotnettutorialsnetlessonnetcorevsnetframeworkcodeexecutionprocessASPNET Core Request Processing Pipeline httpsdotnettutorialsnetlessonaspnetcorerequestprocessingpipelineYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsMiddlewareComponents DotNetCoreMiddlewareComponents RequestProcessingPipelineDotNetCore ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/n9heGJoYeKI/default.jpg",
          "2:32",
          "2023-09-18",
          "What is ASP.NET Core Request Processing Pipeline,Example to Understand ASP.NET Core Request Processing Pipeline,How to create and register multiple middleware components in ASP.NET Core,What are the ASP.NET Core Middleware Components,Where do we use the Middleware Components in the ASP.NET Core application,How to Configure Middleware Components in ASP.NET Core application,What are Request Delegates in ASP.NET Core,What is Use,Run,and Map Methods in ASP.NET Core"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "GdAis8PXsO4",
          "Built-in Middleware Components in ASP.NET Core | Day 8 | Dot Net Tutorials | Pranaya Rout",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Builtin Middleware Components in ASPNET Core  Day 8  Dot Net Tutorials  Pranaya Rout  Online TrainingWhat is wwwroot folder in ASPNET CoreBy default the wwwroot folder in the ASPNET Core Web Application is treated as the webroot folder and this folder or directory should be present in the project root directory In ASPNET Core Web Application the Static files can be stored in any folder under the webroot wwwroot folder and can be accessed with a relative path to that rootWhere must we store the Static Files in ASPNET Core NET 6In ASPNET Core Application the default directory or location for the static files is the wwwroot webroot folder moreover this folder or directory should be in the project root folder By default this is the only place where the ASPNET Core application can serve the static files directly But we can change this default behavior using the WebApplicationOptions Instance and WebRootPath propertyAt the end of this video you will understand the following pointerswwwroot Folder in ASPNET CoreWhere do we need to store the static files in ASPNET CoreWhat is wwwroot folder in ASPNET CoreHow to Configure Static Files Middleware in ASPNET Core Web ApplicationHow to use your own Webroot folderHow to Configure Default Page in ASPNET CoreWhat is Developer Exception Page MiddlewareHow to use Developer Exception Page Middleware in ASPNET Core ApplicationHow to Customize the UseDeveloperExceptionPage Middleware in ASPNET CoreWhere do we need to configure the UseDeveloperExceptionPage MiddlewareWhere do we need to Configure the UseDeveloperExceptionPage MiddlewareWe need to configure the UseDeveloperExceptionPage Middleware as early as possible in the applications Request Processing Pipeline to handle the unhandled exception and then display the Developer Exception Page with detailed information about the exceptionNote From NET6 no need to configure developer exception page middleware explicitly By default the Framework will load the developer exception page if the environment variable is DevelopmentText Document Links wwwroot Folder in ASPNET Core httpsdotnettutorialsnetlessonwwwrootfolderaspnetcoreStatic Files Middleware in ASPNET Core httpsdotnettutorialsnetlessonstaticfilesmiddlewareaspnetcoreConfiguring Default Page in ASPNET Core httpsdotnettutorialsnetlessonconfiguringdefaultpageaspnetcoreDeveloper Exception Page Middleware in ASPNET Core httpsdotnettutorialsnetlessondeveloperexceptionpagemiddlewareaspnetcoreYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsBuiltInMiddlewareComponents DotNetCoreBuiltInMiddlewareComponents BuiltInMiddlewareComponentsDotNetCore ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/GdAis8PXsO4/default.jpg",
          "1:30:29",
          "2023-09-18",
          "wwwroot Folder in ASP.NET Core,Where do we need to store the static files in ASP.NET Core,What is wwwroot folder in ASP.NET Core,How to use your own Webroot folder,How to Configure Default Page in ASP.NET Core,What is Developer Exception Page Middleware,How to use Developer Exception Page Middleware in ASP.NET Core Application,How to Customize the UseDeveloperExceptionPage Middleware in ASP.NET Core,Where do we need to configure the UseDeveloperExceptionPage Middleware"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vOXnZsOVs0k",
          "ASP.NET Core Command Line Interface | Day 9 | Dot Net Tutorials | Pranaya Rout",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "ASPNET Core Command Line Interface  Day 9  Dot Net Tutorials  Pranaya RoutASPNET Core Command Line InterfaceThe NET Core CLI Command Line Interface is a new crossplatform tool that is used for creating restoring packages building running and publishing ASPNET Core Applications The NET Core CLI command uses Out of Process hosting for any kind of web application ie it uses the Kestrel server to run the applicationThe NET Core CLI command structure is nothing but how we write the NET Core CLI command Note All the NET Core CLI commands start with the driver named dotnet The driver ie dotnet starts the execution of the specified command After dotnet we need to specify the command also known as the verb to perform a specific action Each command can be followed by arguments and options Text Document Links ASPNET Core Command Line Interface httpsdotnettutorialsnetlessonaspnetcorecommandlineinterfaceProject Templates in ASPNET Core Application httpsdotnettutorialsnetlessonprojecttemplatesinaspnetcoreapplicationYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsCLI CommandLineInterface DotNetCoreCommandLineInterface DotNetCoreCLI ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/vOXnZsOVs0k/default.jpg",
          "1:19:47",
          "2023-09-20",
          "ASP.NET Core Command Line Interface,Project Templates in ASP.NET Core Application,CLI,Command Line Interface,Dot Net Core Command Line Interface,Dot Net Core CLI"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Q6ZB4KizgRs",
          "MVC Design Pattern in ASP.NET Core | Day 10 | Dot Net Tutorials | Pranaya Rout | Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "MVC Design Pattern in ASPNET Core  Day 10  Dot Net Tutorials  Pranaya Rout  Online TrainingAt the end of this video you will understand the following pointersWhat is MVCHow Does MVC Design Pattern Work in ASPNET CoreWhat is ASPNET Core MVCFeatures of ASPNET Core MVCWhen to Choose ASPNET MVC and When to Choose ASPNET Core MVCWhat is MVCMVC stands for Model View and Controller It is an architectural design pattern which means it is used at an applications architecture level So you need to remember that MVC is not a programming language MVC is not a Framework It is a Design Pattern When we design an application first we create the architecture of that application and MVC plays an important role in the architecture of that particular applicationMVC Design Pattern is basically used to develop interactive applications An interactive application is an application where there is user interaction involved and based on the user interaction some event handling occurs The most important point you need to remember is that it is not only used for developing WebBased Applications but we can also use this MVC Design Pattern to develop Desktop or MobileBased applicationsThe MVC ModelViewController Design Pattern was introduced in the 1970s dividing an application into 3 major components They are Model View and Controller The main objective of the MVC Design Pattern is the separation of concerns It means the Domain Model and Business Logic are separated from the User Interface ie view As a result maintaining and testing the application becomes simpler and easierSo in simple words we can say that the ModelViewController MVC is an architectural design pattern that separates an application code into three main groups of components Models Views and Controllers This pattern helps to achieve separation of concerns Using this pattern user requests are routed to a Controller which is responsible for working with the Model to perform user actions andor retrieve the results of queries The Controller chooses the View to display to the user and provides it with any Model data it requiresWhen to choose ASPNET MVCYou are currently working on an existing application and would like to expand the functionalities by adding new featuresYour team is familiar with ASPNET MVC Framework but has yet to gain experience with ASPNET Core MVCIf you want your application will only be compatible with devices and servers that run on the Windows operating systemWhen to Choose ASPNET Core MVCYou have a preference for utilizing a framework that is completely open sourceYou want your application to be able to be developed and hosted on any operating systemYour team members have knowledge of ASPNET Core MVCYou are looking for an application framework with a long development roadmap ahead of it If you see the road map of NET Microsoft has already provided the road map for the next five yearsText Document Links Introduction to ASPNET Core MVC Framework httpsdotnettutorialsnetlessonintroductionaspnetcoremvcYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsMVC CoreMVC MVCDesignPattern ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/Q6ZB4KizgRs/default.jpg",
          "1:42:21",
          "2023-09-20",
          "What is MVC,How Does MVC Design Pattern Work in ASP.NET Core,What is ASP.NET Core MVC,Features of ASP.NET Core MVC,When to Choose ASP.NET MVC and When to Choose ASP.NET Core MVC"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Jpz9BH0CaFg",
          "MVC Setup in ASP .NET Core | Day 11 | Dot Net Tutorials | Pranaya Rout | Dot Net Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "MVC Setup in ASP NET Core  Day 11  Dot Net Tutorials  Pranaya Rout  Dot Net Online TrainingHow to Set up MVC in ASPNET CoreAddController  AddMvc AddControllersWithViews AddRazorPagesText Document Links How to Set up MVC in ASPNET Core httpsdotnettutorialsnetlessonsetupmvcaspnetcoreapplicationAddController vs AddMvc vs AddControllersWithViews vs AddRazorPages httpsdotnettutorialsnetlessondifferencebetweenaddmvcandaddmvccoremethodYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsMVCSetup CoreMVCSetup MVCSetupinCore ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/Jpz9BH0CaFg/default.jpg",
          "1:34:54",
          "2023-09-21",
          "How to Set up MVC in ASP.NET Core,AddController,AddMvc,AddControllersWithViews,AddRazorPages,MVC Setup,Core MVC Setup,MVC Setup in Core"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3vjwpGWvsVY",
          "Models and Controllers in ASP.NET Core MVC | Day 12 | Dot Net Tutorials | Pranaya Rout",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Models and Controllers in ASPNET Core MVC  Day 12  Dot Net Tutorials  Pranaya Rout  Dot Net Online TrainingWhat is a Model in ASPNET Core MVCA model is a class with cs for C as an extension having both properties and methods Models are used to set or get the data If your application does not have data then there is no need for a model If your application has data then you need a modelThe Model in an MVC application represents the state of the application and any business logic or operations it should perform Business logic should be encapsulated in the model along with any implementation logic for persisting the state of the application Strongly typed views typically use ViewModel types designed to contain the data to display on that view The controller creates and populates these ViewModel instances from the modelWhat is the Role of Models in ASPNET Core MVC ApplicationThe Models in ASPNET Core MVC Application contain a set of classes representing the domain data you can also say the business data and logic to manage the domainbusiness data So in simple words we can say that the Model is the component in the MVC Design pattern used to manage the data ie the state of the application in memory The Model represents a set of classes used to describe the applications validation business and data access logic If you are working with any Web Application based on an MVC Design Pattern then three things in that MVC Application are common ie Model View and Controller The Controllers are used to manage the overall flow of the MVC Application Models are responsible for storing the data which are used on Views Views are basically the HTML Pages that get rendered into the clients browser In the browser we generally perform two operations First we display the data to the user second we get the data from the user For both these operations models are usedWhat is a Controller in ASPNET CoreA Controller is a special class in ASPNET Core Application with cs for C language extension By default you can see the Controllers reside in the Controllers folder when you create a new ASPNET Core Application using the Model View Controller MVC Project Template In the ASPNET Core MVC Application the controller class should and must be inherited from the Controller base classControllers in the MVC Design Pattern are the components that handle user interaction work with the model and ultimately select a view to render In an MVC application the one and only responsibility of a view is to render the information the controller handles and responds to user input and interaction In the MVC Design Pattern the controller is the initial entry point responsible for selecting which model types to work with and which view to render hence its name  it controls how the app responds to a given requestThe Controllers in the ASPNET Core MVC Application logically group similar types of actions together This aggregation of actions or grouping of similar types of action together allows us to define rules such as caching routing and authorization which will be applied collectivelyWhen the client browser sends a request to the server that request first goes through the request processing pipeline Once the request passes the request processing pipeline it will hit the controller Inside the controller there are lots of methods called action methods that actually handle the incoming HTTP Requests The action method inside the controller executes the business logic and prepares the response which is sent back to the client who initially made the requestText Document Links Models in ASPNET Core MVC httpsdotnettutorialsnetlessonmodelaspnetcoremvcControllers in ASPNET Core MVC httpsdotnettutorialsnetlessoncontrollersaspnetcoremvcYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsModelsInMVC ControllersInMVC ModelsandControllersInMVC ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/3vjwpGWvsVY/default.jpg",
          "2:5:9",
          "2023-09-21",
          "Models in ASP.NET Core MVC Application,What is a Model in ASP.NET Core MVC,What is the Role of Models in ASP.NET Core MVC Application,What is a Controller,Role of Controller,How to add Controller in ASP.NET Core Application,How many controllers can we have in a single application,How Controller Instance Created in ASP.NET Core MVC Application,What are Action Methods,How to call the Action method of a Controller,When should we create a new controller?"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "-AptcstMJ4I",
          "Views and Dependency Injection in ASP.NET Core | Day 13 | Pranaya Rout | Dot Net Tutorials",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Views and Dependency Injection in ASPNET Core  Day 13  Pranaya Rout  Dot Net TutorialsAt the end of this video you will understand the following pointersViews in ASPNET Core MVCWhat are Views in ASPNET Core MVC ApplicationRoles of ViewWhere are View Files Stored in ASPNET Core MVC ApplicationHow to create View in ASPNET CoreHow do we return views from action methodsWhat is the difference between View and Viewobject model Extension MethodsHow to specify the Absolute view file pathWhat are the Advantages of Using Views in ASPNET Core MVC ApplicationHow Does the Controller Action Method Identify the View in ASPNET Core MVCASPNET Core Dependency InjectionUnderstanding the Need for ASPNET Core Dependency InjectionWhat is Dependency InjectionHow to register a Service with ASPNET Core Dependency Injection ContainerWhat are the different methods ASPNET Core Provides to register a service with Dependency Injection ContainsUnderstanding the Singleton Scoped and Transient MethodsWhat are the Advantages of using Dependency InjectionText Document Links Views in ASPNET Core MVC httpsdotnettutorialsnetlessonviewsaspnetcoremvcASPNET Core Dependency Injection httpsdotnettutorialsnetlessonaspnetcoredependencyinjectionYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsViewsInMVC DependencyInjectionInMVC DependencyInjectionCoreMVC ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/-AptcstMJ4I/default.jpg",
          "1:59:59",
          "2023-09-22",
          "Views in ASP.NET Core MVC,What are Views in ASP.NET Core MVC Application,Roles of View,Where are View Files Stored in ASP.NET Core MVC Application,How to create View in ASP.NET Core,ASP.NET Core Dependency Injection,Understanding the Need for ASP.NET Core Dependency Injection,What is Dependency Injection,How to register a Service with ASP.NET Core Dependency Injection Container,How do we return views from action methods,What are the Advantages of using Dependency Injection"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "0XHCnlmjPqo",
          "Data Passing Techniques in ASP.NET Core MVC | Day 14 | Pranaya Rout | Dot Net Tutorials",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Data Passing Techniques in ASPNET Core MVC  Day 14  Pranaya Rout  Dot Net Tutorials  Online TrainingAt the end of this video you will understand the following pointersWhat is ViewData in MVCHow to Pass and Retrieve Data From ViewData in ASPNET Core MVCExample to understand ViewData in ASPNET Core MVC ApplicationWhat is ViewBag in MVCHow to Pass and Retrieve Data From ViewBag in ASPNET Core MVCExample to understand ViewBag in ASPNET Core MVC ApplicationDifference between ViewData and ViewBag in ASPNET Core MVCWhy do we need a Strongly Typed View in ASPNET Core MVCHow to Create a Strongly Typed View in ASPNET CoreWhat are the Advantages of using a Strongly Typed ViewWhat is a View Model in ASPNET CoreWhy do we need the View ModelHow to implement the View Model in ASPNET Core ApplicationText Document Links Creating ASPNET Core Application using MVC Template httpsdotnettutorialsnetlessonaspnetcoreapplicationusingmvctemplateViewData in ASPNET Core MVC httpsdotnettutorialsnetlessonviewdataaspnetcoremvcViewBag in ASPNET Core MVC httpsdotnettutorialsnetlessonviewbagaspnetcoremvcStrongly Typed View in ASPNET Core MVC httpsdotnettutorialsnetlessonstronglytypedviewaspnetcoremvcViewModel in ASPNET Core MVC httpsdotnettutorialsnetlessonviewmodelaspnetcoremvcYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsViewDataInMVC ViewBagInMVC ViewModelInMVC ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/0XHCnlmjPqo/default.jpg",
          "1:45:55",
          "2023-09-22",
          "What is ViewData in MVC,How to Pass and Retrieve Data From ViewData in ASP.NET Core MVC,Example to understand ViewData in ASP.NET Core MVC Application,What is ViewBag in MVC,Difference between ViewData and ViewBag in ASP.NET Core MVC,Why do we need a Strongly Typed View in ASP.NET Core MVC,How to Create a Strongly Typed View in ASP.NET Core,What are the Advantages of using a Strongly Typed View,What is a View Model in ASP.NET Core,Why do we need the View Model"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Deer2k5l-VE",
          "TempData and Cookies in ASP NET Core MVC | Day 15 | Pranaya Rout | Dot Net Tutorials",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "TempData and Cookies in ASP NET Core MVC  Day 15  Pranaya Rout  Dot Net Tutorials  Online TrainingAt the end of this video you will understand the following pointersTempData in ASPNET Core MVCWhy do we need TempData in the ASPNET Core MVC ApplicationWhat exactly is TempData in ASPNET Core MVCHow to use TempDataHow to Pass and Retrieve Data from TempDataHow to Retain TempData values in the Consecutive Request in ASPNET Core MVCCookies in ASPNET Core MVCWhat is a CookieTypes of CookiesHow do you Write Read and Delete Cookies in ASPNET Core MVCAdvantages and Disadvantages of using Cookies in ASPNET Core MVCWhen to use Cookies in ASPNET Core MVCWhy do we need TempData in the ASPNET Core MVC ApplicationAs we already discussed in our previous articles we can use ViewData ViewBag and Strongly Typed Models to pass the data from a controller action method to a view Now we will see another approach to send the data from the controller action method to a view in the ASPNET Core MVC Application using the TempDataThe limitation of both ViewData and ViewBag is they are limited to one HTTP request only So if redirection occurs their values become null meaning they will lose the data they hold In many realtime applications we may need to pass the data from one HTTP Request to the next subsequent HTTP Request For example we may need to pass the data from one controller to another or one action method to another within the same controller Then in such situations like this we need to use TempData in ASPNET Core MVC ApplicationWhat is TempData in ASPNET Core MVCIn ASPNET Core MVC TempData is a feature that allows us to store temporary data that will be available for the next request Its a mechanism to pass data between different actions or controllers during the lifetime of a users session TempData is typically used when you need to show a message or provide some information to the user after a redirectTempData is implemented using the session state It stores data in the session between requests but unlike regular session data TempData is meant to be shortlived and is removed automatically once its read or after the subsequent request is processedWhat is a CookieA cookie is a small text file that a website stores on a users computer or mobile device when they visit the site This file contains information that can be used to identify the user such as their login status or preferences and is sent back to the website with every subsequent request Typically it tells the web server if two requests are coming from the same web browserText Document Links TempData in ASPNET Core MVC httpsdotnettutorialsnetlessontempdatainaspnetcoremvcCookies in ASPNET Core MVC httpsdotnettutorialsnetlessoncookiesinaspnetcoremvcYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsTempDataInMVC CookiesInMVC TempDataCookiesMVC ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/Deer2k5l-VE/default.jpg",
          "1:55:34",
          "2023-09-23",
          "TempData in ASP.NET Core MVC,Why do we need TempData in the ASP.NET Core MVC Application,What exactly is TempData in ASP.NET Core MVC,How to use TempData,How to Pass and Retrieve Data from TempData,Cookies in ASP.NET Core MVC,What is a Cookie,Types of Cookies,Advantages and Disadvantages of using Cookies in ASP.NET Core MVC,When to use Cookies in ASP.NET Core MVC,How to Retain TempData values in the Consecutive Request in ASP.NET Core MVC"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PEsHiRUw0wU",
          "Sessions in ASP NET Core MVC | Day 16 | Pranaya Rout | Dot Net Tutorials | Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Sessions in ASP NET Core MVC  Day 16  Pranaya Rout  Dot Net Tutorials  Online TrainingAt the end of this video you will understand the following pointersWhat are Sessions in ASPNET Core MVCHow Does Session Work in Web ApplicationHow To Use Session in ASPNET CoreSet and Get Session Values in ASPNET Core MVCHow to Access the Session Object in a ViewAdvantages and Disadvantages of Using SessionsWhen to use Sessions in ASPNET Core MVCCookies vs Sessions in ASPNET Core MVCWhat are Sessions in ASPNET Core MVCIn ASPNET Core MVC sessions are a mechanism for storing and managing userspecific data on the server side across multiple HTTP requests for a given session A session provides a way to maintain a state for a user throughout their interaction with a web application allowing you to store and retrieve data associated with a particular users sessionSessions are particularly useful when storing data that should be available across different pages or requests for a specific user without relying on cookies or query parameters Unlike cookies which are stored on the client side session data is stored on the server side enhancing security and reducing the risk of exposing sensitive informationText Document Links Sessions in ASPNET Core MVC httpsdotnettutorialsnetlessonsessionsinaspnetcoremvcCookies in ASPNET Core MVC httpsdotnettutorialsnetlessoncookiesinaspnetcoremvcYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsSessionsInMVC CookiesInMVC SessionsAndCookiesMVC ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/PEsHiRUw0wU/default.jpg",
          "1:48:40",
          "2023-09-23",
          "What are Sessions in ASP.NET Core MVC,How Does Session Work in Web Application,How To Use Session in ASP.NET Core,Set and Get Session Values in ASP.NET Core MVC,How to Access the Session Object in a View,Advantages and Disadvantages of using Sessions,When to use Sessions in ASP.NET Core MVC,Cookies vs. Sessions in ASP.NET Core MVC"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ywYzdgjgiLw",
          "Routing in ASP NET Core | Day 17 | Pranaya Rout | Dot Net Tutorials | Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Routing in ASP NET Core  Day 17  Pranaya Rout  Dot Net Tutorials  Online TrainingAt the end of this video you will understand the following pointersWhat is Routing in ASPNET Core MVCHow Does Routing Work in ASPNET CoreWhat are the different types of Routing supported by ASPNET Core MVCHow is Routing Working in ASPNET CoreUnderstanding Conventional Based RoutingCustom Routing in ASPNET Core MVC ApplicationRouting without Default Values in ASPNET Core MVC ApplicationRoute Constraints in ASPNET Core MVC Web ApplicationHow to Make Route Parameters Optional in ASPNET Core MVC ApplicationHow to Provide Default Route Values in ASPNET Core MVC ApplicationCustom Route Constraints in ASPNET Core MVC Web ApplicationHow to Create a Custom Route Constraint in ASPNET CoreWhat is Routing in ASPNET Core MVCThe Routing in the ASPNET Core MVC Web Application is a mechanism in which it will inspect the incoming HTTP Requests ie URLs and then map that HTTP request to the controllers action method This mapping is done by the routing rules defined for the application We can add the Routing Middleware to the Request Processing PipelineThe ASPNET Core MVC Framework maps the incoming HTTP Requests ie URLs to the Controllers action methods based on the routes configured in your application You can configure multiple routes for your application and for each route you can also set some specific configurations such as default values constraints etc If this is not clear at the moment then dont worry we will discuss each and everything with examplesCustom Routing in ASPNET Core MVC ApplicationCustom routing in ASPNET Core MVC allows us to define our own URL routing patterns for our web application giving us more control over how URLs are mapped to controller actions This can be useful when creating SEOfriendly URLs handling specific routing scenarios or creating a more organized and structured URL hierarchyText Document Links Routing in ASPNET Core MVC httpsdotnettutorialsnetlessonroutingaspnetcoremvcCustom Routing in ASPNET Core MVC httpsdotnettutorialsnetlessoncustomroutinginaspnetcoremvcCustom Route Constraint in ASPNET Core MVC httpsdotnettutorialsnetlessoncustomrouteconstraintinaspnetcoremvcYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsRoutingCoreMVC CustomRoutingDotNetCore RouteConstraintDotNetCore ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/ywYzdgjgiLw/default.jpg",
          "1:46:35",
          "2023-09-23",
          "What is Routing in ASP.NET Core MVC,How Does Routing Work in ASP.NET Core,How is Routing Working in ASP.NET Core,Understanding Conventional Based Routing,Custom Routing in ASP.NET Core MVC Application,Routing without Default Values in ASP.NET Core MVC Application,Route Constraints in ASP.NET Core MVC Web Application,How to Provide Default Route Values in ASP.NET Core MVC Application,How to Create a Custom Route Constraint in ASP.NET Core"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QMYOyXwjCsU",
          "Attribute Routing in ASP.NET Core | Day 18 | Pranaya Rout | Dot Net Tutorials | Online Training",
          "ASP. NET Core (.NET 6) Online Training",
          "PLNgSFZ9yC06LVdMpnEWfPShddljybc14g",
          "Attribute Routing in ASPNET Core  Day 18  Pranaya Rout  Dot Net Tutorials  Online TrainingAt the end of this video you will understand the following pointersWhat is Attribute Routing in ASPNET Core MVCWhy do we need Attribute Routing in ASPNET Core MVC ApplicationsHow to use Attribute Routing in ASPNET Core MVCCan we Apply Multiple Route Attributes to a Single Action Method in ASPNET Core MVCAttribute Routing with Parameters in ASPNET Core MVC ApplicationAttribute Routing with Optional Parameters in ASPNET CoreController and Action Method Names in Attribute RoutingCan we use Attribute and ConventionBased Routing in a Single ASPNET Core MVC ApplicationHow to Apply Route Attribute at Controller Level in ASPNET Core MVC ApplicationHow to Ignore the Route Attribute Placed at the Controller Level in ASPNET Core MVCWhat are the Advantages of using Attribute Routing in ASPNET Core MVCUnderstanding Tokens in Attribute RoutingToken Example in Attribute RoutingAdvantages of using Tokens in Attribute RoutingDo we need to write the action token on each action methodAttribute Routing vs Conventional Routing in ASPNET CoreWhat is Attribute Routing in ASPNET Core MVCIf we define the Routes using the Route attribute either at the controller or at the action method level then it is called Attribute Routing That means ASPNET Core Attribute Routing adds routes by applying Route Attributes on the controller as well as on action methods Attribute Routing gives us more control over the URIs by defining routes directly at action methods or controllers in our ASPNET Core MVC Web ApplicationAttribute routing is a powerful feature in ASPNET Core MVC that allows you to define routes directly on your controller as well as on action methods using Route attributes This provides a more declarative and intuitive way to define routes compared to traditional conventionbased routing With Attribute Routing we can specify route templates for individual action methods giving us finegrained control over how URLs are mapped to your controller actionsText Document Links Attribute Routing in ASPNET Core MVC Application httpsdotnettutorialsnetlessonattributeroutinginaspnetcoremvcASPNET Core Attribute Routing using Tokens httpsdotnettutorialsnetlessonaspnetcoreattributeroutingusingtokensYou can contact us for live training using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsAttributeRoutingCore AttributeRoutingCoreMVC AttributeRouting ASPDOTNETCoreMVC ASPDOTNETCore DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/QMYOyXwjCsU/default.jpg",
          "1:36:44",
          "2023-09-24",
          "What is Attribute Routing in ASP.NET Core,Why do we need Attribute Routing,How to use Attribute Routing in ASP.NET Core,Attribute Routing with Parameters,Attribute Routing with Optional Parameters in ASP.NET Core,How to Apply Route Attribute at Controller Level,How to Ignore the Route Attribute Placed at the Controller Level,What are the Advantages of using Attribute Routing,ASP.NET Core Attribute Routing using Tokens"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
  "Entity Framework Tutorials using C#",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xR9QFDVTSuU",
          "Introduction to Entity Framework Part-1 | Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Introduction to Entity FrameworkIn this article I am going to give you a brief introduction to the Entity Framework Before NET 35 as a developer we often used to write ADONET code to perform CRUD operations with the underlying database For this we need to create a Connection Object with the database then Open the Connection Create the Command Object and execute the Command using Data Reader or Data Adapter And then we create DataSet or DataTables to store the data in memory to perform different types of Operations on the Data as per the business requirements Actually this is a TimeConsuming and ErrorProne Process Microsoft has provided a framework called Entity Framework to automate all these databaserelated activities for our application and for this to work we just need to provide the necessary details to the Entity FrameworkWhat is the Entity FrameworkEntity Framework is an OpenSource ObjectRelational Mapping ORM Framework for NET applications that enables NET developers to work with relational data using domainspecific objects without focusing on the underlying database tables and columns where actually the data is stored That means the Entity Framework eliminates the need for writing the dataaccess code that developers usually need to writeChapter Entity Framework in C   Introduction to Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetIntroduction to Entity Framework  httpsdotnettutorialsnetlessonintroductiontoentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya",
          "https://i.ytimg.com/vi/xR9QFDVTSuU/default.jpg",
          "20:57",
          "2023-07-23",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uaAJOoGGH5s",
          "Introduction to Entity Framework- Part 2",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Introduction to Entity FrameworkIn this article I am going to give you a brief introduction to the Entity Framework Before NET 35 as a developer we often used to write ADONET code to perform CRUD operations with the underlying database For this we need to create a Connection Object with the database then Open the Connection Create the Command Object and execute the Command using Data Reader or Data Adapter And then we create DataSet or DataTables to store the data in memory to perform different types of Operations on the Data as per the business requirements Actually this is a TimeConsuming and ErrorProne Process Microsoft has provided a framework called Entity Framework to automate all these databaserelated activities for our application and for this to work we just need to provide the necessary details to the Entity FrameworkWhat is the Entity FrameworkEntity Framework is an OpenSource ObjectRelational Mapping ORM Framework for NET applications that enables NET developers to work with relational data using domainspecific objects without focusing on the underlying database tables and columns where actually the data is stored That means the Entity Framework eliminates the need for writing the dataaccess code that developers usually need to writeChapter Entity Framework in C   Introduction to Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetIntroduction to Entity Framework  httpsdotnettutorialsnetlessonintroductiontoentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya",
          "https://i.ytimg.com/vi/uaAJOoGGH5s/default.jpg",
          "51:28",
          "2023-07-23",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "r2LEnkyLR8o",
          "Context Class | Entities | Types of Entity | Entity States | Development Approach Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Entity Framework Context Class in C with ExamplesIn this article I am going to discuss the Entity Framework Context Class in C with Examples Please read our previous article where we discussed the Architecture of Entity Framework in Detail At the end of this article you will understand what exactly the Context Class is and when and how to use this Context Class in Entity Framework with ExamplesWhat is Entity Framework Context Class in CThe Entity Framework allows us to Query Insert Update and Delete data using Common Language Runtime CLR objects which are also known as Entities or NET Classes The Entity Framework maps the entities classes and relationships that are defined in our model to a databaseEntities in Entity Framework in C with ExamplesIn this article I am going to discuss the Entities in the Entity Framework in C with Examples Please read our previous article where we discussed Entity Framework Context Class in C with Examples What is an Entity in the Entity FrameworkUnderstanding Scalar Property and Navigation PropertyWhat is an Entity in the Entity FrameworkWe are going to work with the same example that we worked on in our Previous articles Lets see the Solution of the console application that we created in the Introduction to Entity Framework article of this article seriesTypes of Entities in Entity Framework with ExamplesIn this article I am going to discuss the Types of Entities in the Entity Framework with Examples Please read our previous article where we discussed Entities in Entity Framework with Examples We are going to work with the same example that we have worked on so farTypes of Entities in Entity FrameworkPOCO EntitiesDynamic Proxy EntitiesPOCO Entities in Entity FrameworkPOCO stands for Plain Old CLR Objects which can be used as existing domain objects with your data model The POCO data classes which are mapped to entities are defined in a data model A POCO entity is a class that does not depend on any frameworkspecific base class It is like any other normal NET CLR class which is why it is called Plain Old CLR ObjectsEntity States in Entity FrameworkIn this article I will discuss the Entity States in the Entity Framework with Examples Please read our previous article where we discussed Entities Types in Entity FrameworkEntity States in Entity FrameworkThe Entity Lifecycle in Entity Framework describes the process in which an Entity is created added modified deleted etc Entities have many states during their lifetime Entity Framework maintains the state of each entity during its lifetime Each entity has a state based on the operation performed on it via the context class the class which is derived from DbContext class The entity state is represented by an enum called EntityState in EF 6 with the following signatureDevelopment Approach with Entity FrameworkIn this article I am going to discuss Development Approach with the Entity Framework Please read our previous article where we discussed the Different States of Entity in the Entity Framework The entity framework provides three different approaches when working with the database and data access layer in your application as per your project requirement These areDatabaseFirst CodeFirst ModelFirstDatabaseFirst Approach of Entity FrameworkWe can use the Database First Approach if the database schema already exists In this approach we generate the context and entities for the existing database using the EDM wizard This approach is best suited for applications that use an already existing databaseChapter Entity Framework in C  Entity Framework Context Class  Entities in Entity Framework  Types of Entities in Entity Framework  Entity States in Entity Framework  Development Approaches with Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Entity Framework Context Class  httpsdotnettutorialsnetlessoncontextclassinentityframework Entities in Entity Framework  httpsdotnettutorialsnetlessonentitiesinentityframework Types of Entities in Entity Framework  httpsdotnettutorialsnetlessontypesofentitiesinentityframework Entity States in Entity Framework  httpsdotnettutorialsnetlessonentitystateinentityframework Development Approaches with Entity Framework  httpsdotnettutorialsnetlessondevelopmentapproachwithentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  EntityFrameworkContextClass EntitiesinEntityFrameworkTypesofEntitiesinEntityFrameworkEntityStatesinEntityFramework  DevelopmentApproacheswithEntityFramework",
          "https://i.ytimg.com/vi/r2LEnkyLR8o/default.jpg",
          "2:2:39",
          "2023-07-24",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QPyLVOvaJUY",
          "Intro to EF Database First Approach | Entity Data Model in EF | Model Browser in Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Introduction to Entity Framework Database First ApproachEntity Framework Database First ApproachIn this article I am going to give you a brief introduction to the Entity Framework Database First Approach In the Entity Framework the Database first approach is one of the three approaches to interact with the database The other two approaches are Model First Approach and Code First Approach Here in this article we are going to keep the focus on the Database First Approach of Entity Framework and will learn how to use the DB First approach of Entity Framework to interact with the databaseWhat is the DatabaseFirst approachIn Entity Framework Database First approach the Entity Framework creates the model codes Classes Properties DbContext etc or you can say POCO classes from the existing database automatically Automatically in the sense we need to provide the necessary details about the database to the entity framework So in simple words we can say that the entity framework will create the model classes based on tables and columns from the relational databaseEntity Data Model in Entity FrameworkEntity Data Model EDM of Entity Framework Database First ApproachIn this article I am going to discuss the Entity Data Model EDM of the Entity Framework Database First Approach in detail We are going to work with the same example that we created in Our Previous Article Please read our previous article before proceeding to this article where we created the required database tables views and stored procedure with test data as well as we also discussed the stepbystep procedure to interact with the database using Entity Framework Database First ApproachEntity Data Model EDM in Entity FrameworkEntity Framework uses EDM Entity Data Model for all DatabaseRelated Operations Entity Data Model is a model that describes the entities and the relationships between themModel Browser in Entity FrameworkModel Browser in Entity FrameworkIn this article I am going to discuss the Model Browser in Entity Framework Database First Approach Please read our previous article where we discussed the Entity Data Model EDM in detail We are going to work with the same example that we created in our introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleModel Browser in Entity FrameworkThe Visual Designer of the Entity Data Model does not display all the objects it creates It only displays entities that are mapped to the database tables and views As we know we have created some stored procedures in our database And while creating the Entity Data Model we have also included those stored procedures But if you look at the Visual Designer of the Entity Data Model then you will not find those stored procedures as shown in the below image Here you can see only the Entities which are mapped to the database tables and viewsChapter Entity Framework in C  Introduction to Entity Framework Database First Approach  Entity Data Model in Entity Framework  Model Browser in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet  Introduction to Entity Framework Database First Approach  httpsdotnettutorialsnetlessonentityframeworkdatabasefirstapproach  Entity Data Model in Entity Framework  httpsdotnettutorialsnetlessonentitydatamodelinentityframework  Model Browser in Entity Framework  httpsdotnettutorialsnetlessonmodelbrowserinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  IntroductiontoEntityFrameworkDatabaseFirstApproachEntityDataModelinEntityFrameworkModelBrowserinEntityFramework",
          "https://i.ytimg.com/vi/QPyLVOvaJUY/default.jpg",
          "2:20:53",
          "2023-07-24",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "PO2M7dWs7cw",
          "DbContext Class in Entity Framework Database First Approach | DbSet in Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "DbContext Class in Entity Framework Database First ApproachIn this article I am going to discuss DbContext Class in Entity Framework Database First Approach in detail with Examples Please read our previous article where we discussed Model Browser in Entity Framework At the end of this article you will understand the need and use of the Entity Framework DbContext class in detail We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleEntity Framework DbContext ClassAccording to MSDN a DbContext instance represents a combination of the Unit Of Work and Repository Patterns such that it can be used to query from a database and group together changes that will then be written back to the store as a unit So in simple words we can say that the DbContext instance is the primary class that is responsible for interacting with the database and performing the database CRUD Operations DbSet in Entity Framework Database First Approach with ExamplesIn this article I am going to discuss DbSet Class in Entity Framework Database First Approach with Examples Please read our previous article where we discussed DbContext in Entity Framework At the end of this article you will understand the need and use of Entity Framework DbSet Class in detail We are going to work with the same example that we created in our Introduction to Entity Framework Database First article Please read our introduction to Entity Framework Database First article before proceeding to this articleDbSet Class in Entity FrameworkThe DbSet Class in Entity Framework represents an Entity Set that can be used to perform the database CRUD Operations ie CREATE SELECT UPDATE and DELETE operations The context class should derive from DbContext Class and must include the DbSet type properties for the Entities which will map to database tables and views The DbSet class in Entity Framework is actually an implementation of the Repository PatternChapter Entity Framework in C  DbContext Class in Entity Framework Database First Approach  DbSet in Entity Framework Text Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet  DbContext Class in Entity Framework Database First Approach  httpsdotnettutorialsnetlessondbcontextinentityframework  DbSet in Entity Framework  httpsdotnettutorialsnetlessondbsetinentityframework  dotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  DbContextClassinEntityFrameworkDatabaseFirstApproachDbSetinEntityFrameworkdbcontextinEFDBFirst",
          "https://i.ytimg.com/vi/PO2M7dWs7cw/default.jpg",
          "2:49:37",
          "2023-07-24",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "p7s-KX3BjDU",
          "Relationships Between Entities in EF | CRUD Operations in EF | Querying in Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Relationships Between Entities in Entity FrameworkIn this article I am going to discuss the Relationships Between Entities in Entity Framework Database First Approach ie at the end of this article you will understand how entity framework manages the relationships between entities Please read our previous article where we discussed Entity Framework DbSet Methods with Examples In this article we are going to work with the same example that we created in our Introduction to Entity Framework Database First article Please read our introduction to Entity Framework Database First article before proceeding to this articleWhat are RelationshipsIt is a common requirement in relational databases to establish relationships between database tables or entities And whenever we try to establish a relationship between two entities then one of the entities will act as a Principal Entity and the other Entity will act as the Dependent Entity Let us first understand what is Principal Entity and Dependent Entity from the relational database point of viewCRUD Operations in Entity Framework Database First ApproachIn this article I am going to discuss how to perform CRUD Operations in Entity Framework Database First Approach Please read our previous article where we discussed the Relationships Between Entities in the Entity Framework We are going to work with the same example that we created in our Introduction to Entity Framework Database First article Please read our introduction to Entity Framework Database First article before proceeding to this articleCRUD Operations in Entity FrameworkCRUD Operation means we need to perform Create Update Delete and Retrieve Operations In order to perform the Insert Update and Delete operations in Entity Framework we have two persistence scenarios ieQuerying in Entity FrameworkIn this article I am going to discuss Querying in Entity Framework Please read our previous article where we discussed how to perform CRUD Operations in Entity Framework Database First ApproachNote We are going to work with the same example that we created in our Introduction to Entity Framework Database First article Please read our introduction to Entity Framework Database First article before proceeding to this Chapter Entity Framework in C Relationships Between Entities in Entity Framework  CRUD Operations in Entity Framework  Querying in Entity Framework Author  Pranaya RoutWebsite  httpsdotnettutorialsnet  Relationships Between Entities in Entity Framework  httpsdotnettutorialsnetlessonrelationshipsbetweenentitiesinentityframework  CRUD Operations in Entity Framework  httpsdotnettutorialsnetlessoncrudoperationsinentityframework  Querying in Entity Framework  httpsdotnettutorialsnetlessonqueryinginentityframework  dotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  RelationshipsBetweenEntitiesinEntityFramework CRUDOperationsinEntityFramework QueryinginEntityFramework",
          "https://i.ytimg.com/vi/p7s-KX3BjDU/default.jpg",
          "2:10",
          "2023-07-24",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rvWQxoPXKuc",
          "Eager Loading | Lazy Loading | Explicit Loading | Disconnected Entities | Saving Disconnected",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Eager Loading in Entity Framework Eager Loading in Entity Framework with ExamplesIn this article I am going to discuss Eager Loading in Entity Framework Database First Approach with Examples Please read our previous article where we discussed LINQ to Entities Queries in Entity Framework At the end of this article you will learn how to load the entities eagerly You will also learn how to Eager Loading from multiple Levels and multiple Tables with Examples We are going to work with the same example that we created in our Introduction to Entity Framework Database First article Lazy Loading in Entity Framework with ExamplesIn this article I am going to discuss Lazy Loading in Entity Framework Database First Approach with Examples Please read our previous article where we discussed Eager Loading in Entity Framework with Examples At the end of this article you will understand what is Lazy Loading and how to implement Lazy Loading in Entity Framework You will also learn how to disable Lazy Loading for a particular and for all entities and finally we will discuss when to use Lazy Loading in Entity Framework We are going to work with the same application that we created in our Introduction to Entity Framework Database First articleExplicit Loading in Entity Framework with ExamplesIn this article I am going to discuss Explicit Loading in Entity Framework with Examples Please read our previous article where we discussed Lazy Loading vs Eager Loading in Entity Framework with Examples At the end of this article you will understand what is Explicit Loading and how to implement Explicit Loading in the Entity Framework Explicit Loading was introduced with Entity Framework 6 We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Lazy Loading vs Eager Loading in Entity FrameworkIn this article I am going to discuss Lazy Loading vs Eager Loading in Entity Framework with Examples Please read our previous two articles where we discussed Eager Loading and Lazy Loading in Entity Framework We are also going to work with the same application that we created in our Introduction to Database First Article so please read our Introduction to Database First Approach article before proceeding to this article and get the required database scripts to create and populate the database as well as to know how we use the Entity Framework Database First Approach to create the Entity Data ModelDisconnected Entities in Entity Framework with ExamplesIn this article I am going to discuss Entity Framework Disconnected Entities with Examples Please read our previous article where we discussed Explicit Loading in Entity Framework At the end of this article you will understand what are exactly Disconnected Entities in the Entity Framework and the different methods to attach disconnected entities in Entity Framework 6 with examples Saving Disconnected Entity in Entity FrameworkIn this article I am going to discuss How to Save Disconnected Entities in the Entity Framework with Examples Please read our previous article where we discussed the Different Methods to Attach Disconnected Entities to the Context Object in the Entity Framework We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Chapter Entity Framework in C Eager Loading in Entity Framework  Lazy Loading in Entity Framework  Explicit Loading in Entity Framework  Lazy Loading vs Eager Loading in Entity Framework  Disconnected Entities in Entity Framework  Saving Disconnected Entity in Entity Framework Text Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet  Eager Loading in Entity Framework  httpsdotnettutorialsnetlessoneagerloadinginentityframeworkLazy Loading in Entity Framework  httpsdotnettutorialsnetlessonlazyloadinginentityframeworkExplicit Loading in Entity Framework  httpsdotnettutorialsnetlessonexplicitloadinginentityframeworkLazy Loading vs Eager Loading in Entity Framework  httpsdotnettutorialsnetlessonlazyloadingvseagerloadinginentityframeworkDisconnected Entities in Entity Framework  httpsdotnettutorialsnetlessondisconnectedentitiesinentityframeworkSaving Disconnected Entity in Entity Framework  httpsdotnettutorialsnetlessondisconnectedentityinentityframework  dotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  EagerLoadinginEntityFramework LazyLoadinginEntityFramework ExplicitLoadinginEntityFramework LazyLoadingvsEagerLoadinginEntityFramework DisconnectedEntitiesinEntityFramework SavingDisconnectedEntityinEntityFramework",
          "https://i.ytimg.com/vi/rvWQxoPXKuc/default.jpg",
          "2:22:29",
          "2023-07-24",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "JaFu-BaBEUk",
          "Asynchronous Programming | Bulk Insert Extension Method |  Bulk Insert, Update and Delete in EF",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Asynchronous Programming with Entity FrameworkIn this article I am going to discuss Working with Asynchronous Programming with Entity Framework Please read our previous article where we discussed how to work with Disconnected Entities in the Entity Framework with Examples Asynchronous operations are used to avoid blocking a thread while the query is executed in the database At the end of this article you will understand how to perform Asynchronous CRUD Operations using the Entity Framework We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleBulk Insert Update and Delete in Entity FrameworkIn this article I am going to discuss Bulk Insert Update and Delete in Entity Framework with Examples Please read our previous article where we discussed Asynchronous Programming with Entity Framework with Examples At the end of this article you will understand how to insert update and delete multiple entities in Entity Framework We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleBulkInsert Extension Method in Entity FrameworkIn this article I am going to discuss BulkInsert Extension Method in Entity Framework using ZEntityFrameworkExtensions with Examples Please read our previous article where we discussed Bulk Insert Update and Delete Operations in Entity Framework with Examples At the end of this article you will understand how to perform bulk insert using the BulkInsert extension method in Entity Framework We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleBulk Update in Entity Framework using BulkUpdate Extension MethodIn this article I am going to discuss How to perform Bulk Update in Entity Framework using the BulkUpdate Extension Method with Examples Please read our previous article where we discussed how to perform Bulk Insert in Entity Framework using the BulkInsert Extension Method with Examples We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleChapter Entity Framework in C Asynchronous Programming with Entity Framework Bulk Insert Update and Delete in Entity Framework BulkInsert Extension Method in Entity Framework BulkUpdate in Entity Framework BulkDelete in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Asynchronous Programming with Entity Framework  httpsdotnettutorialsnetlessonasynchronousprogrammingwithentityframework Bulk Insert Update and Delete in Entity Framework  httpsdotnettutorialsnetlessonbulkinsertupdateanddeleteinentityframework BulkInsert Extension Method in Entity Framework  httpsdotnettutorialsnetlessonbulkinsertinentityframework BulkUpdate in Entity Framework  httpsdotnettutorialsnetlessonbulkupdateinentityframework BulkDelete in Entity Framework  httpsdotnettutorialsnetlessonbulkdeleteinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  AsynchronousProgrammingwithEntityFrameworkBulk InsertUpdateandDeleteinEntityFrameworkBulkInsertExtensionMethodinEntityFrameworkBulkUpdateinEntityFrameworkBulkDeleteinEntityFramework",
          "https://i.ytimg.com/vi/JaFu-BaBEUk/default.jpg",
          "1:57:21",
          "2023-07-24",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "CnXah--gpqw",
          "Stored Procedure in EF DB First Approach  | Stored Function in EF  | Views in Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Stored Procedure in Entity Framework Database First ApproachIn this article I am going to discuss How to use Stored Procedures in Entity Framework Database First Approach to Perform Database CRUD Operations with Examples Please read our previous article where we discussed how to perform Bulk DELETE in Entity Framework using the BulkDelete Extension Method with Examples We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleWhat is a Stored ProcedureA Stored Procedure is a database object which contains PreCompiled SQL queries a group of TSQL Statements In other words we can say that Stored Procedures are a block of code designed to perform a task whenever it is called Please Click Here to learn more about SQL Server Stored ProcedureStored Functions in Entity Framework with ExamplesIn this article I am going to discuss How to use Stored Functions in Entity Framework Database First Approach with Examples Please read our previous article where we discussed How to use Stored Procedures in Entity Framework Database First Approach We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleWhat is a Function in SQL Server DatabaseA function in SQL Server Database is a subprogram or you can say database object that is used to perform an action such as complex calculation and returns the result of the action as a value There are two types of functions available in SQL Server Database Database Views in Entity Framework with ExamplesIn this article I am going to discuss How to use Database View in Entity Framework Database First Approach with Examples Please read our previous article where we discussed How to use Stored Functions in Entity Framework Database First Approach We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our introduction to Entity Framework Database First article before proceeding to this articleWhat is a View in SQL Server DatabaseThe views in SQL Server are nothing more than a compiled SQL query We can also consider the Views as virtual tables As a virtual table the Views do not store any data physically by default But if you want then you can change this default behavior So when we query a view it actually gets the data from the underlying database tables as shown in the below imageChapter Entity Framework in C Stored Procedure in Entity Framework Stored Function in Entity Framework Views in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Stored Procedure in Entity Framework  httpsdotnettutorialsnetlessonstoredprocedureinentityframework Stored Function in Entity Framework  httpsdotnettutorialsnetlessonstoredfunctioninentityframework Views in Entity Framework  httpsdotnettutorialsnetlessonviewsinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  Stored Procedure in Entity FrameworkStoredFunctioninEntityFrameworkViewsinEntityFramework",
          "https://i.ytimg.com/vi/CnXah--gpqw/default.jpg",
          "1:29:33",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "-9e1hbtVxmE",
          "Transactions in Entity Framework | Validate Entity  | DbEntity Entry Class | Change Tracking",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Transactions in Entity Framework with ExamplesIn this article I am going to discuss How to use Transactions in Entity Framework Database First Approach with Examples We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Please read our Introduction to Entity Framework Database First article before proceeding to this articleWhat is a TransactionA Transaction is a set of operations multiple DML Operations that ensures either all database operations succeeded or all of them failed to ensure data consistency This means the job is never half done either all of it is done or nothing is doneValidate Entity in Entity Framework with ExamplesIn this article I am going to discuss How to Validate an Entity in Entity Framework Database First Approach with Examples Please read our previous article where we discussed How to use Transactions in Entity Framework Database First ApproachWhat are the ValidationsValidation is one of the most important features that we need to apply to the data that we are going to store in the database In simple terms we can say that validations are nothing but some rules set by the developer on the input data of a web page so as to satisfy the business rules for that particular input data in order to maintain the proper data in a systemDbEntityEntry Class in Entity FrameworkIn this article I am going to discuss DbEntityEntry Class in Entity Framework Database First Approach with Examples Please read our previous article where we discussed How to Validate Entities in Entity Framework Database First Approach We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article DbEntityEntry Class in Entity FrameworkThe DbEntityEntry Class is one of the most important classes in Entity Framework In Entity Framework this Class is useful in retrieving various information about an entity You can get an instance of the DBEntityEntry type of a particular entity by calling the Entry method on the DbContext object by passing the entityChange Tracking in Entity FrameworkIn this article I am going to discuss Change Tracking in Entity Framework Database First Approach with Examples Please read our previous article where we discussed DbEntityEntry Class in Entity Framework Database First Approach We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach articleChange Tracking in Entity FrameworkLet us understand how Entity Framework tracks changes in entities during their lifetime The Entity Framework supports automatic change tracking of the attached entities during the lifetime of the context Logging Database Commands in Entity FrameworkIn this article I am going to discuss Logging Database Commands in Entity Framework Database First Approach with Examples Please read our previous article where we discussed Change Tracking in Entity Framework Database First Approach We are going to work with the same example that we created in our Introduction to Entity Framework Database First Approach article Logging Database Commands in Entity FrameworkLet us understand how to log commands and queries which is generated and sent to the database by Entity Framework 6 Prior to Entity Framework 6 we used the database tracing tool or thirdparty tracing tools like SQL Profiler to trace database queries and commands sent by Entity FrameworkChapter Entity Framework in C Transactions in Entity Framework Validate Entity in Entity Framework DbEntityEntry Class in Entity Framework Change Tracking in Entity Framework Logging Database Commands in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Transactions in Entity Framework  httpsdotnettutorialsnetlessontransactionsinentityframework Validate Entity in Entity Framework  httpsdotnettutorialsnetlessonvalidateentityinentityframework DbEntityEntry Class in Entity Framework  httpsdotnettutorialsnetlessondbentityentryclassinentityframework Change Tracking in Entity Framework  httpsdotnettutorialsnetlessonchangetrackinginentityframework Logging Database Commands in Entity Framework  httpsdotnettutorialsnetlessonloggingdatabasecommandsinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  TransactionsinEntityFrameworkValidateEntityinEntityFrameworkDbEntityEntryClassinEntityFrameworkChangeTrackinginEntityFrameworkLoggingDatabaseCommandsinEntityFramework",
          "https://i.ytimg.com/vi/-9e1hbtVxmE/default.jpg",
          "1:45:30",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "HVK3xSfpEqM",
          "Entity Framework Code First Approach | Default Code-First Conventions in Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Entity Framework Code First ApproachIn this article I am going to give you a brief introduction to the Entity Framework Code First Approach In the Entity Framework the Code First Approach is one of the three approaches to interact with the database The other two approaches are Model First Approach and Database First Approach Here in this article we are going to keep the focus on the Code First Approach of Entity Framework and will learn how to use the Code First approach of Entity Framework to interact with the databaseDifferent Approaches to working with Entity FrameworkAs we already discussed the Entity Framework provides three different approaches to work with and each approach has its own advantages and disadvantagesDefault CodeFirst Conventions in Entity FrameworkIn this article I am going to discuss Default CodeFirst Conventions in Entity Framework with Examples Please read our previous article where we discussed How to use Entity Framework Code First Approach before proceeding to this article We are going to work with the same example that we created in our previous articleDefault CodeFirst Conventions in Entity FrameworkIn Entity Framework CodeFirst Approach the conventions are nothing but a set of default rules which automatically configure a Conceptual Model based on your domain classes In our previous article we created one example using Entity Framework CodeFirst Approach and we have seen that Entity Framework automatically configured the Primary Keys the Foreign Keys relationships between the tables appropriate data types of the columns etc from the domain classes without any additional configurationsChapter Entity Framework in C Entity Framework Code First Approach Default CodeFirst Conventions in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Entity Framework Code First Approach  httpsdotnettutorialsnetlessonintroductiontoentityframeworkcodefirstapproach Default CodeFirst Conventions in Entity Framework  httpsdotnettutorialsnetlessoncodefirstconventionsinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  EntityFrameworkCodeFirstApproachDefaultCodeFirstConventionsinEntityFramework",
          "https://i.ytimg.com/vi/HVK3xSfpEqM/default.jpg",
          "1:41:46",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QP3stjxOWeM",
          "Database Initialization | Database Initialization Strategies | Configure Domain Classes | EF CF",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Database Initialization in Entity Framework Code First ApproachIn this article I am going to discuss Database Initialization in Entity Framework Code First Approach with Examples Please read our previous article where we discussed Default CodeFirst Conventions in Entity FrameworkDatabase Initialization in Entity Framework Code First ApproachWe have already discussed that the Entity Framework CodeFirst Approach creates a database automatically Now let us try to understand how the Entity Framework API decides the database name what should be the name of the database and server where the database should be created while initializing a database using the codefirst approach Please have a look at the following diagram which shows database initialization workflow based on the parameter passed to the DbContext class constructor from our context class ie the class which is derived from the DbContext classDatabase Initialization Strategies in Entity Framework CodeFirstIn this article I am going to discuss Database Initialization Strategies in Entity Framework CodeFirst Approach with Examples Please read our previous article where we discussed Database Initialization in Entity Framework Code First Approach with ExamplesDatabase Initialization Strategies in Entity Framework CodeFirst ApproachWhen we run the application code for the first time using Entity Framework CodeFirst Approach then the database is created in the specified database server But what happens when we run the application code from the second time onward Will the Entity Framework create a new database every time we run the application What about the Production Environment How do you manage or alter the database schema when you change your domain classes To handle these scenarios using Entity Framework CodeFirst Approach we need to use one of the database initialization strategiesConfigure Domain Classes in Entity FrameworkIn this article I am going to discuss How to Configure Domain Classes in Entity Framework CodeFirst Approach with Examples Please read our previous article where we discussed Database Initialization Strategies in Entity Framework CodeFirst Approach with ExamplesConfigure Domain Classes in Entity FrameworkWe have already discussed the default Entity Framework CodeFirst Conventions in the previous article The EF CodeFirst builds the conceptual model from your domain classes using the default conventions The Entity Framework CodeFirst follows a programming pattern referred to as Convention Over Configuration However it is also possible to override these default conventions and in this case we need to provide the required configuration information to the Entity Framework API And you can configure your domain classes or you can provide the configuration information to the Entity Framework in two different waysChapter Entity Framework in C Database Initialization in Entity Framework Code First Database Initialization Strategies in Entity Framework CodeFirst Configure Domain Classes in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Database Initialization in Entity Framework Code First  httpsdotnettutorialsnetlessondatabaseinitializationinentityframeworkcodefirst Database Initialization Strategies in Entity Framework CodeFirst  httpsdotnettutorialsnetlessondatabaseinitializationstrategiesinentityframeworkcodefirst Configure Domain Classes in Entity Framework  httpsdotnettutorialsnetlessonconfiguredomainclassesinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  DatabaseInitializationinEntityFrameworkCodeFirstDatabaseInitializationStrategiesinEntityFrameworkCodeFirstConfigureDomainClassesinEntityFramework",
          "https://i.ytimg.com/vi/QP3stjxOWeM/default.jpg",
          "2:46",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KNTaXaa9eM4",
          "Data Annotation | Table | Key | Foreign Key | Index Attribute in Entity Framework Code-First",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Data Annotation Attributes in Entity Framework CodeFirstIn this article I am going to discuss How to Configure Domain Classes using Data Annotation Attributes in Entity Framework CodeFirst Approach with Examples Please read our previous article where we discussed How to Configure Domain Classes in Entity Framework Approach with ExamplesData Annotation Attributes in Entity Framework CodeFirstData Annotations are nothing but NET Attributes or NET Classes that can be applied to our domain classes and their properties to override the default conventions in Entity Framework The most important point that you need to remember is that these Data Annotations Attributes are not only for Entity Framework but also used in ASPNET MVC or ASPNET Web API etcTable Data Annotation Attribute in Entity FrameworkIn this article I am going to discuss Table Data Annotation Attribute in Entity Framework Code First Approach with Examples Please read our previous article where we discussed How to Configure Domain Classes using Data Annotation Attributes in Entity Framework CodeFirst Approach with ExamplesTable Data Annotation Attribute in Entity Framework Code FirstThe Table Data Annotation Attribute in Entity Framework Code First Approach can be applied to a domain class to configure the corresponding database table name and schema Column Data Annotation Attribute in Entity Framework Code FirstThe Column Data Annotation Attribute can be applied to one or more properties of a domain entity to configure the corresponding database column name column order and column data type That means it represents the database column that a property is mapped toKey Attribute in Entity Framework with ExamplesIn this article I am going to discuss Key Data Annotation Attributes in Entity Framework Code First Approach with Examples Please read our previous article where we discussed Column Data Annotation Attribute in Entity Framework Code First Approach with Examples BForeignKey Attribute in Entity FrameworkIn this article I am going to discuss ForeignKey Data Annotation Attribute in Entity Framework Code First Approach with Examples Please read our previous article where we discussed Key Attributes in Entity Framework Code First Approach with ExamplesWhat is a Foreign Key Constraint in a DatabaseOne of the most important concepts in a database is creating the relationship between the database tables This relationship provides a mechanism for linking the data stores in multiple database tables and retrieving Index Attribute in Entity Framework with ExamplesIn this article I am going to discuss Index Data Annotation Attribute in Entity Framework Code First Approach with Examples Please read our previous article where we discussed ForeignKey Attribute in Entity Framework Code First Approach with Examples At the end of this article you will understand how to create Indexes Clustered NonClustered and Unique or NonUnique Indexes using Entity Framework Code First Approach with ExamplesIndex Attribute in Entity FrameworkEntity Framework 6 provides the Index attribute to create an index on a particular column in the database If you are using an earlier version of Entity Framework then the Index Attribute will not work It is also possible to create an index on one or more columns using the Index AttributeChapter Entity Framework in C Data Annotation Attributes in Entity Framework CodeFirst Table Attribute in Entity Framework Column Data Annotation Attribute in Entity Framework Key Attribute in Entity Framework ForeignKey Attribute in Entity Framework Index Attribute in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Data Annotation Attributes in Entity Framework CodeFirst  httpsdotnettutorialsnetlessondataannotationattributesinentityframework Table Attribute in Entity Framework  httpsdotnettutorialsnetlessontableattributeinentityframework Column Data Annotation Attribute in Entity Framework  httpsdotnettutorialsnetlessoncolumnattributeinentityframework Key Attribute in Entity Framework  httpsdotnettutorialsnetlessonkeyattributeinentityframework ForeignKey Attribute in Entity Framework  httpsdotnettutorialsnetlessonforeignkeyattributeinentityframework Index Attribute in Entity Framework  httpsdotnettutorialsnetlessonindexattributeinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  DataAnnotationAttributesinEntityFrameworkCodeFirstTableAttributeinEntityFrameworkColumnDataAnnotationAttributeinEntityFrameworkKeyAttributeinEntityFrameworkForeignKeyAttributeinEntityFrameworkIndexAttributeinEntityFramework",
          "https://i.ytimg.com/vi/KNTaXaa9eM4/default.jpg",
          "2:17:22",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "SKT_m-uyXTs",
          "InverseProperty | NotMapped | Required | MaxLength & MinLength | StringLength | DatabaseGenerated",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "InverseProperty Attribute  NotMapped Attribute  Required Attribute  MaxLength and MinLength Attribute  StringLength Attribute  DatabaseGenerated Attribute in Entity Framework TimeStamp Attribute in Entity Framework InverseProperty Attribute in Entity FrameworkThe InverseProperty Attribute in Entity Framework Code First Approach is used when two entities have more than one relationship A relationship in Entity Framework always has two endpoints Each end must return a navigational property that maps to the other end of the relationshipNotMapped Attribute in Entity FrameworkThe NotMapped Attribute in Entity Framework can be applied to one or more properties of an entity class for which we do not want to create corresponding columns in the database table By default Entity Framework API creates a column for each property property having the get and set accessors in an entity classRequired Attribute in Entity FrameworkThe Required Data Annotation Attribute in Entity Framework can be applied to one or more properties of an entity class If we applied the Required Attribute to a Property then Entity Framework will create a NOT NULL column for that Property in the database NOT NULL Column means it will not accept NULL Value in that column in the databaseMaxLength and MinLength Attribute in Entity FrameworkThe MaxLength Data Annotation Attribute in Entity Framework specifies the maximum length of data value that can be allowed for a property This MaxLength Attribute will set the size of the corresponding database table column in the database  The MinLength Data Annotation Attribute in Entity Framework specifies the minimum length of data value that can be allowed for a property In this case it will set the size of the corresponding database table column in the database as max In simple words we can say that using MinLength Data Annotation Attribute we can provide a validation of the length of the data that we are going to store in the property StringLength Attribute in Entity FrameworkThe StringLength Data Annotation Attribute in Entity Framework can be applied to the string or Byte properties of an entity class It is similar to the MaxLength and MinLength Attributes ie we can set both MinLength and MaxLength using this attributeDatabaseGenerated Attribute in Entity FrameworkAs we already discussed by default Entity Framework API creates an IDENTITY column in the database for the Key Property of the entity It will not generate an identity column for the composite key or composite primary key In the case of Primary Key with a single column SQL Server creates an integer IDENTITY column with identity seed and increment values as 1TimeStamp Attribute in Entity FrameworkThe Timestamp Data Annotation Attribute in Entity Framework can only be applied once in an entity class to a byte array type property It creates a column with timestamp data type in the SQL Server database Entity Framework API automatically uses this Timestamp column in concurrency check on the UPDATE statement in the database Chapter Entity Framework in C InverseProperty Attribute in Entity Framework NotMapped Attribute in Entity Framework Required Attribute in Entity Framework MaxLength and MinLength Attribute in Entity Framework StringLength Attribute in Entity Framework DatabaseGenerated Attribute in Entity Framework TimeStamp Attribute in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet InverseProperty Attribute in Entity Framework  httpsdotnettutorialsnetlessoninversepropertyattributeinentityframework NotMapped Attribute in Entity Framework  httpsdotnettutorialsnetlessonnotmappedattributeinentityframework Required Attribute in Entity Framework  httpsdotnettutorialsnetlessonrequiredattributeinentityframework MaxLength and MinLength Attribute in Entity Framework  httpsdotnettutorialsnetlessonmaxlengthandminlengthattributeinentityframework StringLength Attribute in Entity Framework  httpsdotnettutorialsnetlessonstringlengthattributeinentityframework DatabaseGenerated Attribute in Entity Framework  httpsdotnettutorialsnetlessondatabasegeneratedattributeinentityframework TimeStamp Attribute in Entity Framework  httpsdotnettutorialsnetlessontimestampattributeinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  InversePropertyAttributeinEntityFrameworkNotMappedAttributeinEntityFrameworkRequiredAttributeinEntityFrameworkMaxLengthandMinLengthAttributeinEntityFrameworkStringLengthAttributeinEntityFrameworkDatabaseGeneratedAttributeinEntityFrameworkTimeStampAttributeinEntityFramework",
          "https://i.ytimg.com/vi/SKT_m-uyXTs/default.jpg",
          "1:41:21",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QyGgTbSSSBs",
          "Fluent API Configurations in Entity Framework",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Fluent API Configurations in Entity FrameworkIn this article I am going to discuss Fluent API Configurations in Entity Framework Code First Approach with Examples Please read our previous article where we discussed ConcurrencyCheck Attribute in Entity Framework with ExamplesFluent API Configurations in Entity FrameworkLike the Data Annotation Attribute the Entity Framework provides Fluent API which we can also use to configure the domain classes which will override the default conventions which is followed by the Entity Framework The Entity Framework Fluent API is based on the Fluent API design pattern also known as Fluent Interface Design Pattern where the result is formulated by method chaining So before proceeding further and understanding the Fluent API in Entity Framework we first need to understand the Fluent Interface Design Pattern and Method ChainingChapter Entity Framework in C Fluent API Configurations in Entity FrameworkText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Fluent API Configurations in Entity Framework  httpsdotnettutorialsnetlessonfluentapiconfigurationsinentityframeworkdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  FluentAPIConfigurationsinEntityFrameworkFluentAPI FluentAPIByPranaya FluentAPIByDotnettutorialFluentAPIEntityFramework",
          "https://i.ytimg.com/vi/QyGgTbSSSBs/default.jpg",
          "2:9:52",
          "2023-07-25",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cHA3I1ZTLls",
          "One-to-One Relationship |  One-to-Many Relationships | Many-to-Many Relationships in EF Fluent API",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "OnetoOne Relationships in Entity Framework  Fluent API OnetoMany Relationships in Entity Framework Fluent API    ManytoMany Relationships in Entity Framework Fluent APIConfigure OnetoOne Relationships in Entity Framework Fluent APIIn this article I am going to discuss how to configure OnetoZero or OnetoOne relationships between two entities using Entity Framework Fluent API with Examples Let us understand this with an example We are going to implement OnetoZero or OnetoOne relationship between the following Student and StudentAddress entitiesHow to Configure OnetoZeroorOne Relationship using Fluent APIWe can configure the OnetoZeroorOne relationship between two entities using both Data Annotation Attribute and Fluent API We have already discussed configuring One to One relationship between the two entities using the ForeignKey Data Annotation Attribute Now let us proceed and try to understand how to Configure OnetoZero or OnetoOne relationships between two entities using Entity Framework Fluent API To implement this we need to use the following HasOptional and WithRequired Fluent API methodsHasOptional It configures an optional relationship from the entity type Instances of the entity type will be able to be saved to the database without this relationship being specified The foreign key in the database will be nullableWithRequired It configures the relationship to be optionalrequired with a navigation property on the other side of the relationshipConfigure OnetoMany Relationships using Entity Framework Fluent APIIn this article I am going to discuss how to configure OnetoMany Relationships between two Entities using Entity Framework Fluent API with Examples Please read our previous article where we discussed how to configure OnetoZero or OnetoOne relationships between two entities Let us understand this with an example We are going to implement a OnetoMany relationship between the following Student and Standard EntitiesConvention 1 for Implementing OnetoMany RelationshipOur Requirement is to establish a OnetoMany Relationship between the Student and Standard entities That means one can student can be associated with one standard and one standard can be assigned to many students We can achieve this very easily by including a Reference Navigation Property of type Standard in the Student entity classConfigure ManytoMany Relationships in Entity Framework Fluent APIIn this article I am going to discuss how to configure ManytoMany relationships between two entities using Entity Framework Fluent API with Examples Please read our previous article where we discussed how to configure OnetoMany relationships between two entitiesHow to Configure ManytoMany Relationships in Entity FrameworkIn manytomany relationships a row in one table lets say TableA can have many matching rows in another table lets TableB and vice versa is also true ie a row in TableB can have many matching rows in TableA In Relational Databases we can create such kinds of manytomany relationships by defining a third table whose primary key consists of the foreign keys from both tableA and tableB So here the Primary Key is a composite Primary keyLet us understand this with an example We are going to implement a OnetoMany relationship between the Student and Course Entities That means one Student can enroll for many Courses and also one Course can be taken by many studentsIn Entity Framework Code First Approach we can configure the manytomany relationship between two entities in the following waysChapter Entity Framework in C OnetoOne Relationships in Entity Framework Fluent API OnetoMany Relationships in Entity Framework Fluent API ManytoMany Relationships in Entity Framework Fluent APIText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet OnetoOne Relationships in Entity Framework Fluent API  httpsdotnettutorialsnetlessononetoonerelationshipsinentityframeworkfluentapi OnetoMany Relationships in Entity Framework Fluent API  httpsdotnettutorialsnetlessononetomanyrelationshipsinentityframeworkfluentapi ManytoMany Relationships in Entity Framework Fluent API  httpsdotnettutorialsnetlessonmanytomanyrelationshipsinentityframeworkfluentapidotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  FluentAPIConfigurationsinEntityFrameworkFluentAPI FluentAPIByPranaya FluentAPIByDotnettutorialFluentAPIEntityFrameworkOnetoOneRelationshipsinEntityFrameworkFluentAPIOnetoManyRelationshipsinEntityFrameworkFluentAPIManytoManyRelationshipsinEntityFrameworkFluentAPI",
          "https://i.ytimg.com/vi/cHA3I1ZTLls/default.jpg",
          "1:33:56",
          "2023-07-26",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "xUf-LMQCjiE",
          "Existing Database in EF CF Approach | Stored Procedures in EF CF | Cascade Delete in EF CF Approach",
          "Entity Framework Tutorials using C#",
          "PLNgSFZ9yC06KSK9WveU472vBHbzCuYymf",
          "Existing Database using Entity Framework Code First Approach  Stored Procedures in Entity Framework CodeFirst  Cascade Delete in Entity Framework Code First ApproachExisting Database using Entity Framework CodeFirst ApproachNow we will discuss How to Generate Context and Entity Classes from an Existing Database using Entity Framework CodeFirst Approach with Examples The Entity Framework API provides an easy way to use the codefirst approach with an existing database In this case the Entity Framework API will create the entity classes for all the tables and views for our existing database and configure them with data annotations attributes and Fluent APIRequired Database Tables and ViewsWe are going to create the database with the following tables And then I am going to show you how to generate the Entities using Code First Approach and configure them using Data Annotation Attributes and Fluent APIStored Procedures in Entity Framework CodeFirst ApproachIn this article I am going to discuss How to Perform CUD Operations using Stored Procedures in Entity Framework CodeFirst Approach with Examples Please read our previous article where we discussed How to Generate Context and Entity Classes from an Existing Database using Entity Framework CodeFirst ApproachStored Procedures in Entity Framework CodeFirst ApproachThe Entity Framework CodeFirst Approach allows us to create and use stored procedures for Insert Update and Delete database operations when the SaveChanges method is called on the context object Let us understand this with an example Let us use stored procedures for the CUD CreateInsert Update Delete operations for the following Student entityChapter Entity Framework in C Existing Database using Entity Framework Code First Approach Stored Procedures in Entity Framework CodeFirst Cascade Delete in Entity Framework Code First ApproachText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnet Existing Database using Entity Framework Code First Approach  httpsdotnettutorialsnetlessonexistingdatabaseusingentityframeworkcodefirst Stored Procedures in Entity Framework CodeFirst  httpsdotnettutorialsnetlessonstoredproceduresinentityframeworkcodefirst Cascade Delete in Entity Framework Code First Approach  httpsdotnettutorialsnetlessoncascadedeleteinentityframeworkcodefirstdotnettutorials csharp  pranaya dotnettutorialspranaya EntityFramework EntityFrameworkInteroductionEntityFrameworkByDotNetTutorials EntityFrameworkInteroductionByDotNetTutorialsEntityFrameworkByPranaya EntityFrameworkInteroductionByPranaya  FluentAPIConfigurationsinEntityFrameworkFluentAPI FluentAPIByPranaya FluentAPIByDotnettutorialFluentAPIEntityFrameworkExistingDatabaseusingEntityFrameworkCodeFirstApproachStoredProceduresinEntityFrameworkCodeFirstCascadeDeleteinEntityFrameworkCodeFirstApproach",
          "https://i.ytimg.com/vi/xUf-LMQCjiE/default.jpg",
          "1:54:42",
          "2023-07-26",
          "dotnet"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
  "ADO.NET using C#",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "WoL4vEstYTU",
          "Introduction to ADO.NET | ADO.NET using SQL Server | ADO.NET SqlConnection | ADO.NET SqlCommand",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "Introduction to ADONET  ADONET using SQL Server  ADONET SqlConnection  ADONET SqlCommand  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingIntroduction to ADONETIn this video I will give you a brief introduction to ADONET As a NET developer you should be aware of ADONET You will understand the following pointers in detail at the end of this videoWhat is ADONETWhat types of Applications use ADONETComponents of ADONETWhat are NET Data ProvidersWhat is ADONETADO stands for Microsoft ActiveX Data Objects ADONET is one of Microsofts Data Access Technologies using which we can communicate with different data sources It is a part of the NET Framework which establishes a connection between the NET Application and different data sources The Data Sources can be SQL Server Oracle MySQL XML etc ADONET consists of a set of predefined classes that can be used to connect retrieve insert update and delete data ie performing CRUD operation from data sources ADONET mainly uses SystemDatadll and SystemXmldllADONET SqlConnection Class in C with ExamplesWhat is the ADONET SqlConnection classHow to instantiate the SqlConnection objectUsing the SqlConnection objectWhy is it important to close a database connectionHow to properly close a connectionWhat is the problem with hardcoding the connection string in the applicationHow do you store and retrieve the connection string from the configuration fileADONET SqlCommand Class in C with ExamplesWhat is SqlCommand Class and its need in CHow to create an instance of the SqlCommand classUnderstanding the constructors and methods of SqlCommand ClassWhen to use ExecuteReader ExecuteScalar and ExecuteNonQuery methods of the SqlCommand objectFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoIntroduction to ADONET httpsdotnettutorialsnetlessonwhatisadonetADONET using SQL Server httpsdotnettutorialsnetlessonadonetusingsqlserverADONET SqlConnection Class httpsdotnettutorialsnetlessonadonetsqlconnectionclassADONET SqlCommand httpsdotnettutorialsnetlessonadonetsqlcommandclassadodotnet adodotnetbyPranaya adodotnetbydotnettutorials dotnettutorials csharp  pranaya dotnettutorialspranaya IntroductiontoADONET ADONETusingSQLServerADONETSqlConnectionClass ADONETSqlCommand DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/WoL4vEstYTU/default.jpg",
          "2:2:22",
          "2023-07-30",
          "Introduction to ADO.NET,ADO.NET using SQL Server,ADO.NET SqlConnection,ADO.NET SqlCommand,What is ADO.NET,What types of Applications use ADO.NET,Components of ADO.NET,What are .NET Data Providers,ADO.NET SqlCommand Class in C# with Examples,What is SqlCommand Class and its need in C#,How to create an instance of the SqlCommand class"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4VATdyME64w",
          "ADO.NET SqlDataReader in C# | ADO.NET SqlDataAdapter in C# | ADO.NET DataTable | Dot Net Tutorials",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "ADONET SqlDataReader in C  ADONET SqlDataAdapter in C  ADONET DataTable  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingADONET SqlDataReader in C with ExamplesWhat is the SqlDataReader Class and its need in CHow to create an instance of the SqlDataReader classHow to read data from the SqlDataReader objectThe ADONET SqlDataReader class in C is used to read data from the SQL Server database in the most efficient manner It reads data in the forwardonly direction It means once it reads a record it will read the next one There is no way to go back and read the previous recordADONET SqlDataAdapter in C with ExamplesWhat is ADONET SqlDataAdapterUnderstanding Constructors Methods and Properties of  SqlDataAdapterHow do you create an instance of the SqlDataAdapter class in ADONETSqlDataAdapter using Stored ProcedureHow do you call a stored procedure using SqlDataAdapterThe ADONET SqlDataAdapter in C bridges a DataSet or DataTable and a Data Source SQL Server Database to retrieve data The SqlDataAdapter class represents a set of SQL commands and a database connection It is used to fill the DataSet or DataTable and update the data sourceADONET DataTable in C with ExamplesWhat is ADONET DataTableUnderstanding Properties Methods and Constructors of DataTable class in CHow to create a DataTable in CThe DataTable in C is similar to the Tables in SQL That means the DataTable will also represent the relational data in tabular form ie rows and columns and this data will be stored in memory When we create an instance of DataTable by default it does not have a table schema ie it does not have any columns or constraints by default You can create the table schema by adding columns and constraints to the table Once you define the schema ie columns and constraints for the DataTable only you can add rows to the data table For live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoADONET SqlDataReader  httpsdotnettutorialsnetlessonadonetsqldatareaderADONET SqlDataAdapter  httpsdotnettutorialsnetlessonadonetsqldataadapterADONET DataTable in C  httpsdotnettutorialsnetlessonadonetdatatableADOdotNETSqlDataReader ADOdotNETSqlDataAdapter ADOdotNETDataTable SqlDataReader SqlDataAdapter DataTable dotnettutorials csharp  pranaya dotnettutorialspranaya adodotnet adodotnetbyPranaya adodotnetbydotnettutorials DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/4VATdyME64w/default.jpg",
          "1:59:50",
          "2023-07-30",
          "ADO.NET SqlDataReader in C# with Examples,What is the SqlDataReader Class and its need in C#,How to create an instance of the SqlDataReader class,How to read data from the SqlDataReader object,ADO.NET SqlDataAdapter in C# with Examples,What is ADO.NET SqlDataAdapter,SqlDataAdapter using Stored Procedure,How to call a stored procedure using SqlDataAdapter,ADO.NET DataTable in C# with Examples,What is ADO.NET DataTable,How to create a DataTable in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vWN16cQbIU8",
          "DataTable Methods in C# | ADO.NET DataSet | ADO.NET DataSet using SQL Server | Dot Net Tutorials",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "DataTable Methods in C  ADONET DataSet  ADONET DataSet using SQL Server in C  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingDataTable Methods in C with ExamplesAt the end of this video you will understand the Copy Clone Remove and Delete methods of the DataTable object Example to understand DataTable Methods in C using SQL ServerADONET DataSet in C with ExamplesAt the end of this video you will understand what ADONET DataSet is and when and how to create and use DataSet in NET applicationsWhat is ADONET DataSet in CThe DataSet represents a subset of the database in memory That means the ADONET DataSet is a collection of tables containing relational data in memory in tabular formatADONET DataSet using SQL Server in CWhat is DataSet in CHow to use ADONET DataSet with SQL Server DatabaseExample to Understand ADONET DataSet using SQL Server DatabaseDataSet with Multiple Database Tables using SQL ServerHow to Set the Data Table Name Explicitly in ADONET DataSetExample to understand Copy Clone and Clear Methods of DataSet Object in CHow to Remove a DataTable from ADONET DataSet in CThe ADONET DataSet is a collection of tables containing relational data in memory in tabular format It does not require an open or active connection to the database to fetch the data That means the DataSet is based on the disconnected architecture This is the reason why it is used to fetch the data without interacting with any data source The ADONET DataSet class belongs to the SystemData namespaceFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoDataTable Methods in C httpsdotnettutorialsnetlessondatatablemethodsADONET DataSet httpsdotnettutorialsnetlessonadonetdatasetADONET DataSet using SQL Server httpsdotnettutorialsnetlessondatasetusingsqlserverDataTableMethods ADOdotNETDataSet ADOdotNETDataSetusingSQLServer dotnettutorials csharp  pranaya dotnettutorialspranaya adodotnet adodotnetbyPranaya adodotnetbydotnettutorials ADOdotNETSqlDataReader ADOdotNETSqlDataAdapter DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/vWN16cQbIU8/default.jpg",
          "2:4:37",
          "2023-07-30",
          "DataTable Methods in C# with Examples,Example to understand DataTable Methods in C# using SQL Server,ADO.NET DataSet in C# with Examples,What is ADO.NET DataSet in C#,ADO.NET DataSet using SQL Server in C#,What is DataSet in C#,How to use ADO.NET DataSet with SQL Server Database,Example to Understand ADO.NET DataSet using SQL Server Database,DataSet with Multiple Database Tables using SQL Server,How to Remove a DataTable from ADO.NET DataSet in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "UAhbL2dZAN8",
          "ADO.NET Using Stored Procedure in C# | DataSet using Stored Procedure in C# | Dot Net Tutorials",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "ADONET Using Stored Procedure in C  DataSet using Stored Procedure in C  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingADONET Using Stored Procedures in CAt the end of this video you will understand how to call a stored procedure without a parameter and a Stored Procedure using both Input and Output parameters Before understanding how to call a stored procedure let us first understand What is a Stored ProcedureWhat is a Stored Procedure in SQLA Stored Procedure in SQL is a database object that contains PreCompiled SQL Statements In simple words we can also say that the Stored Procedure is a block of code designed to perform a specific task whenever it is called ADONET DataSet Using Stored Procedure in C with ExamplesUsing ADONET DataSet with Stored Procedure in CSuppose you are calling a stored procedure that returns a result set then you can store that result set in a DataSet For live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorials Text Document Links used in the VideoADONET Using Stored Procedures httpsdotnettutorialsnetlessonadonetusingstoredprocedureADONET DataSet Using Stored Procedure httpsdotnettutorialsnetlessonadonetdatasetusingstoredprocedure ADOdotNETUsingStoredProcedures ADOdotNETDataSetUsingStoredProcedure dotnettutorials csharp  pranaya dotnettutorialspranaya  adodotnet adodotnetbyPranaya adodotnetbydotnettutorials ADOdotNETSqlDataReaderADOdotNETSqlDataAdapter DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/UAhbL2dZAN8/default.jpg",
          "1:35:38",
          "2023-07-30",
          "ADO.NET Using Stored Procedures in C#,What is a Stored Procedure in SQL,ADO.NET DataSet Using Stored Procedure in C# with Examples,Using ADO.NET DataSet with Stored Procedure in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "jlYCReQEUe8",
          "Bulk Insert Update using ADO.NET Stored Procedure and SqlBulkCopy, Batch Operations in ADO.NET",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "Bulk Insert Update in ADONET C using Stored Procedure  Bulk INSERT using SqlBulkCopy in C  Batch Operations in C Using ADONET DataAdapters  Connected and Disconnected Architecture in ADONETBulk INSERT and UPDATE in C and ADONET using Stored ProcedureHere in this video I will explain to you how to perform the Bulk Insert and Update using the Stored Procedure with Examples and how to Perform Batch Operations Using SqlBulkCopy and DataAdaptersWhat is the SqlBulkCopy Class in CThe SqlBulkCopy class in C can only be used to write data to SQL Server tables So this SqlBulkCopy allows us to efficiently bulk load a SQL Server table with data from another source ie from a data table So if you have stored your data in a DataTable then you can insert those data from the data table to the destination database table on the server with the SqlBulkCopy objectPerforming Batch Operations in C Using ADONET DataAdaptersUsing ADONET DataAdapter we can perform batch INSERT UPDATE and DELETE operations from a DataSet or DataTable to the server instead of performing the operations individually So with Batch Operations we can reduce the number of round trips to the server ultimately improving the applications performance Now the SQL Server Data Provider SystemDataSqlClient and Oracle Data Provider SystemDataOracleClient support Batch updates ie batch INSERT UPDATE and DELETE operationsConnected vs Disconnected Architecture in ADONETThe ADONET is one of the Microsoft data access technologies that is used to establish a connection between the NET Application Console WCF WPF Windows MVC Web Form etc and different data sources such as SQL Server Oracle MySQL XML etc The ADONET framework accesses the data from data sources in two different ways The models are Connection Oriented Data Access Architecture and Disconnected Data Access Architecture In this article I will explain these architectures in detail with ExamplesFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorials Text Document Links used in the VideoBulk Insert Update in C using Stored Procedure httpsdotnettutorialsnetlessonbulkinsertupdateincsharpadoBulk INSERT using SqlBulkCopy in C httpsdotnettutorialsnetlessonbulkinsertusingsqlbulkcopyincsharpadoBatch Operations in C Using ADONET DataAdapters httpsdotnettutorialsnetlessonbatchoperationsincsharpusingadonetdataadaptersConnected and Disconnected Architecture in ADONET httpsdotnettutorialsnetlessonconnectedanddisconnectedarchitectureinadonetBulkINSERTusingSqlBulkCopy BatchOperationsUsingDataAdapters ConnectedandDisconnectedArchitecture dotnettutorials csharp  pranaya dotnettutorialspranaya adodotnet adodotnetbyPranaya adodotnetbydotnettutorials DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/jlYCReQEUe8/default.jpg",
          "2:5:6",
          "2023-07-30",
          "Bulk INSERT and UPDATE in C# and ADO.NET using Stored Procedure,What is the SqlBulkCopy Class in C#,Performing Batch Operations in C# Using ADO.NET DataAdapters,Connected vs Disconnected Architecture in ADO.NET"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "h3DzdXF6ves",
          "Transactions in C# ADO.NET  | ADO.NET Distributed Transactions using C# | Dot Net Tutorials",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "Transactions in C ADONET   ADONET Distributed Transactions using C  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingTransactions in ADONET with ExamplesIn this video I will discuss Transactions in ADONET with Examples At the end of this video I am sure you will understand why we need transactions what is exactly a transaction and how to implement transactions using ADONETWhy do we need TransactionsThe most important thing in todays world is data the most challenging job is keeping the data consistent The Database systems store the data and ADONET is one of the data access technologies to access the data stored in the databaseADONET Distributed TransactionsIn this video I will discuss ADONET Distributed Transactions in C with one RealTime Example What is a Transaction in CA Transaction is a set of operations multiple DML Operations that ensures that all the database operations succeed or fail to ensure data consistency This means the job is never half done either all of it is done or nothing is done So a transaction is a unit of work and the transactions ensure the consistency and integrity of a databaseFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorials Text Document Links used in the VideoTransactions in ADONET httpsdotnettutorialsnetlessontransactionsinadonetADONET Distributed Transactions httpsdotnettutorialsnetlessonadonetdistributedtransactionsTransactionsinADOdotNET ADOdotNETDistributedTransactions adotransactioncsharp dotnettutorials csharp  pranaya dotnettutorialspranaya adodotnet adodotnetbyPranaya adodotnetbydotnettutorials DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/h3DzdXF6ves/default.jpg",
          "2:1:25",
          "2023-07-30",
          "Transactions in ADO.NET with Examples,why we need transactions,what is exactly a transaction,how to implement transactions using ADO.NET,Why do we need Transactions,ADO.NET Distributed Transactions,What is a Transaction in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "F_7sdfbUpCs",
          "ADO.NET Connection Pooling in C# | DataView Class in C# | ADO.NET Architecture | Dot Net Tutorials",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "ADONET Connection Pooling in C ADONET DataView Class in C  Architecture of ADONET DataSet  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingADONET Connection Pooling in CWhen we use ADONET in our C Applications we first create the connection object open the connection perform some database operations and finally close the connectionNow the creation of a connection object and opening the connection object is quite expensive In other words when we say open the connection it will internally do a lot of things ie opens the socket some handshaking is happening the connection string is parsed to check whether the connection string format is proper or not the Authentication mechanism is executed and lots of other series of steps have happened internally before the connection object gets connected to the underlying databaseADONET DataView Class in C with ExamplesDataView in C is similar to Views in SQL Server So lets first understand Views in SQL Server then we will understand ADONET DataView Class in C with multiple examplesViews in SQL ServerThe Views in SQL Server are nothing but compiled SQL queries We can also consider the Views as virtual tables As a virtual table the Views do not store any data physically by default But if you want then you can change this default behavior So when we query a view it actually gets the data from the underlying database tablesWhat is ADONET DataSetThe DataSet object is central to supporting disconnected distributed data scenarios with ADONET The DataSet is a memoryresident representation of data that provides a consistent relational programming model regardless of the data source It can be used with multiple and differing data sources with XML data or to manage data local to the application The DataSet represents a complete data set including related tables constraints and relationships among the tables For live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorials Text Document Links used in the VideoADONET Connection Pooling httpsdotnettutorialsnetlessonadonetconnectionpoolingADONET DataView Class in C httpsdotnettutorialsnetlessonadonetdataviewclassincsharpADONET DataSet Architecture httpsdotnettutorialsnetlessonarchitectureofdataset adodotnetconnectionpooling adodotnetdataview adodotnetdatasetarchitecturedotnettutorials csharp  pranaya dotnettutorialspranaya adodotnet adodotnetbyPranaya adodotnetbydotnettutorials DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/F_7sdfbUpCs/default.jpg",
          "2:28:8",
          "2023-07-30",
          "ADO.NET Connection Pooling in C#,ADO.NET DataView Class in C# with Examples,Views in SQL Server,What is ADO.NET DataSet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "U0by1s_s-JA",
          "ADO.NET using XML Data in C# | SQL Injection and Prevention in C# | SqlCommandBuilder in ADO.NET C#",
          "ADO.NET using C#",
          "PLNgSFZ9yC06Ik0ZFg968zlboB4yAoX3Si",
          "ADONET using XML Data in C  SQL Injection and Prevention in C  SqlCommandBuilder in ADONET C  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingHow to Load XML Data to a Data Table using ADONETIn this video I will discuss How to Load XML Data to a Data Table using ADONET and then we will see how to insert those data from the data table to a database table using C with Examples PNote In this video I will use the SqlBulkCopy class to insert the data from the data table into a database table From a performance point of view the SqlBulkCopy class makes it very easy and efficient to copy large amounts of data from a data table to a SQL Server Database TableWhat is the use of SqlBulkCopy Class in CThe SqlBulkCopy Class in C is used to bulk copy data from different data sources to the SQL Server database The SqlBulkCopy class belongs to SystemDataSqlClient this is the NET Data Provider for SQL Server Database namespace This class is used to insert the data into the SQL Server Database table ie the destination database must be SQL Server only However there is no restriction on the source data source ie any source data source can be used as long as the data can be loaded into the Data tableSQL Injection Attack in CAccording to MSDN SQL Injection is an attack in which malicious code is inserted into strings that are later passed to the SQL Server Database for execution Any procedure or mechanism that constructs SQL statements should be reviewed for injection vulnerabilities This is because the SQL Server will execute all syntactically valid queries it receives Even parameterized data can be manipulated by a skilled and determined attackerThe application layer attack is a frontend attack that takes advantage of inappropriate coding of our applications and allows hackers to insert SQL commands into our application code that is SQL statements So as developers or programmers we should check and prevent SQL Injection in our application codePoints to RememberSQL Injection is a SQL Code Injection mechanism that might destroy your databaseSQL Injection is one of the most common web hacking techniquesSQL Injection is the process of Injecting malicious code in SQL statements via web page inputNote First we will see an example of SQL Injection and then we will see how we can prevent SQL Injection in CADONET SqlCommandBuilder in CAccording to MSDN SqlCommandBuilder Object automatically generates singletable commands that are used to reconcile changes made to a DataSet with the associated SQL Server database This class cannot be inherited as it is a sealed classThe ADONET SqlCommandBuilder object automatically generates INSERT UPDATE and DELETE SQL statements based on the SELECT statement for a single table We need to follow two steps to automatically generate the SQL Statements using ADONET SqlCommandBuilder They are as followsFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorials Text Document Links used in the VideoADONET using XML Data httpsdotnettutorialsnetlessonadonetusingxmldata SQL Injection and Prevention in C httpsdotnettutorialsnetlessonsqlinjectionandpreventionincsharpadonetADONET SqlCommandBuilder in C httpsdotnettutorialsnetlessonadonetsqlcommandbuilderincsharpADOdotNETusingXMLData SQLInjectionandPrevention ADOdotNETSqlCommandBuilderdotnettutorials csharp  pranaya dotnettutorialspranaya adodotnet adodotnetbyPranaya adodotnetbydotnettutorials DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/U0by1s_s-JA/default.jpg",
          "1:49:49",
          "2023-07-30",
          "ADO.NET using XML Data in C#,SQL Injection and Prevention in C#,SqlCommandBuilder in ADO.NET C#,How to Load XML Data to a Data Table using ADO.NET,What is the use of SqlBulkCopy Class in C#,SQL Injection Attack in C#,ADO.NET SqlCommandBuilder in C#"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
  "Asynchronous Programming in C#",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YBnc_C9WhSA",
          "Introduction to Parallel and Asynchronous Programming | Dot Net Tutorials | Pranaya Rout",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Introduction to Parallel and Asynchronous Programming  Dot Net Tutorials  Pranaya Rout  Online TrainingIntroduction to ConcurrencyHow we can Achieve EfficiencyWhat is ConcurrencyHow We Can Achieve Parallelism in ProgrammingIntroduction to Asynchronous ProgrammingIntroduction to Parallel ProgrammingCPU vs IO Bound OperationsAs developers we all want to develop good software or applications We also know that good software is Testable Maintainable Reusable Flexible and Efficient Now we are going to focus on the efficiency aspect When we talk about efficiency we probably think in terms of speed For example let us say we have a program A that performs a task in 60 seconds Another program B performs the same task in 2 seconds We can say that Program B is more efficient than Program AHow can we Achieve Efficiency One of the ways to achieve efficiency is to have a faster computer ie the computer having more RAM CPU SSD etc Unfortunately this will be expensive and there are also some limitations regarding RAM CPU SSD etc Another option is to take advantage of the power of different cores of our processorWhat is ConcurrencyConcurrency means doing several things at the same time For example if we have to do a million tasks then instead of doing them sequentially one by one we can do them simultaneously thus reducing the duration of the program executionLet us understand Concurrency with one realtime example If you have a restaurant with only one cook then that cook is responsible for cooking everything each customer asks for Now if one cook is cooking everything and handling every customer then the waiting time to serve the customer will definitely be longer That means one cook does multiple tasks ie preparing food for multiple customers Now we want to reduce the waiting time for customers Then what do we need to do We need to hire another cook In this way both cooks will simultaneously prepare the customers food and customers will have to wait lessThis concept of having a Set of Tasks and dividing them into several parts and those several parts can be performed simultaneously is called Parallelism Understandably in our restaurant analogy we achieved parallelism by adding a new cook For example one cook is going to serve veg foods Another cook is going to serve nonveg foodsText Version httpsdotnettutorialsnetlessonintroductiontoparallelandasynchronousprogrammingincsharpFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JON Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/YBnc_C9WhSA/default.jpg",
          "1:32:57",
          "2023-09-09",
          "Introduction to Concurrency,How we can Achieve Efficiency,What is Concurrency,How we can Achieve Parallelism in Programming,Introduction to Asynchronous Programming,Introduction to Parallel Programming,CPU vs I/O Bound Operations"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4YcBAUDBxxA",
          "Async and Await in C# | Task in C# | Task That Returns a Value | Dot Net Tutorials | Pranaya Rout",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Async and Await in C  Task in C  Task That Returns a Value  Dot Net Tutorials  Pranaya RoutAsync and Await in C with ExamplesAsynchronous Programming in CAsync and Await Keyword in CExample to Understand Async and Await in CTask in C with ExamplesTask in CWhat is the difference between Task and Task of T in CExample to Understand Task in CHow to Return a Value from Task in C with ExamplesHow to Return a Value from a Task in CExample to Understand Task of T in CC Task with ErrorsExample to Understand How to Return Complex Type Value From a Task in CAsynchronous Programming in CAsynchronous programming allows us to have efficient applications that do not waste resources when executed In this article we are going to discuss Asynchronous programming We will look at concepts and patterns for developing effective asynchronous applications here We will start by discussing async await and how we avoid freezing the UI In the next article we will see the use of Task which represents a promise of a method of execution that will end in the future We will talk about how to report Task progress and cancel tasks and we will also look at some asynchronous programming patternsAsync and await works in any NET development environment like Console applications Windows Form applications ASPNET Core for Web development Blazor for interactive web applications etc Task in CIn C when we have an asynchronous method we generally want to return one of the following data types    1 Task and Task of T    2 ValueTask and ValueTask of TWe will talk about ValueTask later let us keep the focus on Task The Task data type represents an asynchronous operation A task is basically a promise that the operation to be performed will not necessarily be completed immediately but that it will be completed in the futureWhat is the difference between Task and Task of T in CAlthough we use both of them ie Task and Task of T in C for the return data type of an asynchronous method the difference is that the Task is for methods that do not return a value while the Task of T is for methods that do return a value of type T where T can be of any data type such as a string an integer and a class etc From basic C we know that a method that does not return a value is marked with a void This is something to avoid in asynchronous methods So dont use async void except for event handlersHow to Return a Value from a Task in CThe NET Framework also provides a generic version of the Task class ie Task of T Using this Task of T class we can return data or values from a task In Task of T T represents the data type that you want to return due to the task With Task of T we represent an asynchronous method that will return something in the future That something could be a string a number a class etcText Document LinksAsync and Await in C httpsdotnettutorialsnetlessonasyncandawaitoperatorincsharpTask in C httpsdotnettutorialsnetlessontaskincsharpTask That Returns a Value in C httpsdotnettutorialsnetlessonreturnavaluefromataskincsharpFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsasync task await asynccsharp asyncawait asyncaswaitcsharp DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/4YcBAUDBxxA/default.jpg",
          "1:46:",
          "2023-09-09",
          "Async and Await in C# with Examples,Asynchronous Programming in C#,Async and Await Keyword in C#,Example to Understand Async and Await in C#,Task in C# with Examples,Task in C#,What is the difference between Task and Task of T in C#,Example to Understand Task in C#,How to Return a Value from Task in C# with Examples,How to Return a Value from a Task in C#,Example to Understand Task of T in C#,C# Task with Errors"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "K1iIa07NUy4",
          "How to Execute Multiple Tasks in C# | Limiting the Amount of Concurrent Tasks | Dot Net Tutorials",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "How to Execute Multiple Tasks in C  Limiting the Amount of Concurrent Tasks  Dot Net TutorialsText VersionHow to Execute Multiple Tasks in C httpsdotnettutorialsnetlessonhowtoexecutemultipletasksincsharpLimiting the Amount of Concurrent Tasks in C httpsdotnettutorialsnetlessonhowtolimitnumberofconcurrenttasksincsharpHow to Execute Multiple Tasks in CSo far we have been executing one task at a time but sometimes we will have many tasks that we want to execute simultaneously We can do that with TaskWhenAll method With TaskWhenAll we can have a list of tasks and all the tasks will be executed concurrently When all of the tasks are finished we will be able to continue the execution of a methodFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsasyncprogramming asynchrousprogrammingcshar asyncaswaitcsharpasync task await asynccsharp asyncawait DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/K1iIa07NUy4/default.jpg",
          "2:6:42",
          "2023-09-09",
          "Async and Await in C# with Examples,Asynchronous Programming in C#,Async and Await Keyword in C#,Example to Understand Async and Await in C#,Task in C# with Examples,Task in C#,What is the difference between Task and Task of T in C#,Example to Understand Task in C#,How to Return a Value from Task in C# with Examples,How to Return a Value from a Task in C#,Example to Understand Task of T in C#,C# Task with Errors"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "7pxg9g54znA",
          "Canceling Long Running Task using Cancellation Token | How to Create Synchronous Method using Task",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Canceling Long Running Task using Cancellation Token  How to Create Synchronous Method using Task  Dot Net Tutorials  Pranaya RoutText Document LinkCanceling Long Running Task using Cancellation Token httpsdotnettutorialsnetlessonhowtocancelataskincsharpHow to Create Synchronous Method using Task in C httpsdotnettutorialsnetlessonhowtocreatesynchronousmethodusingtaskincsharpHow to Cancel a LongRunning Task in CWhen we run a long task providing our users with some mechanism to cancel the task is a good practice The NET Framework provides a Cancellation Token using which we can cancel a taskHow to Create Synchronous Method using Task in CThere will be occasions when you will have a method with an asynchronous signature that is return Task but its implementation will be Synchronous One reason for this is that you have to implement a basic interface that returns a task and the implementation is synchronousAnother reason could be that you need to mock asynchronous methods in your unit tests And the implementation is going to be synchronous To solve these problems we can use axillary methods like CompletedTask FromResult FromException and FromCanceledWith TaskCompletedTask method We can implement a method that returns a task but that is synchronousWith TaskFromResult method we can implement a method that is Task of T which is synchronous And of course we can return a value that will be wrapped inside of a taskWith TaskFromException we can create a task that is completed with an errorWith TaskFromCanceled we can create a task that has been canceledIt is important to be able to create a task that has an Exception or that is Canceled because of your unit tests you may want to test a method that has to handle a faulted task a task with an exception or a task that has been canceledFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsasyncprogramming asynchrousprogrammingcshar asyncaswaitcsharpasync task await asynccsharp asyncawait DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/7pxg9g54znA/default.jpg",
          "1:51:35",
          "2023-09-09",
          "Async and Await in C# with Examples,Asynchronous Programming in C#,Async and Await Keyword in C#,Example to Understand Async and Await in C#,Task in C# with Examples,Task in C#,What is the difference between Task and Task of T in C#,Example to Understand Task in C#,How to Return a Value from Task in C# with Examples,How to Return a Value from a Task in C#,Example to Understand Task of T in C#,C# Task with Errors"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "KSbmW_HHHbw",
          "Retry Pattern of Asynchronous Programming | How to Control the Result of a Task  | Value Task in C#",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Retry Pattern of Asynchronous Programming  How to Control the Result of a Task   Value Task in CRetry Pattern in C using Asynchronous ProgrammingOne application of Asynchronous Programming is to perform a Retry Pattern The idea is that sometimes there will be operations we want to retry several times However we do not want to retry immediately but we want to retry after a certain amount of time For example if we request an HTTP to a Web server sometimes those operations fail and we may not want to immediately tell the user that there was an error We may want to retry the operation just in case the operation works this timeValueTask in CBesides Task or Task of T another value that we can return from the asynchronous method is ValueTask or ValueTask of T The ValueTask or ValueTask of T is relatively similar to Task or Task if T with some crucial differences ValueTasks mission is performance The idea is to apply ValueTask in highdemand scenarios where there really is a measurable benefit ValueTask is a struct This implies that it is a value type unlike Task which is a reference typeHow to Control the Result of a Task in CSo far we have worked with tasks and task status depends on an event For example if we make an HTTP request or if we make an Async method call then the status of the task is associated with what happens with the HTTP Request or with the Async Method call whether it is successful or there is an exception or the operation is canceled using a cancellation token With TaskCompletionSource we can create a task for which we are the ones who will control its status whether it is successful canceled or if its thrown an exceptionText Document LinksRetry Pattern of Asynchronous Programming in C httpsdotnettutorialsnetlessonretrypatternincsharpHow to Control the Result of a Task in C httpsdotnettutorialsnetlessonhowtocontroltheresultofataskincsharpValue Task in C httpsdotnettutorialsnetlessonvaluetaskincsharpFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsasyncprogramming asynchrousprogrammingcshar asyncaswaitcsharpasync task await asynccsharp asyncawait DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/KSbmW_HHHbw/default.jpg",
          "1:36:48",
          "2023-09-09",
          "Async and Await in C# with Examples,Asynchronous Programming in C#,Async and Await Keyword in C#,Example to Understand Async and Await in C#,Task in C# with Examples,Task in C#,What is the difference between Task and Task of T in C#,Example to Understand Task in C#,How to Return a Value from Task in C# with Examples,How to Return a Value from a Task in C#,Example to Understand Task of T in C#,C# Task with Errors"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3ngF6MniFUw",
          "Asynchronous Streams in C# | Cancelling Asynchronous Streams | Dot Net Tutorials | Pranaya Rout",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Asynchronous Streams in C  Cancelling Asynchronous Streams  Dot Net Tutorials  Pranaya RoutAsynchronous Streams in CFrom C 80 we are not limited to returning a single value from an asynchronous method We can return a sequence of values that are dynamically generated In this article first we will talk about asynchronous streams We will start this article by going over the IEnumerable interface and we will also see how to use the yield keyword Then we will create our first asynchronous stream using the IAsyncEnumerable interface Text Document LinksAsynchronous Streams in C httpsdotnettutorialsnetlessonasynchronousstreamscsharpCancelling Asynchronous Streams in C httpsdotnettutorialsnetlessonhowtocancelasynchronousstreamincsharpFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsasyncprogramming asynchrousprogrammingcshar asyncaswaitcsharpasync task await asynccsharp asyncawait DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/3ngF6MniFUw/default.jpg",
          "1:29:40",
          "2023-09-09",
          "Async and Await in C# with Examples,Asynchronous Programming in C#,Async and Await Keyword in C#,Example to Understand Async and Await in C#,Task in C# with Examples,Task in C#,What is the difference between Task and Task of T in C#,Example to Understand Task in C#,How to Return a Value from Task in C# with Examples,How to Return a Value from a Task in C#,Asynchronous Steam Operations in C#,Asynchronous Steam in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "arGCMSDZl94",
          "Task-Based Asynchronous  | Attached Child Task to a Parent Task | Chaining Tasks Using Continuation",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "TaskBased Asynchronous in C   Attached child task to a Parent Task in C  Chaining Tasks Using Continuation Tasks in C  Dot Net Tutorials  Pranaya RoutText Document LinksTaskBased Asynchronous Programming in C httpsdotnettutorialsnetlessonasynchronousprogrammingincsharpHow to attach a child task to a parent task in C httpsdotnettutorialsnetlessonhowtoattachedchildtaskstoaparenttaskincsharpChaining Tasks by Using Continuation Tasks httpsdotnettutorialsnetlessonchainingtasksbyusingcontinuationtasksFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsasyncprogramming asynchrousprogrammingcshar asyncaswaitcsharpasync task await asynccsharp asyncawait DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/arGCMSDZl94/default.jpg",
          "2:6:29",
          "2023-09-09",
          "Async and Await in C# with Examples,Asynchronous Programming in C#,Async and Await Keyword in C#,Example to Understand Async and Await in C#,Task in C# with Examples,Task in C#,What is the difference between Task and Task of T in C#,Example to Understand Task in C#,How to Return a Value from Task in C# with Examples,How to Return a Value from a Task in C#,Asynchronous Steam Operations in C#,Asynchronous Steam in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BdlrMvG7YCc",
          "Parallel Programming in C# | Task Parallel Library in C# | Dot Net Tutorials | Pranaya Rout",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Parallel Programming in C  Task Parallel Library in C  Dot Net Tutorials  Pranaya RoutWhat is Parallel Programming in CParallel Programming in C helps us divide a task into different parts and work those parts simultaneously An example might be that we have a set of credit cards and want to process them simultaneously Or if we have a set of images and want to apply a series of filters to each one we can do this by taking advantage of parallelismThe main benefit of parallelism is saving time Time is saved by maximizing the use of computer resources The idea is that if the computer allows the use of multithreading we can use these threads when we have a task to solve So instead of underusing our processor using a single thread we can use as many threads as possible to speed up the processing of the taskC Supports Two Types of ParallelismData Parallelism In Data Parallelism we have a collection of values and we want to use the same operation on each element in the collection The examples will be to filter the elements of an array in parallel or find the inverse of each matrix in a collection This means each process does the same work on unique and independent pieces of dataExampleParallelForParallelForEachTask Parallelism Task Parallelism occurs when we have a set of independent tasks we want to perform in parallel An example would be if we want to send an email and SMS to a user we can perform both operations in parallel if they are independent This means each process performs a different function or executes different independent code sectionsExampleParallelInvokeText Document LinksTask Parallel Library in C httpsdotnettutorialsnetlessontaskparallellibraryoverviewParallel For Loop in C httpsdotnettutorialsnetlessonparallelformethodcsharpParallel Foreach Loop in C httpsdotnettutorialsnetlessonparallelforeachmethodcsharpParallel Invoke in C httpsdotnettutorialsnetlessonparallelinvokemethodcsharpFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsparallelprogramming parallelprogrammingcshar tplcsharpDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/BdlrMvG7YCc/default.jpg",
          "1:39:9",
          "2023-09-14",
          "Parallel Programming in C#,Task Parallel Library in C#,Parallel For Loop in C#,Parallel Foreach Loop in C#,Parallel Invoke in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "gqYFf6yGv7E",
          "Parallel Programming in C# Dot Net Tutorials | Pranaya Rout | Day 2 | Live Training",
          "Asynchronous Programming in C#",
          "PLNgSFZ9yC06JPupVcZoexTWdfdVquw4VT",
          "Parallel Programming in C Dot Net Tutorials  Pranaya Rout  Day 2  Live TrainingMultithreading This is all about a single process split into multiple threadsParallel Programming This is all about multiple tasks running on multiple cores simultaneouslyAsynchronous Programming This is all about a single thread initiating multiple tasks without waiting for each to completeText documents inks How to Cancel Parallel Operations in C httpsdotnettutorialsnetlessoncancelparalleloperationsincsharpAtomic Methods Thread Safety and Race Conditions in C httpsdotnettutorialsnetlessonatomicmethodsthreadsafetyandraceconditionsincsharpInterlocked vs Lock in C httpsdotnettutorialsnetlessoninterlockedvslockincsharpParallel LINQ in C httpsdotnettutorialsnetlessonparallellinqincsharpMultithreading vs Asynchronous Programming vs Parallel Programming in C httpsdotnettutorialsnetlessonmultithreadingvsasynchronousprogrammingvsparallelprogrammingincsharpFor live training you can contact us using the Mobile Number WhatsApp Number and Email ID belowContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsparallelprogramming parallelprogrammingcshar tplcsharpDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/gqYFf6yGv7E/default.jpg",
          "1:34:48",
          "2023-09-14",
          "Parallel Programming in C#,How to Cancel Parallel Operations in C#,Atomic Methods,Thread Safety,and Race Conditions in C#,Interlocked vs Lock in C#,Parallel LINQ in C#,Multithreading vs Asynchronous Programming vs Parallel Programming in C#"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
  "Collections in C# | Collection Framework in C# with example",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "8HO77TiWmfk",
          "Arrays in C# | 2D Arrays in C# | Advantages and Disadvantages of Arrays in C# |  Collections in C#",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Introduction to Collections in CIn this article I am going to give you a brief Introduction to Collections in C Please read our previous article where we discussed the Advantages and Disadvantages of Arrays in C with Examples Collections are similar to Arrays it provides a more flexible way of working with a group of objects As part of this article we are going to discuss the following pointers in detailWhat is a TwoDimensional Array in CThe arrays which store the elements in the form of rows and columns are called TwoDimensional Array in C The twodimensional array which is also called a multidimensional array is of two types in C What are Array and Their Disadvantages in CIn simple words we can say that the Arrays in C are the simple data structure that is used to store similar types of data items in sequential order Although the arrays in C are commonly used they have some limitationsChapter9 Collections in C   Arrays in C   2d Array in C   Advantages and Disadvantages of Arrays in C   Collections in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetIntroduction  httpsdotnettutorialsnetlessoncollectionscsharpArrays in C with Examples  httpsdotnettutorialsnetlessonarrayscsharp2D Arrays in C  httpsdotnettutorialsnetlessontwodimensionalarrayincsharpAdvantages and Disadvantages of Arrays in C  httpsdotnettutorialsnetlessonadvantagesanddisadvantagesofarrayscsharp dotnettutorials csharp  pranaya dotnettutorialspranaya dotnettutorialsArraysinCSharp dotnettutorials2DArraysinCSharp dotnettutorialsAdvantagesandDisadvantagesofinCSharp ArraysinCsharp 2DArraysincsharp AdvantagesandDisadvantagesArraysinCSharp CollectionInCSharp CollectionInCSharpByDotNetTutorials  CollectionInCSharpByPranaya",
          "https://i.ytimg.com/vi/8HO77TiWmfk/default.jpg",
          "2:18:36",
          "2023-07-16",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "8XIqrBdW5bc",
          "Collections | Non-Generic Array List Non-Generic Hash table - Collection Framework in C#",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Introduction to Collections in CIn this article I am going to give you a brief Introduction to Collections in C Please read our previous article where we discussed the Advantages and Disadvantages of Arrays in C with Examples Collections are similar to Arrays it provides a more flexible way of working with a group of objects As part of this article we are going to discuss the following pointers in detailArrayList Collection Class in C with ExamplesIn this article I am going to discuss the NonGeneric ArrayList Collection Class in C with Examples Please read our previous article before proceeding to this article where we discussed the Introduction to Collections in C ArrayList is a powerful feature of the C language It is the nongeneric type of collection that is defined in the SystemCollections namespace At the end of this article you will understand the following pointersWhat is ArrayList in CHow to Create an ArrayList in C with ExamplesHow to Add Elements into ArrayList in CHow to Access an ArrayList in C with ExamplesHow to Iterate an ArrayList in CHow to Insert an Element into a Specified Position in an ArrayList Collection in CHow to Remove Elements from ArrayList in C with ExamplesHow to Remove all Elements from the ArrayList in CHow do we Check whether an Element exists in ArrayList or not in CHow to Clone the NonGeneric ArrayList Collection in CHow to Copy an ArrayList to an Existing Array in CHow to Sort the Elements of an ArrayList Collection in CWhat is the difference between an Array and an ArrayList in CNonGenericHashtable Collection Class in C with ExamplesIn this article I am going to discuss NonGeneric Hashtable Collection Class in C with Examples Please read our previous article where we discussed the ArrayList Collection Class in C with Examples At the end of this article you will understand the following pointersChapter9 Collections in C   Collections    NonGeneric Array List   NonGeneric Hash tableText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetIntroduction  httpsdotnettutorialsnetlessoncollectionscsharpNonGeneric Array List  httpsdotnettutorialsnetlessonarraylistcollectioncsharpHashtable Collection Class in C  httpsdotnettutorialsnetlessonhashtablecsharpdesignpatterns dotnettutorials csharp  pranaya dotnettutorialspranaya  CollectionInCSharp CollectionInCSharpByDotNetTutorials  CollectionInCSharpByPranaya Collections NonGenericArrayList NonGenericHashTable",
          "https://i.ytimg.com/vi/8XIqrBdW5bc/default.jpg",
          "2:12:56",
          "2023-07-17",
          "#CollectionInCSharpByDotNetTutorials,#CollectionInCSharpByPranaya,#NonGenericArrayList,#NonGenericHashTable"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "U4yjVCGEAqg",
          "Non-Generic Stack in C# | Non-Generic Queue in C# |  Collection Framework in C #",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "NonGeneric Stack Collection Class in C with ExamplesIn this article I am going to discuss the NonGeneric Stack Collection Class in C with Examples Please read our previous article before proceeding to this article where we discussed the Hashtable Collection Class in C with Examples The Stack Collection Class in C represents a LastIn FirstOut LIFO collection of objects That means it is used when we need LastIn FirstOut access to the items of a collection The NonGeneric Stack Collection Class in C belongs to the SystemCollections namespace At the end of this article you will understand the following pointersWhat is Stack in C and how does it workMethods Properties and Constructor of Stack Class in CHow to create a Stack Collection in CHow to Add Elements into a Stack in CHow to Remove Elements from a Stack in CHow to get the topmost element of a Stack in CHow to check whether an element exists or not in the stack in CHow to Clone the NonGeneric Stack Collection in CHow to copy a stack to an existing array in CWhen to use Stack Collection in Realtime Applications in CNonGeneric Queue Collection Class in C with ExamplesIn this article I am going to discuss the NonGeneric Queue Collection Class in C with Examples Please read our previous article where we discussed the NonGeneric Stack Collection Class in C with Examples The NonGeneric Queue Collection Class in C represents a FirstIn FirstOut collection of objects That means we need to use this collection when we need FirstIn FirstOut access to items of a collection The Queue Collection Class belongs to the SystemCollections namespace At the end of this article you will understand the following pointersWhat is a Queue in CMethods Properties and Constructor of NonGeneric Queue Collection Class in CHow to Create a Queue in CHow to Add Elements into a Queue in CHow to Remove Elements from the Queue in CHow to get the first element of the queue in CHow to check whether an element exists or not in the Queue in CHow to Clone the NonGeneric Queue Collection in CHow to Copy a Queue to an Existing Array in CChapter9 Collections in C   NonGeneric Stack in C   NonGeneric Queue in C Text Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetNonGeneric Stack in C  httpsdotnettutorialsnetlessonstackcollectioncsharpNonGeneric Queue in C  httpsdotnettutorialsnetlessonqueuecollectionclasscsharpdotnettutorials csharp  pranaya dotnettutorialspranaya  CollectionInCSharp CollectionInCSharpByDotNetTutorials  CollectionInCSharpByPranaya Collections NonGenericStackinCSharp NonGenericQueueinCSharp NonGenericStackinCSharpByPranaya NonGenericQueueinCSharpdotnettutorials",
          "https://i.ytimg.com/vi/U4yjVCGEAqg/default.jpg",
          "1:24:14",
          "2023-07-17",
          "#NonGenericStackinCSharp,#NonGenericQueueinCSharp,#NonGenericQueueinCSharpdotnettutorials,#dotnettutorials,#CollectionInCSharpByDotNetTutorials"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uJsC53Hm7_E",
          "Non-Generic Sorted List in C#  | Advantages and Disadvantages of Non-Generic Collection in C#",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "NonGeneric SortedList Collection Class in C with ExamplesIn this article I am going to discuss the NonGeneric SortedList Collection Class in C with Examples Please read our previous article where we discussed the NonGeneric Queue Collection Class in C with Examples The NonGeneric SortedList class belongs to SystemCollections namespace At the end of this article you will understand the following pointers with examplesWhat is SortedList in CMethods Properties and Constructor of NonGeneric SortedList Collection Class in CHow to Create a SortedList in CHow to Add Elements into a SortedList in CHow to access a SortedList in CHow to Remove Elements from a SortedList in CHow to check the availability of keyvalue pairs in a SortedList in CHow to Clone the NonGeneric SortedList in CWhat is the use of the CopyTo method of NonGeneric SortedList Collection Class in CWhen to Use NonGeneric SortedList Collection in CAdvantages and Disadvantages of NonGeneric Collection in CIn this article I am going to discuss the Advantages and Disadvantages of the NonGeneric Collection in C Please read our previous article where we discussed the NonGeneric SortedList Collection Class in C with Examples Here we will discuss the advantages and disadvantages of using the ArrayList collection class which can also be applied to other nongeneric collection classes such as Stack Queue Hashtable SortedList etcChapter9 Collections in C  NonGeneric Sorted List in C  Advantages and Disadvantages of NonGeneric Collection in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetNonGeneric Sorted List in C  httpsdotnettutorialsnetlessonsortedlistcollectionclassincsharpAdvantages and Disadvantages of NonGeneric Collection in C  httpsdotnettutorialsnetlessonadvantagesanddisadvantagesofcollectiondotnettutorials csharp  pranaya dotnettutorialspranaya  CollectionInCSharp CollectionInCSharpByDotNetTutorials  CollectionInCSharpByPranaya Collections NonGenericSortedListinCSharp NonGenericAdvantagesandDisadvantagesofNonGenericCollectioninCSharp NonGenericSortedListinCSharpByPranaya NonGenericQueueinCSharpdotnettutorials",
          "https://i.ytimg.com/vi/uJsC53Hm7_E/default.jpg",
          "1:3:48",
          "2023-07-17",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cRh6pS12PCw",
          "Generic Collections in C# | Generics in C# | Generic Constraints in C# | Collection Framework in C #",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Generic Collections in C with ExamplesIn this article I am going to give a brief introduction to Generic Collections in C with Examples Please read our previous article where we discussed the Advantages and Disadvantages of the NonGeneric Collection in C with Examples As part of this article first we will discuss the problems of NonGeneric Collections and then we will discuss how to overcome the NonGeneric Collection problems with Generic Collections in C Finally we will discuss the generic collection class examples in C Generics in C with ExamplesIn this article I am going to discuss how to implement Generics in C with Examples Please read our previous article where we discussed the Generic Collection in C In C Generic means not specific to a particular data type that type will be decided by the compiler at the time of compilation As part of this article we are going to discuss the following pointers Why do we need Generics in CWhat are Generics in CAdvantages of Generics in CHow to implement Generics in C with ExamplesHow to use Generics with Class and its Members in CGeneric Constraints in C with ExamplesIn this article I am going to discuss Generic Constraints in C with Examples Please read our previous article where we discussed how to implement Generics in C with ExamplesGeneric Constraints in CConstraints in C are nothing but validations that we can put on the generic type parameter That means constraints are used to restrict the types that can be substituted for type parameters It will give you a compiletime error if you try to substitute a generic type using a type that is not allowed by the specified constraints It is also possible to specify one or more constraints on the generic type using the where clause after the generic type name If this is not clear at the moment dont worry we will try to understand this with examplesChapter9 Collections in C Generic Collections in C  Generics in C Generic Constraints in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetGeneric Collections in C  httpsdotnettutorialsnetlessongenericcollectionscsharpGenerics in C  httpsdotnettutorialsnetlessongenericscsharpGeneric Constraints in C  httpsdotnettutorialsnetlessongenericconstraintsincsharpdotnettutorials csharp  pranaya dotnettutorialspranaya  CollectionInCSharp CollectionInCSharpByDotNetTutorials  CollectionInCSharpByPranaya Collections NonGenericSortedListinCSharp  GenericCollectionsinCsharp GenericsinCsharp  GenericConstraintsinCsharpGenericCollectionsinCsharpByPranaya GenericsinCsharpByPranaya  GenericConstraintsinCsharpByPranaya GenericCollectionsinCsharpdotnettutorials GenericsinCsharpdotnettutorials  GenericConstraintsinCsharpdotnettutorials",
          "https://i.ytimg.com/vi/cRh6pS12PCw/default.jpg",
          "1:43:15",
          "2023-07-17",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "uIc1zlJBWhE",
          "Generic List Collection Class in C# | Collection Framework in C #",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Generic List Collection Class in C with ExamplesIn this article I am going to discuss the Generic List Collection Class in C with Examples Please read our previous article where we discussed How to implement Generics in C with Examples The Generic List Class in C is a collection class that is present in SystemCollectionsGeneric namespace The List Collection class is one of the most widely used generic collection classes in realtime applications At the end of this article you will understand the following pointers with ExamplesWhat is Generic List Collection in CHow to Create a List in CHow to Add Elements into a Generic List Collection in CHow to Access a Generic List Collection in CHow to Insert Elements at a Specific Position in a C ListHow to Check the Availability of an Element in a List Collection in CHow to Remove Elements from a Generic List Collection in CHow to Copy an Array to a List in CGeneric List Collection with Complex Type in CHow to Find Element in a Generic List Collection in CHow to Sort a List of Simple Type and Complex Types in CChapter9 Collections in C Generic List Collection Class in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetGeneric List Collection Class in C  httpsdotnettutorialsnetlessonlistcollectioncsharpdotnettutorials  csharp  pranaya dotnettutorialspranaya  CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya Collections GenericListCollectionClassinCSharp GenericListCollectionClassinCSharpByPranaya GenericListCollectionClassinCSharpdotnettutorials",
          "https://i.ytimg.com/vi/uIc1zlJBWhE/default.jpg",
          "45:23",
          "2023-07-17",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "g5HZo3h1HYs",
          "List of Complex Type |  Comparison Delegates in C# | Collection Framework in C #",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "List of Complex Type in CHow to Sort a List of Complex Types in CIn this article I am going to discuss How to Sort a List of Complex Types in C like Employee Customer Product Department etc with examples Please read our previous article where we discussed Generic List in C with Examples Before understanding how to sort a complex type let us first understand how to sort simple types like int double char string etcComparison Delegates in CComparison Delegate in C with ExamplesIn this article I am going to discuss How to Sort a List of Complex Types using Comparison Delegate in C with Examples Please read our previous article where we discussed How to Sort a List of the Complex Type in Cwith ExamplesGeneric ListT Collection Class Sort Method in CThe Generic List Collection Class in C provides the following four Sort MethodsSort This method is used to sort the elements in the entire Generic List using the default comparerSortIComparer T comparer This method is used to sort the elements in the entire Generic List using the specified comparerSortComparison T  comparison This method is used to sort the elements in the entire Generic List using the specified SystemComparisonSortint index int count IComparer T comparer This method is used to sort the elements in a range of elements in a Generic List using the specified comparerChapter9 Collections in C List of Complex Type in C Comparison Delegates in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetList of Complex Type in C  httpsdotnettutorialsnetlessonsortingalistofcomplextypecsharpComparison Delegates in C  httpsdotnettutorialsnetlessoncomparisondelegatecsharpdotnettutorials  csharp   pranaya  dotnettutorialspranaya CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya  Collections ListofComplexTypeinCSharp ComparisonDelegatesinCSharpListofComplexTypeinCSharpByPranaya ComparisonDelegatesinCSharpBydotnettutorials",
          "https://i.ytimg.com/vi/g5HZo3h1HYs/default.jpg",
          "1:13:46",
          "2023-07-17",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "SLzxB0iiZms",
          "Dictionary Collection Class | List vs Dictionary | Stack Collection Class | Queue Collection Class",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Generic Dictionary Collection Class in CIn this article I am going to discuss Generic Dictionary TKey TValue Collection Class in C with Examples Please read our previous article where we discussed Generic List T Collection Class in C with Examples A Dictionary class is a data structure that represents a collection of keys and values pair of data At the end of this article you will understand the following pointers in detailWhat is Dictionary in CHow to create a Generic Dictionary Collection in CHow to Add Elements into a Generic Dictionary TKey TValue Collection in CHow to access a Generic Dictionary TKey TValue Collection in CHow to Check the Availability of a keyvalue Pair in a Dictionary in CHow to Remove Elements from a Generic Dictionary Collection in CList vs Dictionary in C with ExamplesIn this article I am going to discuss List vs Dictionary in C with Examples Please read our previous article where we discussed Conversion Between Array List and Dictionary in C At the end end of this article you will understand the difference between a List and Dictionary as well as you will understand when to use a List over Dictionary and viceversaList vs Dictionary in CBoth lists and dictionaries belong to Generics collections that are used to store collections of data Both Dictionary TKey TValue and List T are similar both have random access data structures on top of the NET framework The Dictionary is based on a hash table which means it uses a hash lookup which is an efficient algorithm to look up things on the other hand a list has to go and check element by element until it finds the result from the beginning In this article we will discuss List vs Dictionary in CGeneric Stack T Collection Class in C with ExamplesIn this article I am going to discuss Generic Stack T Collection Class in C with Examples Please read our previous article where we discussed the difference between List vs Dictionary in C with Examples The Stack T is a Generic collection that stores elements in LIFO style Last In First Out C includes both the Generic Stack T and NonGeneric Stack collection classes It is recommended by Microsoft to use the Generic Stack T Collection as it is typesafe and boxing and unboxing it not required What is Generic Stack T in CHow to Create a Generic StackT Collection in CHow to Add Elements into a Stack T Collection in CHow to access a Generic Stack T  Collection in CHow to Remove Elements from a Generic Stack T Collection in CHow to get the Topmost Element of a Generic Stack in CGeneric Queue T Collection Class in C with ExamplesIn this article I am going to discuss Generic Queue T Collection Class in C with Examples Please read our previous article where we discussed the Generic Stack Collection Class in C with Examples The Queue T is a Generic collection that stores elements in FIFO style First In First Out The C Language Includes both the Generic Queue T and NonGeneric Queue collection classes It is recommended by Microsoft to use the Generic Queue T  Collection class as it is typesafe and boxing and unboxing it not required Here in this article we will discuss the Generic Queue Collection Class in C with Examples What is Generic Queue T  in CHow to Create a Generic Queue T  Collection in CHow to Add Elements into a Queue T  Collection in CHow to access a Generic Queue Collection in CHow to Remove Elements from a Generic Queue T  Collection in CHow to Get the First Element from the Generic Queue in CChapter9 Collections in C Generic Dictionary Collection Class in C List vs Dictionary in C Generic  Stack Collection Class in C Generic  Queue Collection Class in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetGeneric Dictionary Collection Class in C httpsdotnettutorialsnetlessondictionarygenericcollectioncsharpList vs Dictionary in C  httpsdotnettutorialsnetlessondictionaryvslistcsharpGeneric  Stack Collection Class in C  httpsdotnettutorialsnetlessongenericstackcsharpGeneric  Queue Collection Class in C  httpsdotnettutorialsnetlessongenericqueuecollectionclasscsharpdotnettutorials  csharp   pranaya  dotnettutorialspranaya CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya  Collections GenericDictionaryCollectionClassinCSharp ListvsDictionaryinCSharp GenericStackCollectionClassinCSharp GenericQueueCollectionClassinCSharpGenericDictionaryCollectionClassinCSharpByPranaya  ListvsDictionaryinCSharpByPranaya  GenericStackCollectionClassinCSharpByPranaya GenericQueueCollectionClassinCSharpByPranaya GenericDictionaryCollectionClassinCSharpBydotnettutorialsListvsDictionaryinCSharpBydotnettutorials GenericStackCollectionClassinCSharpBydotnettutorialsGenericQueueCollectionClassinCSharpBydotnettutorials",
          "https://i.ytimg.com/vi/SLzxB0iiZms/default.jpg",
          "2:33:58",
          "2023-07-17",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "vYJP8Abw4Os",
          "HashSet Collection Class in C# | SortedList Collection Class | Sorted Dictionary Collection Class",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Generic HashSet  T  Collection Class in C with ExamplesIn this article I am going to discuss the Generic HashSet  T  Collection Class in C with Examples Please read our previous article where we discussed For Each Loop in C with Examples At the end of this article you will understand the following pointers with examplesWhat is HashSet  T  in CHow to Create a Generic HashSet Collection in CHow to Add Elements into a HashSet Collection in CHow to Access a Generic HashSet  T  Collection in CExample to Understand How to Create a HashSet and Add Elements in CHow to Remove Elements from a Generic HashSet  T  Collection in CHow to Check the Availability of an Element in a HashSet in CSet Operations on Generic HashSet  T  Collection Class in CGeneric HashSet Collection with Complex Type in CGetting an Enumerator that Iterates through HashSet  T  Collection in CGeneric SortedList  TKey T Value  Collection Class in C with ExamplesIn this article I am going to discuss the Generic SortedList  TKey TValue  Collection Class in C with Examples Please read our previous article where we discussed the Generic HashSet  T  Collection Class in C with Examples The Generic SortedList  T Key T Value  collection class belongs to SystemCollectionsGeneric namespace At the end of this article you will understand the following pointers with examplesWhat is SortedList  TKey T Value  in CMethods Properties and Constructor of Generic SortedList  T Key TValue  Collection Class in CHow to Create a SortedList  TKey TValue  Collection in CHow to Add Elements into a Generic SortedList Collection in CHow to Access a Generic SortedList Collection in CHow to Remove Elements from a Generic SortedList Collection in CHow to check the Availability of keyvalue Pairs in a Generic SortedList Collection in CGeneric SortedList Collection with Complex Type in CWhat are the differences between SortedList  T Key T Value  and SortedDictionary  T Key T Value  in CGeneric SortedDictionary Collection Class in C with ExamplesIn this article I am going to discuss the Generic SortedDictionary  T Key T Value  Collection Class in C with Examples Please read our previous article where we discussed Generic SortedSet  T  Collection Class in C with Examples The Generic SortedDictionary  T Key T Value  Collection Class belongs to SystemCollectionsGeneric namespace At the end of this article you will understand the following pointers with examplesWhat is SortedDictionary  T Key T Value  Collection Class in CHow to Create a SortedDictionary  T Key T Value  collection in CHow to Add Elements into a Generic SortedDictionary Collection in CHow to Access a Generic SortedDictionary  T Key T Value  Collection in CHow to Remove Elements from a Generic SortedDictionary Collection in CHow to check the Availability of keyvalue Pairs in a Generic SortedDictionary Collection in CHow to Assign Values to a SortedDictionary  T Key T Value  with Indexer in CHow to Update a SortedDictionary  T Key TValue  Collection in C using IndexerUsing Enumerator to Iterates through SortedDictionary  T Key T Value  Collection in CGeneric SortedDictionary  T Key T Value  Collection with Complex Type in CWhat is the use of the TryGetValue method of SortedDictionary Class in CHow to get all the keys and Values of a SortedDictionary in CChapter9 Collections in C Generic HashSet Collection Class in C SortedList Collection Class in C Sorted Dictionary Collection Class in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetGeneric HashSet Collection Class in C  httpsdotnettutorialsnetlessongenerichashsetcollectionclassincsharpSortedList Collection Class in C  httpsdotnettutorialsnetlessongenericsortedlistcollectionclassincsharpSorted Dictionary Collection Class in C  httpsdotnettutorialsnetlessongenericsorteddictionarycollectionclassincsharpdotnettutorials  csharp   pranaya  dotnettutorialspranaya CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya  Collections GenericHashSetCollectionClassinCSharp SortedListCollectionClassinCSharpSortedDictionaryCollectionClassinCSharp GenericHashSetCollectionClassinCSharpByPranayaSortedListCollectionClassinCSharpByPranaya SortedDictionaryCollectionClassinCSharpByPranayaGenericHashSetCollectionClassinCSharpBydotnettutorials SortedListCollectionClassinCSharpBydotnettutorialsSortedDictionaryCollectionClassinCSharpBydotnettutorials",
          "https://i.ytimg.com/vi/vYJP8Abw4Os/default.jpg",
          "2:19:15",
          "2023-07-17",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "4U8oJgrs1gw",
          "Generic LinkedList Collection Class | Foreach Loop | Conversion Between Array List and Dictionary",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Generic LinkedList  T   Collection Class in C with ExamplesIn this article I am going to discuss Generic LinkedList  T   Collection Class in C with Examples Please read our previous article where we discussed Generic SortedDictionary  TKey TValue   Collection Class in C with Examples At the end of this article you will understand the following pointers with examplesWhat is LinkedList  T   in CA LinkedList is a linear data structure used for storing the elements in a noncontiguous manner The elements in a linked list are linked with each other using pointers Or in other words LinkedList consists of nodes where each node contains a data field and a referencelink to the next node in the list So each node contains two partsForeach Loop in C with ExamplesIn this article I am going to discuss Foreach Loop in C with Examples Please read our previous article where we discussed Generic Queue in C with ExamplesWhat is Foreach Loop in CLooping is a way to execute a statements multiple times depending on the result of a condition As long the given condition satisfies the loop executes Once the condition failed the loop terminatesThe Foreach Loop in C is a different kind of loop that doesnt include initialization termination and incrementdecrement characteristics It uses the collection to take values one by one and then processes themThe foreach loop in C is used to iterate over the elements of a collection Here the collection may be an array or a list or a dictionary etc As per the name ie foreach it executes the loop body for each element present in the array or collectionIn C the foreach loop iterates collection types such as Array ArrayList List Hashtable Dictionary etc It can be used with any type that implements the IEnumerable interfaceSyntax to use Foreach Loop in C LanguageThe SystemCollectionsGeneric namespace contains the ForEach extension method that can be used with any builtin collection classes such as List Dictionary SortedList etcConversion between Array List and Dictionary in CIn this article we will discuss how to perform Conversion Between Array List and Dictionary in C Please read our previous article where we discussed Dictionary in C with examples As part of this article we will discuss the following six thingsConvert an array to a List  Use ToList methodConvert a list to an array  Use ToArray methodConvert a List to a Dictionary  Use ToDictionary methodConvert an array to a Dictionary  Use ToDictionary methodConvert a Dictionary to an array  Use ToArray method on the Values Property of the dictionary objectConvert a Dictionary to a List  Use the ToList method on the Values Property of the dictionary objectChapter9 Collections in C Generic LinkedList Collection Class in C Foreach Loop in C Conversion Between Array List and Dictionary in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetGeneric LinkedList Collection Class in C  httpsdotnettutorialsnetlessongenericlinkedlistcollectionclassincsharpForeach Loop in C  httpsdotnettutorialsnetlessonforeachloopincsharpConversion Between Array List and Dictionary in C  httpsdotnettutorialsnetlessonconversionbetweenarraylistanddictionarycsharpdotnettutorials  csharp   pranaya  dotnettutorialspranaya CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya  Collections GenericLinkedListCollectionClass ForeachLoopinCSharp ConversionBetweenArrayListandDictionaryGenericLinkedListCollectionClassByPranaya ForeachLoopinCSharpByPranayaConversionBetweenArrayListandDictionaryByPranaya GenericLinkedListCollectionClassBydotnettutorialsForeachLoopinCSharpBydotnettutorials ConversionBetweenArrayListandDictionaryBydotnettutorials",
          "https://i.ytimg.com/vi/4U8oJgrs1gw/default.jpg",
          "1:33:5",
          "2023-07-20",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rKn68p89qr8",
          "Concurrent Collection in C# | Concurrent Dictionary Collection Class in C# | Collection Framework",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Concurrent Collection in C with ExamplesIn this article I am going to discuss the Concurrent Collection in C with Examples Please read our previous article where we discussed Generic LinkedList  T   Collection Class in C with ExamplesWhy do we need Concurrent Collection in CIn C 10 the SystemCollections framework was introduced and the collection classes such as ArrayList Hashtable Stack Queue etc belong to the SystemCollections namespace The problem with these collection classes is that they are not typesafe That is they store the elements in the form of objects and because of this we may get type mismatch exceptions as well as performance degradation because of boxing and unboxingNext in C 20 the SystemCollectionsGeneric Framework introduced and the collection classes List  T   Dictionary  TKey TValue   Stack  T   Queue  T   etc are belongs to SystemCollectionsGeneric namespace These collection classes are TypeSafe but not Thread Safe Typesafe means whenever we are going to declare any generic type collection we need to specify the type that is going to be held by the generic collection And whenever we are going to retrieve any item from the collection we will get the actual type of item That means boxing and unboxing are not requiredConcurrentDictionary Collection Class in C with ExamplesIn this article I am going to discuss the ConcurrentDictionary Collection Class in C with Examples Please read our previous article where we discussed the Concurrent Collection in C with Examples The ConcurrentDictionary collection was introduced in NET 40 and it belongs to SystemCollectionsConcurrent namespace As part of this article we are going to discuss the following pointersWhat is ConcurrentDictionary in CHow to create a ConcurrentDictionary Collection in CHow to Add Elements into a ConcurrentDictionary   TKey TValue   Collection in CHow to access a ConcurrentDictionary   TKey TValue   Collection in CHow to Check the Availability of a keyvalue pair in ConcurrentDictionary Collection in CHow to Remove Elements from ConcurrentDictionary Collection in CUnderstanding TryUpdate Method of ConcurrentDictionary Collection Class in CUnderstanding AddOrUpdate Methods of ConcurrentDictionary Collection Class in CUnderstanding GetOrAdd Methods of ConcurrentDictionary Collection Class in CUnderstanding TryGetValue Method of ConcurrentDictionary Collection Class in CConcurrentDictionary Collection with Complex Type in CHow to Get all the Keys and Values of a ConcurrentDictionary in CChapter9 Collections in C Concurrent Collection in C Concurrent Dictionary Collection Class in CText Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetConcurrent Collection in C  httpsdotnettutorialsnetlessonconcurrentcollectionincsharpConcurrent Dictionary Collection Class in C  httpsdotnettutorialsnetlessonconcurrentdictionarycollectionclassincsharpdotnettutorials  csharp   pranaya  dotnettutorialspranaya CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya  Collections ConcurrentCollectioninCSharp ConcurrentDictionaryCollectionClassinCSharpConcurrentCollectioninCSharpByPranaya ConcurrentDictionaryCollectionClassinCSharpByPranayaConcurrentCollectioninCSharpBydotnettutorials ConcurrentDictionaryCollectionClassinCSharpBydotnettutorials",
          "https://i.ytimg.com/vi/rKn68p89qr8/default.jpg",
          "1:33:9",
          "2023-07-20",
          "dotnet"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "YCGDIn-F0rg",
          "ConcurrentQueue Collection | ConcurrentStack Collection  Blocking  Colle | ConcurrentBag Collection",
          "Collections in C# | Collection Framework in C# with example",
          "PLNgSFZ9yC06K5q6thfBK6TxkyNv74t33A",
          "Concurrent Collection in C  Concurrent Dictionary Collection Class in C  Collection FrameworkConcurrentQueue Collection Class in C with ExamplesIn this article I am going to discuss the ConcurrentQueue Collection Class in C with Examples Please read our previous article where we discussed ConcurrentDictionary Collection Class in C with Examples At the end of this article you will understand the following pointersWhat is ConcurrentQueue  T   Class in CWhy do we need ConcurrentQueue  T   Collection Class in CGeneric Queue Example with Single Thread in CGeneric Queue Example with MultiThread in CGeneric Queue with Locking Mechanism in CConcurrentQueue Example with more than one Thread in CHow to Create a ConcurrentQueue  T   Collection in CHow to Add Elements into a ConcurrentQueue  T   Collection in CHow to access a ConcurrentQueue Collection in CHow to Remove Elements from ConcurrentQueue  T   Collection in CHow to Get the First Element from the ConcurrentQueue in CHow to Copy a ConcurrentQueue Collection to an Existing Array in CConcurrentQueue  T   Collection Class with Complex Types in CWhat is ConcurrentStack  T   Class in CThe ConcurrentStack  T   is a ThreadSafe Collection Class in C It was introduced as part of NET Framework 40 and it belongs to SystemCollectionsConcurrent namespace It provides a threadsafe LastInFirstOut LIFO data structure That means we need to go for ConcurrentStack  T   Collection when we need Last in First Out LIFO access to the collection elements in a multithreaded environment with thread safetyWhat is ConcurrentStack  T   Class in CWhy do we need ConcurrentStack  T   Collection Class in CGeneric Stack Example with Single Thread in CGeneric Stack Example with MultiThread in CGeneric Stack with Locking Mechanism in CConcurrentStack  T   Collection Class with Multiple Threads in CWhat is ConcurrentBag  T   Class in CThe ConcurrentBag  T   is a ThreadSafe Collection Class in C It was introduced as part of NET Framework 40 and it belongs to SystemCollectionsConcurrent namespace It allows generic data to be stored in the unordered form It allows you to store duplicate objectsIn this article I am going to discuss the ConcurrentBag  T   Collection Class in C with Examples Please read our previous article where we discussed ConcurrentStack Collection Class in C with ExamplesWhat is ConcurrentBag  T   Class in CWhy do we need ConcurrentBag  T   Collection Class in CGeneric List  T   Example with Single Thread in CGeneric List Example using Multiple Threads in CGeneric List with Locking Mechanism in CWhat is BlockingCollection in CThe BlockingCollection is a Concurrent Collection Class in C which provides thread safety That means multiple threads can add as well as remove objects from the BlockingCollection concurrentlyThe BlockingCollection implements the ProducerConsumer Pattern in C In ProducerConsumer Pattern we have two threads one is called the Producer thread and another one is called the Consumer thread And most important point is that both the threads will share a common collection class to exchange the data between them And that scenario we can use BlockingCollection as the collection class which will be shared by both Producer and Consumer threads The Producer thread is going to generate the data while the consumer thread is going to consume the data Chapter9 Collections in C  ConcurrentQueue Collection Class in C  ConcurrentStack Collection Class in C  ConcurrentBag Collection Class in C  BlockingCollection Class in C Text Document Links used in the VideoAuthor  Pranaya RoutWebsite  httpsdotnettutorialsnetConcurrentQueue Collection Class in C  httpsdotnettutorialsnetlessonconcurrentqueuecollectionclassincsharpConcurrentStack Collection Class in C  httpsdotnettutorialsnetlessonconcurrentstackcollectionclasscsharpConcurrentBag Collection Class in C    httpsdotnettutorialsnetlessonconcurrentbagcollectionclassincsharpBlockingCollection Class in C         httpsdotnettutorialsnetlessonblockingcollectionclassincsharp dotnettutorials  csharp   pranaya  dotnettutorialspranaya CollectionInCSharp CollectionInCSharpByDotNetTutorials CollectionInCSharpByPranaya  Collections ConcurrentQueueCollectioninCSharpByPranaya ConcurrentStackCollectioninCSharpByPranaya BlockingCollectioninCSharpByPranaya ConcurrentBagCollectionByPranayaConcurrentQueueCollectioninCSharpBydotnettutorials ConcurrentStackCollectioninCSharpBydotnettutorials BlockingCollectioninCSharpBydotnettutorials ConcurrentBagCollectionBydotnettutorialsConcurrentQueueCollectioninCSharp ConcurrentStackCollectioninCSharp BlockingCollectioninCSharp ConcurrentBagCollection",
          "https://i.ytimg.com/vi/YCGDIn-F0rg/default.jpg",
          "2:36:42",
          "2023-07-20",
          "dotnet"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
  "Multi -Threading in C# With Example",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ThuFABX6hRc",
          "Multithreading in C# with Examples | Dot Net Tutorials | Pranaya Rout | Online Training",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "Multithreading in C with Examples  Dot Net Tutorials  Pranaya Rout  Online TrainingMultithreading in C with ExamplesIn this video I will discuss Multithreading in C with examples Multithreading is one of the most important concepts in C that you must understand as a developer In this and a few upcoming articles I will cover all the concepts of C Multithreading with examples As part of this article I will cover the following pointersWhat is MultitaskingHow Does the Operating System Execute Multiple Applications at a timeWhat is a ProcessWhat is a ThreadExample to Understand Threading in CUnderstanding the Thread Class in NET FrameworkWhat are the Drawbacks of SingleThreaded ApplicationsHow to Overcome the Drawbacks of SingleThreaded Applications Using MultithreadingWhat is Multithreading in CWhat is Thread Class in CWhat is MultitaskingBefore understanding the concept of Multithreading in C let us first understand multitasking As the name says multitasking means performing multiple tasks simultaneously Windows Operating System is a multitasking operating system It means it has the ability to run multiple applications at the same time For example on my machine I can open the Google Chrome Browser Microsoft Word document Notepad VLC Media Player Visual Studio etc at the same time This is possible because on my machine I have installed the Windows operating system and the Windows operating system is a multitasking operating systemFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document LinkMultithreading in C with Examples  httpsdotnettutorialsnetlessonmultithreadingincsharpMultithreading MultithreadingInCsharp MultithreadingByDotNetTutorials dotnettutorials csharp pranaya dotnettutorialspranaya MultithreadinginCsharpByDotNetTutorialsMultithreadinginCsharpwithExamples DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/ThuFABX6hRc/default.jpg",
          "1:33:33",
          "2023-07-26",
          "What is Multitasking,How Does the Operating System Execute Multiple Applications at a time,What is a Process,What is a Thread,Example to Understand Threading in C#,Understanding the Thread Class in .NET Framework,What are the Drawbacks of Single-Threaded Applications,How to Overcome the Drawbacks of Single-Threaded Applications Using Multithreading,What is Multithreading in C#,What is Thread Class in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "7Qp4ufgWKKs",
          "Thread Class in C# | Pass Data to Thread Function | Retrieve Data from a Thread Function",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "Thread Class in C  Pass Data to Thread Function in Type Safe Manner  Retrieve Data from a Thread Function in C  Dot Net Tutorials  Pranaya RoutWhat is Thread Class in CIn this video I will discuss Thread Class with Examples Properties Methods and Constructors of Thread classUnderstanding the different Constructors of Thread Class in detailWhy is the Constructor of Thread Class taking a Parameter of Delegate TypeUnderstanding ThreadStart delegate in CThread Function with ParameterUnderstanding ParameterizedThreadStart Delegate in CWhen to use ParameterizedThreadStart over ThreadStart delegateWhat are the Problems with the ParameterizedThreadStart delegate in CHow to Overcome the Problems of ParameterizedThreadStart Delegate in CHow to Pass Data to Thread Function in TypeSafe Manner in CIn this video I will discuss How to Pass Data to the Thread Function in a TypeSafe Manner in C with Examples How to Pass data to the Thread function in CHow do we make the thread function typesafe in CHow to Pass Data to the Thread Function in CHow to Retrieve Data from a Thread Function in CIn this video I will discuss How to Retrieve Data from a Thread Function in C using the Callback Method with Examples What is a Callback Method in CHow does a callback method work in CHow to retrieve data from a thread function using a callback method in CHow to Retrieve Data from a Thread Function in CFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoThread class in C httpsdotnettutorialsnetlessonmultithreadingincsharpHow to Pass Data to Thread Function in Type Safe Manner in C httpsdotnettutorialsnetlessonhowtopassdatatothethreadfunctioninatypesafemannerHow to Retrieve Data from a Thread Function in C httpsdotnettutorialsnetlessonhowtoretrievedatafromathreadfunctionThreadclassinCsharp HowtoPassDatatoThreadFunctioninTypeSafeMannerinCsharp HowtoRetrieveDatafromaThreadFunctioninCsharp dotnettutorials csharp pranaya dotnettutorialspranaya Multithreading MultithreadingInCsharpMultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorialsMultithreadinginCsharpwithExamplesDotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/7Qp4ufgWKKs/default.jpg",
          "1:36:14",
          "2023-07-26",
          "How to Pass data to the Thread function in C#,How do we make the thread function type-safe in C#,What is a Callback Method in C#,How does a callback method work in C#,How to retrieve data from a thread function using a callback method in C#,How to Retrieve Data from a Thread Function in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cTqoRjvb08s",
          "Thread Synchronization in C# | IsAlive Property and Join Method of Thread in C# | Dot Net Tutorials",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "Thread Synchronization in C  IsAlive Property and Join Method of Thread in C  Dot Net TutorialsJoin Method and IsAlive Property of Thread Class in C with ExamplesI will discuss using the Join Method and IsAlive Property of Thread Class in C with Examples in this video Understanding the need for the Join Method of Thread Class in CExamples using different overloaded versions of the Join MethodExamples to Understand the Use of IsAlive Property of Thread Class in CJoin Method of Thread Class in CThread Synchronization in C with ExamplesIn this video I will discuss Thread Synchronization in C with Examples At the end of this video you will understand what thread synchronization is and how you can implement thread synchronization to protect shared resources in multithread applications with realtime examplesText Document Links used in the VideoJoin Method and IsAlive Property of Thread Class in C httpsdotnettutorialsnetlessonjoinmethodofthreadclassThread Synchronization in C httpsdotnettutorialsnetlessonthreadsynchronizationincsharpFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsJoinMethodandIsAlivePropertyofThreadClassinCsharp ThreadSynchronizationinCsharp MultithreadingInCsharp dotnettutorials csharp pranaya dotnettutorialspranaya Multithreading MultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorialsMultithreadinginCsharpwithExamples DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/cTqoRjvb08s/default.jpg",
          "1:54:23",
          "2023-07-26",
          "Understanding the need for the Join Method of Thread Class in C#,Examples using different overloaded versions of the Join Method,Examples to Understand the Use of IsAlive Property of Thread Class in C#,Join Method of Thread Class in C#,Thread Synchronization in C# with Examples"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Ds9uDpzy4RY",
          "Thread Synchronization Using Lock in C# | Monitor Class in C# with Examples | Dot Net Tutorials",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "Thread Synchronization Using Lock in C  Monitor Class in C with Examples  Dot Net Tutorials  Pranaya RoutThread Synchronization Using Lock in CI will discuss Thread Synchronization using Lock in C with Examples in this video Why must we Protect the Shared Resources in Multithreading in CAccessing a Shared Resource in a SingleThreaded Environment in CAccessing a Shared Resource in a Multithreaded Environment in CHow to Protect a Shared Resource in a Multithread Environment from Concurrent Access in CWhat is the Lock Statement in CHow does the Lock Statement internally work in CProtecting Shared Variable using Lock Statement in C with ExampleWhy must we Protect the Shared Resources in Multithreading in CMonitor Class in C with ExamplesIn this video I will discuss How to Protect Shared Resources in Multithreading using Monitor Class in C with Examples Understanding the Monitor Class in CExample to understand Monitor Class in C to Protect Shared Resource from Concurrent AccessHow does the Monitor Class work in CExample to Understand MonitorEnterlockObject ref IslockTaken Method in CExample to Understand TryEnterObject TimeSpan Boolean Method of Monitor Class in CExample to Understand Wait and Pulse Methods of Monitor Class in CDifference Between Monitor and Lock in CLimitations of Locks and Monitors in CText Document Links used in the VideoThread Synchronization Using Lock in C httpsdotnettutorialsnetlessonlockinginmultithreadingMonitor Class in C with Examples httpsdotnettutorialsnetlessonmultithreadingusingmonitorFor live training you can contact us using below Mobile Number WhatsApp Number and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsdotnettutorials csharp  pranaya dotnettutorialspranaya Multithreading MultithreadingInCsharpMultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorialsMultithreadinginCsharpwithExamplesThreadSynchronizationUsingLockinCsharpMonitorClassinCwithExamples DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/Ds9uDpzy4RY/default.jpg",
          "2:15:33",
          "2023-07-26",
          "Why must we Protect the Shared Resources in Multithreading in C#,Accessing a Shared Resource in a Single-Threaded Environment in C#,Accessing a Shared Resource in a Multithreaded Environment in C#,What is the Lock Statement in C#,How does the Lock Statement internally work in C#,Protecting Shared Variable using Lock Statement in C# with Example,Understanding the Monitor Class in C#,How does the Monitor Class work in C#,Difference Between Monitor and Lock in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "ia-EfzbxeNo",
          "Mutex Class in C# | Semaphore Class in C# | Dot Net Tutorials | Pranaya Rout | Online Training",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "Mutex Class in C  Semaphore Class in C  Dot Net Tutorials  Pranaya Rout  Online TrainingMutex Class in C with ExampleIn this video I will discuss Mutex Class in C ie How to use Mutex in C to Protect Shared Resources in Multithreading with Examples Why Mutex as we already have the Lock and Monitor for Thread SafetyMutex also helps us to ensure that our code is threadsafe That means we dont end up with inconsistent results when we run our code in a multithreaded environment The Locks and Monitors ensure thread safety for InProcess threads ie the threads generated by the application itself ie Internal Threads But if the threads come from OutProcess ie from external applications then Locks and Monitors have no control over them Whereas Mutex ensures thread safety for threads that are OutProcess ie the threads that are generated by the external applications ie External ThreadsSemaphore Class in C with ExampleIn this video I will discuss How to Implement Thread Synchronization using Semaphore Class in C with Examples Why do we need Semaphore as we already have Lock Monitor and Mutex in CWhat is Semaphore in CHow does Semaphore work in CHow to use the Semaphore classUnderstanding the different methods of Semaphore class in C with examplesWhy do we need Semaphore as we already have Lock Monitor and Mutex in CLike Lock Monitor and Mutex the Semaphore also provides thread safety in C Multithreaded Applications The Lock and Monitors are basically used to provide thread safety for threads that are generated by the application itself ie Internal Threads On the other hand Mutex ensures thread safety for threads that are generated by external applications ie External Threads Using Mutex only one external thread can access our application code at any given time which we have already seen in our previous article But if we want more control over the number of external threads that can access our application code we need to use the Semaphore class in C For a better understanding please have a look at the below imageText Document Links used in the VideoMutex Class in C httpsdotnettutorialsnetlessonmutexinmultithreadingSemaphore Class in C httpsdotnettutorialsnetlessonsemaphoreinmultithreadingFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsMultithreadinginCsharpwithExamples MutexClassinCsharp SemaphoreClassinCsharp dotnettutorials csharp  pranaya dotnettutorialspranaya Multithreading MultithreadingInCsharp MultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorials DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/ia-EfzbxeNo/default.jpg",
          "2:8:21",
          "2023-07-26",
          "Mutex Class in C# with Example,Why Mutex,as we already have the Lock and Monitor for Thread Safety,Semaphore Class in C# with Example,Why do we need Semaphore,as we already have Lock,Monitor,and Mutex in C#,What is Semaphore in C#,How does Semaphore work in C#,How to use the Semaphore class,Understanding the different methods of Semaphore class in C# with examples"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "QL2WAlwl7Z0",
          "SemaphoreSlim Class in C# | Deadlock in C# | Thread Pool in C# | Dot Net Tutorials | Pranaya Rout",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "SemaphoreSlim Class in C  Deadlock in C  Thread Pool in C  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingSemaphoreSlim Class in C with ExamplesIn this video I will discuss How to Implement Thread Synchronization using SemaphoreSlim Class in C with Examples The SemaphoreSlim Class represents a lightweight alternative to Semaphore that limits the number of threads that can access a resource or pool of resources concurrentlyWhy do we need SemaphoreSlim as we already have Lock Monitor Mutex and Semaphore in CLike Lock Monitor Mutex and Semaphore the SemaphoreSlim class in C also provides thread safety The Lock and Monitors are basically used to provide thread safety for Internal Threads ie the threads generated by the application itself On the other hand Mutex and Semaphore ensure thread safety for threads that are generated by external applications ie External Threads Using Mutex only one external thread can access our application code at any given point in time And if we want more control over the number of external threads that can access our application code then we can use Semaphore in CDeadlock in C with ExampleIn this video I will discuss Deadlock in C with Examples Deadlock is one of the most important aspects to understand as a developer What is deadlockWhy did a Deadlock occurHow a deadlock can occur in a multithreaded applicationHow to avoid a Deadlock by using MonitorTryEnter methodHow to avoid Deadlock by acquiring locks in a specific orderThread Pool in C with ExamplesThe Request Life Cycle of a ThreadWhat is Thread Pooling in CWhy do we need a C Thread PoolPerformance testing between normal thread and thread poolingFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoSemaphoreSlim Class in C httpsdotnettutorialsnetlessonsemaphoreslimclassincsharpDeadlock in C httpsdotnettutorialsnetlessondeadlockincsharpThread Pool in C httpsdotnettutorialsnetlessonthreadpoolingSemaphoreSlimClassinCsharp DeadlockinCsharp ThreadPoolinCsharp dotnettutorials csharp  pranaya dotnettutorialspranaya  Multithreading MultithreadingInCsharp MultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorials MultithreadinginCsharpwithExamples DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/QL2WAlwl7Z0/default.jpg",
          "2:42:39",
          "2023-07-26",
          "SemaphoreSlim Class in C# with Examples,Why do we need SemaphoreSlim in C#,Deadlock in C# with Example,What is deadlock,Why did a Deadlock occur,How a deadlock can occur in a multithreaded application,How to avoid a Deadlock by using Monitor.TryEnter method,How to avoid Deadlock by acquiring locks in a specific order,Thread Pool in C# with Examples,The Request Life Cycle of a Thread,What is Thread Pooling in C#,Why do we need a C# Thread Pool"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "T49OO7wmonA",
          "Foreground and Background Threads | Thread Life Cycle | Threads Priorities  |  Performance Testing",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "Foreground and Background Threads in C  Thread Life Cycle in C  Threads Priorities in C  Performance Testing of a Multithreaded Application  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingForeground and Background Threads in C with ExamplesIn this video I will discuss Foreground and Background Threads in C with Examples Types of Threads in CThreading is one of the most important concepts and as a developer we all need to understand this concept because we use threading in most realtime applications In C by default the execution of an application starts with a thread which is called the main thread which is automatically run by the CLR and the Operating System We can also create other threads from the main thread for doing the desired tasks simultaneously or concurrently in the application In C we can create two types of threads They are as followsForeground Thread in CBackground Thread in CThread Life Cycle in C with ExamplesA thread in C has a life cycle which will start when we create an instance of the Thread class and the thread life cycle ends when the task execution of the thread is completed or when the thread is terminated A thread in C at any point exists in any of the following statesUnstarted New StateRunnable State Ready to RunRunningNot Runnable StateDead StateThreads Priorities in C with ExamplesIn C Programming Language each and every thread has a priority that determines how often the thread gets access to the CPU Generally a LowPriority Thread will get less CPU time than a HighPriority Thread The important point that we need to understand is how much CPU time a thread will get It doesnt only depend on its priority but also depends on the kind of operation it is performingFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoForeground and Background Threads in C httpsdotnettutorialsnetlessonforegroundandbackgroundthreadsincsharpThread Life Cycle in C httpsdotnettutorialsnetlessonthreadlifecycleincsharpThreads Priorities in C httpsdotnettutorialsnetlessonthreadsprioritiesincsharpPerformance Testing of a Multithreaded Application httpsdotnettutorialsnetlessonperformancetestingofamultithreadedapplicationForegroundandBackgroundThreads ThreadLifeCycle ThreadsPriorities dotnettutorials csharp  pranaya dotnettutorialspranaya Multithreading MultithreadingInCsharp MultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorials MultithreadinginCsharpwithExamples PerformanceTestingofaMultithreadedApplication DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/T49OO7wmonA/default.jpg",
          "1:58:14",
          "2023-07-26",
          "Foreground and Background Threads in C# with Examples,Types of Threads in C#,Foreground Thread in C#,Background Thread in C#,Thread Life Cycle in C# with Examples,Threads Priorities in C# with Examples,Performance Testing of a Multithreaded Application in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "BEL8cTgrMIY",
          "How to Terminate a Thread | Debug a Multi-threaded Application | Inter Thread Communication in C#",
          "Multi -Threading in C# With Example",
          "PLNgSFZ9yC06JfYrVkXE0RxbEe7qx2QUQ0",
          "How to Terminate a Thread in C  How to Debug a Multithreaded Application in C  Inter Thread Communication in C  Dot Net Tutorials  Pranaya Rout  Online Training  Live TrainingHow to Terminate a Thread in C with ExamplesIn C a thread can be terminated by calling the Abort method of the thread instance The Abort method throws ThreadAbortException to the thread it calls Due to this exception the thread is terminatedIf the Abort method is called on a thread before calling the Start method on it calling the Start method on such a thread later on will not start it but it will throw the ThreadStartException in the thread that called the Abort method and abort both the threadsIf the Abort method is called on a thread that has started and is in either of the blocked states ie Waiting State Sleep State or Join State it will first interrupt the thread and then abort itHow to Debug a Multithreaded Application in CInter Thread Communication in C with ExamplesInterthread Communication in C is a communication mechanism between two or more threads that work on the shared resource To perform multiple actions at the same time we need Interthread communication We can use the Monitor Class to have smooth interthread communication between multiple threads in C The Monitor class in C provides some static methods such as Wait Pulse and PulseAll which we can use to perform Interthread Communication between multiple threads The Monitor class belongs to the SystemThreading namespaceFor live training you can contact us using the below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoHow to Terminate a Thread in C httpsdotnettutorialsnetlessonhowtoterminateathreadincsharpHow to Debug a Multithreaded Application in C httpsdotnettutorialsnetlessonhowtodebugamultithreadedapplicationincsharpInter Thread Communication in C httpsdotnettutorialsnetlessoninterthreadcommunicationincsharpHowtoTerminateaThread HowtoDebugMultithreadedApplication InterThreadCommunicationdotnettutorials csharp  pranaya dotnettutorialspranaya  Multithreading MultithreadingInCsharp MultithreadingByDotNetTutorials MultithreadinginCsharpByDotNetTutorials MultithreadinginCsharpwithExamples DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/BEL8cTgrMIY/default.jpg",
          "1:16:47",
          "2023-07-26",
          "How to Terminate a Thread in C# with Examples,How to Debug a Multi-Threaded Application in C#,Inter Thread Communication in C# with Examples"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
  "Design Pattern Training Videos",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "iw6rsZ2P1ic",
          "Design Pattern using C# Training  - Day 1 | Factory and Factory Method Design Patterns in C#",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern using C Training   Day 1  Factory and Factory Method Design Patterns in C  Dot Net Tutorials  Pranaya RoutThis Training Series will discuss all the Design Patterns in C with RealTime Examples It is very easy to understand and implement design patterns in RealTime Applications Writing code with design patterns will make your applications more Reliable Scalable and MaintainableThis Video Course is For WhomThis course is designed for Students Beginners and Professional Developers who want to learn and enhance their knowledge of Design Patterns using NET Applications Here I will explain all the design patterns step by step ie first we will discuss the definition then we will give simple as well as multiple realtime examples then we will discuss how to implement the same using a NET Application then we will compare the example with the UML diagram of the design pattern so that you will understand the concept very easily What are Design PatternsDesign Patterns are nothing but documented and tested solutions for recurring problems in a given context So in simple words we can say that Design Patterns are reusable solutions to the problems that as a developer we encounter in our daytoday programming Design Patterns are basically used to solve the problems of Object Generation and Integration As we progress in this Design Patterns course you will understand what Object Generation and Integration problems are and how we solve them using different design patternsWhat is Factory Design Pattern in CLet us first try to understand the definitions of the factory design pattern If you do not understand the following definition do not worry we will explain the same with realtime examples and you will definitely understand the definition According to Gang of Four GoF the Factory Design Pattern states that A factory is an object that is used for creating other objects In technical terms we can say that a factory is a class with a method That method will create and return different types of objects based on the received input parameterIn simple words if we have a superclass and n number of subclasses and based on the data provided if we have to create and return the object of one of the subclasses then we need to use the Factory Design Pattern in CIn the Factory Design pattern we create an object without exposing the Object Creation and Initialization logic to the client The client will refer to the newly created object using a common interface The basic principle behind the Factory Design Pattern is that at run time we get an object of a similar type based on the parameter we pass So the client will get the appropriate object and consume the object without knowing how the object is created and initialized What is the Factory Method Design PatternAccording to the Gang of Four the Factory Method Design Pattern States that Defines an interface for creating an object but lets the subclasses decide which class to instantiate The Factory method lets a class defer instantiation to subclassesDesign Patterns in C With Realtime ExamplesHistory and Evolution of Design PatternsWhat are Design PatternsTypes of Design PatternsCreational Design PatternsStructural Design PatternsBehavioral Design PatternsFactory Design Pattern in C with RealTime ExampleWhat is a Factory Design PatternExample without using the Factory Pattern in CWhat is the Factory Method Design PatternImplementing the Factory Design Pattern in CFor live training you can contact us using below Mobile Number WhatsApp Number Telegram Group and Email IDContact Number 91 7021801173WhatsApp Number 91 7021801173Email ID onlinetrainingdotnettutorialsnetTelegram Group httpstelegrammedotnettutorialsText Document Links used in the VideoIntroduction httpsdotnettutorialsnetcoursedotnetdesignpatternsCreational Design Pattern httpsdotnettutorialsnetlessoncreationaldesignpatternFactory Design Pattern httpsdotnettutorialsnetlessonfactorydesignpatterncsharpFactory Method Design Pattern httpsdotnettutorialsnetlessonfactorymethoddesignpatterncsharpdesignpatterns dotnettutorials csharp dotnettutorialsdesignpatterns factorydesignpattern factorymethoddesignpattern designpatterntraining pranaya dotnettutorialspranaya DotNet CSharp DotNetCore EntityFramework EntityFrameworkCore MSSQLServer LINQ dotnetcoreinterview ADO SOLID DesignPattern DotNetTraining MVC WebAPI JOB Interview dotnetjob dotnetinterview dotnettutorials pranaya Developers",
          "https://i.ytimg.com/vi/iw6rsZ2P1ic/default.jpg",
          "1:55:38",
          "2023-03-20",
          "Design Patterns in C# With Real-time Examples,History and Evolution of Design Patterns,What are Design Patterns?,Types of Design Patterns,Creational Design Patterns,Structural Design Patterns,Behavioral Design Patterns,Factory Design Pattern in C# with Real-Time Example,What is Factory Design Pattern?,Example without using the Factory Pattern in C#,What is Factory Method Design Pattern?,Implementing the Factory Design Pattern in C#?"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "cEmV_B94cXY",
          "Design Pattern Training using C# - Day 2 | Builder | Fluent Interface | Prototype Design Pattern",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 2  Builder Design Pattern  Fluent Interface  Prototype Design Pattern  Deep Copy vs Shallow CopyWhat is the Builder Design Pattern in CAccording to GoF the Builder Design Pattern builds a complex object using many simple objects and using a stepbystep approach The Process of constructing a complex object should be generic so that the same construction process can be used to create different representations of the same complex objectSo the Builder Design Pattern is all about separating the construction process from its representation When the construction process of your object is very complex then only you need to use to Builder Design Pattern If this is not clear at the moment then dont worry we will try to understand this with an exampleWhat is the Fluent Interface Design Pattern in CThe main objective of the Fluent Interface Design Pattern is that we can apply multiple properties or methods to an object by connecting them with dots  without having to respecify the object name each timeWhat is the Prototype Design Pattern in CAs per the GoF Definition Prototype Design Pattern specifies the kind of objects to create using a prototypical instance and creating new objects by copying this prototypeTo simplify the above definition we can say that the Prototype Design Pattern gives us a way to create a new or cloned object from the existing object of a class That means it clones the existing object with its data into a new object If we do any changes to the cloned object ie new object then it does not affect the original objectWhat is Object Cloning in CWhen we talk about Object Cloning in C it means it is all about the Call by Value So if we do any changes to one object then it will not affect the other object Shallow Copy vs Deep Copy in CIn the case of Shallow copy it will create the new object from the existing object and then copy the value type fields of the current object to the new object But in the case of reference type it will only copy the reference not the referred object itself Therefore the original and clone refer to the same object in the case of reference type In the case of deep copy it will create a new object from the existing object and then copy the fields of the current object to the newly created object If the field is a value type then a bitbybit copy of the field will be performed If the field is a reference type then a new copy of the referred object is going to be created Text Documents of the VideoBuilder Design Pattern in C httpsdotnettutorialsnetlessonbuilderdesignpatternFluent Interface Design Pattern in C httpsdotnettutorialsnetlessonfluentinterfacedesignpatternPrototype Design Pattern in C httpsdotnettutorialsnetlessonprototypedesignpatternShallow Copy vs Deep Copy in C httpsdotnettutorialsnetlessonshallowcopyanddeepcopydesignpattern csharpdesignpattern dotnettutorials designpatterntraining BuilderDesignPattern FluentInterfaceDesignPattern PrototypeDesignPattern ShallowCopyCSharp DeepCopyCSharp designpatterncsharp pranaya",
          "https://i.ytimg.com/vi/cEmV_B94cXY/default.jpg",
          "1:49:",
          "2023-03-21",
          "Builder Design Pattern in C#,Builder Design Pattern in CSharp,Fluent Interface Design Pattern in C#,Fluent Interface Design Pattern in CSharp,Prototype Design Pattern in C#,Prototype Design Pattern in CSharp,Shallow Copy vs Deep Copy in C#,Shallow Copy vs Deep Copy in CSharp,Shallow Copy,Shallow Copy in CSharp,Deep Copy in CSharp,Deep Copy in C#,csharp design pattern,design pattern training,design pattern training Csharp"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "rLKHrAuwclQ",
          "Design Pattern Training using C# - Day 3 | Singleton Design Pattern with Real-Time Examples using C#",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 3  Singleton Design Pattern with RealTime Examples using CWhat is Singleton Pattern in CWe need to use the Singleton Design Pattern in C when we need to ensure that only one instance of a particular class is going to be created and then provide simple global access to that instance for the entire applicationImplementation Guidelines of Singleton Design Pattern in CThe following are the guidelines to implement the Singleton Design Pattern in C1 We need to declare a constructor that should be private and parameterless This is required because it will restrict the class to be instantiated from outside the class It only instantiates from within the class2 The class should be declared as sealed which will ensure that it cannot be inherited This is going to be useful when you are dealing with the nested class 3 We need to create a private static variable that is going to hold a reference to the singleton instance of the class4 We also need to create a public static PropertyMethod which will return the singleton instance of the class This method or property first checks if an instance of the singleton class is created or not If the singleton instance is created then it returns that singleton instance otherwise it will create an instance and then return that instanceExample of Singleton Design Pattern using CLet us understand the Singleton Design pattern in C with Examples There are many ways we can implement the Singleton Design Pattern in C They are as follows We will discuss all the following methods to implement the Singleton Design Pattern in C1 No ThreadSafe Singleton Design Pattern in C2 ThreadSafety Singleton Implementation using Lock3 Implementing ThreadSafety Singleton Design Pattern using DoubleCheck Locking4 Using Eager Loading to Implement ThreadSafety Singleton Design Pattern5 Using Lazy Generic Class to Implement Lazy Loading in Singleton Design PatternWhat is NonLazy or Eager Loading in CThe Eager Loading or NonLazy Loading in C is nothing but a process in which we need to initialize the Singleton Object at the time of application startup rather than ondemand and keep it ready in memory to be used in the future The advantage of using Eager Loading in the Singleton Design Pattern is that the CLR Common Language Runtime will take care of Object Initialization and Thread Safety in Multithread Environment That means we will not require to write any code explicitly for handling the thread safety for a multithreaded environmentWhat is Lazy Loading or Deferred Loading in CLazy Loading or Deferred Loading in C is nothing but a concept that is commonly used to delay the initialization of an object until the point at which it is needed So the main objective of Lazy Loading or Deferred Loading is to load the object ondemand or you can say object when needed The most important point that you need to keep in mind is that you need to use Lazy loading when the cost of the object creation is very high as well as the use of that object is very rare Lazy loading improves the performance of an application if it is used properly What are the Similarities Between Singleton and Static Class in CBefore discussing the differences between them let us first discuss the similarities between Singleton vs Static Class in C1 Both Static and Singleton Classes can have only one instance available in memory throughout the whole application 2 They both are used for holding the global state of an application which is going to be common for all clients3 Both Static Classes and Singleton Classes can be implemented as ThreadSafeText Document Links of this VideoSingleton Design Pattern in C httpsdotnettutorialsnetlessonsingletondesignpatternWhy Singleton Class is Sealed in C httpsdotnettutorialsnetlessonsingletonclasssealedThreadSafe Singleton Design Pattern in C httpsdotnettutorialsnetlessonthreadsafesingletondesignpatternLazy Loading vs Eager loading in Singleton Design Pattern httpsdotnettutorialsnetlessonlazyvseagerloadingchsrapSingleton VS Static Class in C httpsdotnettutorialsnetlessonsingletonvsstaticclassSingleton Design Pattern RealTime Example  Exception Logging httpsdotnettutorialsnetlessonsingletondesignpatternrealtimeexampleSingleton Design Pattern RealTime Example  Caching httpsdotnettutorialsnetlessonsingletondesignpatternrealtimeexamplecachingcsharpsingletondesignpattern singletondesignpatterncsharp singletondesignpatternrealtimeexamples csharptutorials dotnettutorials pranaya designpattern csharp",
          "https://i.ytimg.com/vi/rLKHrAuwclQ/default.jpg",
          "1:49:53",
          "2023-03-22",
          "Singleton Design Pattern in C#,Why Singleton Class Sealed in C#,Singleton Design Pattern without Thread Safe,How to Implement Thread Safe Singleton Design Pattern in C# using Lock,Lazy Loading vs Eager Loading in Singleton Design Pattern,How to Implement Lazy Loading using Lazy Generic Class in C#,Singleton vs Static Class in C#,Singleton Design Pattern RealTime Example Exception Logging,Singleton Design Pattern RealTime Example Caching"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pimVgWOsn5o",
          "Design Pattern Training using C# - Day 4 | Abstract Factory Design Pattern with Real-Time Examples",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 4  Abstract Factory Design Pattern with RealTime Examples using C LanguageWhat is Abstract Factory Design PatternAccording to the Gang of Four Definition The Abstract Factory Design Pattern provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classesIn simple words we can say that the Abstract Factory is a super factory that creates other factories Abstract Factory is also called the Factory of Factories That means the Abstract Factory design pattern provides an interface for creating families of related or dependent products but leaves the actual object creation to the concrete factory classes If this is not clear at the moment then dont worry we will explain this with one Realtime ExampleWhen to use Abstract Factory Design Pattern in Application DevelopmentWe need to use Abstract Factory Design Pattern in C when the client should not be aware of how objects are created and for which class object is created This is helpful when an object needs to be created from a family of classes We can apply the Abstract Factory Design Pattern to many kinds of objects So as a developer we should know when to use this Abstract Factory Design Pattern in our Application Development For example if we have a group of objects with the same purpose we could use the Abstract Factory Design Pattern to define an interface for creating new objectsIn general we can use the Abstract Factory Design Pattern in the following scenarios1 An application where the Client is independent or unaware of how the product classes are created and composed2 An application where we have to define multiple families of products3 An application where we have to define a group of classes that are designed to be used togetherHow to implement the Abstract Factory Design Pattern in CTo Implement the Abstract Factory Design Pattern in C we need to use the following componentsAbstract Product These are going to be interfaces for creating abstract products Here we need to define the Operations a Product should haveConcrete Product These are the classes that implement the Abstract Product interfaceAbstract Factory This is going to be an interface for operations that will create Abstract Product objectsConcrete Factory These are the classes that implement the Abstract Factory interface and provide implementations for the interface methods We can use these concrete classes to create concrete product objectsClient This is a class that is going to use our Abstract Factory and Abstract Product interfaces to create a family of productsText Document Links used in the VideoAbstract Factory Design Pattern in C httpsdotnettutorialsnetlessonabstractfactorydesignpatterncsharpAbstract Factory Design Pattern RealTime Example httpsdotnettutorialsnetlessonabstractfactorydesignpatternrealtimeexamplecsharpAbstractFactoryDesignPattern AbstractFactoryDesignPatternCSharp AbstractFactoryRealTimeExamples AbstractFactoryRealTimeExamplesCSharp dotnettutorials csharp designpatterns pranaya",
          "https://i.ytimg.com/vi/pimVgWOsn5o/default.jpg",
          "1:8:45",
          "2023-03-24",
          "Abstract Factory Design Pattern in C#,Abstract Factory Design Pattern in CSharp,Abstract Factory Design Pattern RealTime Example,Abstract Factory Design Pattern RealTime Example using C#,Abstract Factory Design Pattern RealTime Example using CSharp,What is Abstract Factory Design Pattern,What is Abstract Factory Design Pattern in C#,When to use Abstract Factory Design Pattern in Application Development,How to implement the Abstract Factory Design Pattern in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "e5HAJd_757g",
          "Design Pattern Training using C# - Day 5 | Adapter and Facade Design Pattern with Real-Time Examples",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 5  Adapter and Facade Design Pattern with RealTime ExamplesWhat is the Structural Design Pattern in CAccording to Wikipedia in software engineering Structural Design Patterns are design patterns that ease the design by identifying a simple way to realize the relationship among entities In simple words we can say that the Structural Design Pattern is basically used to manage the structure of classes and interface as well as manage the relationship between the classes What is Adapter Design PatternThe Adapter Design Pattern is a Structural Design Pattern that allows two incompatible interfaces objects to work together The Adapter Design Pattern acts as a bridge between two incompatible objects Let us say the first object is A and the second object is B And object A wants to consume some of the services provided by object B As they are incompatible so they cannot communicate directly In this case Adapter will come into the picture and will act as a middleman or bridge between object A and object B Now object A will call the Adapter and Adapter will do the necessary transformations or conversions and then it will call object BThe Adapter Design Pattern in C involves a single class called Adapter which is responsible for communication between two independent or incompatible interfaces So in simple words we can say that Adapter Design Pattern helps two incompatible interfaces to work together We can also say that it works like a Wrapper which makes two incompatible systems work togetherWhen to use the Object Adapter pattern and when to use the Class Adapter Pattern in CIt is completely based on the situation For example if you have a java class and you want to make it compatible with the dot net class then you need to use the Object Adapter Design Pattern and the reason is it is not possible to make inheritance On the other hand if both the classes are within the same project and using the same programming language and if the inheritance is possible then you need to go for Class Adapter Design PatternWhen to use the Adapter Design Pattern in RealTime ApplicationsWe need to choose the Adapter Design Pattern in RealTime Applications when1 Allow a system to use classes of another system that is incompatible with it2 Allow communication between a new and already existing system that is independent of each otherWhat is the Facade Design Pattern in CAs per the GOF definition Facade Design Pattern states that you need to provide a unified interface to a set of interfaces in a subsystem The Facade Design Pattern defines a higherlevel interface that makes the subsystem easier to useIn simple words we can say that the Facade Design Pattern is used to hide the complexities of a system and provides an easytouse interface to the client using which the client can access the system The Facade usually a wrapper class sits on the top of a group of subsystems and allows them to communicate in a unified mannerWe need to use the Facade Design Pattern in C when a system is very complex or very difficult to understand This is because the system has a large number of interdependent classesAs the name suggests Facade means the Face of the Building Suppose you created one building The people walking outside the building can only see the walls and glass of the building The People do not know anything about the wiring the pipes the interiors and other complexities which are there inside the building That means the Facade hides all the complexities of the building and displays a friendly face to people walking outside the buildingWhen to use Facade Design Patterns in RealTime ApplicationsWe need to use the Facade Design Pattern in C RealTime Applications when1 We want to provide a simple interface to a complex subsystem 2 There are many dependencies between clients and the implementation classesText Documents Link used in the VideoStructural Design Pattern in C httpsdotnettutorialsnetlessonstructuraldesignpatternAdapter Design Pattern in C httpsdotnettutorialsnetlessonadapterdesignpatternAdapter Design Pattern Realtime Example httpsdotnettutorialsnetlessonadapterdesignpatternrealtimeexampleFacade Design Pattern in C httpsdotnettutorialsnetlessonfacadedesignpatternFacade Design Pattern RealTime Example in C httpsdotnettutorialsnetlessonfacadedesignpatternrealtimeexamplecsharpdesignpatterns designpatternscsharp dotnettutorials AdapterDesignPattern FacadeDesignPattern",
          "https://i.ytimg.com/vi/e5HAJd_757g/default.jpg",
          "1:15:27",
          "2023-03-27",
          "Structural Design Pattern in C#,Adapter Design Pattern in C#,Adapter Design Pattern Real-time Example,Facade Design Pattern in C#,Facade Design Pattern Real-Time Example in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "Dq4smkbdXWc",
          "Design Pattern Training using C# - Day 6 | Decorator and Bridge Design Pattern with Examples",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 6  Decorator and Bridge Design Pattern with RealTime ExamplesWhat is the Decorator Design Pattern in CThe Decorator Design Pattern allows us to dynamically add new functionalities to an existing object without altering or modifying its structure This design pattern acts as a wrapper for the existing class That means the Decorator Design Pattern dynamically changes the functionality of an object at runtime without impacting the existing functionality of the object A decorator is an object that adds features to another objectWhen to use the Decorator Design Pattern in realtime applicationsWe need to use the Decorator Design Pattern RealTime Applications when 1 We want to add new functionalities to existing objects dynamicallyWhat is Bridge Design Pattern in CAs per the Gang of Four definitions the Bridge Design Pattern Decouples an abstraction from its implementation so that the two can vary independentlyIn the Bridge Design Pattern there are 2 parts The first part is the Abstraction and the second part is the Implementation The Bridge Design Pattern allows both Abstraction and Implementation to be developed independently and the client code can only access the Abstraction part without being concerned about the Implementation partThe Bridge Design Pattern separates the Abstraction hierarchy and the Implementation hierarchy into two different layers so that change in one Hierarchy will not affect the development or functionality of another Hierarchy When do we need to use Bridge Design Pattern in C RealTime ApplicationsWe need to use the Bridge Design Pattern in C RealTime Applications when1 We want to hide the implementation details from the client2 We want the selection or switching of the implementation to be at runtime rather than design time3 We want both the abstraction and implementation classes to be extensible by the subclasses4 We want to avoid a tight coupling binding between an abstraction and its implementation 5 The changes in the implementation of an abstraction should have no impact on clientsText Document Links used in the VideoDecorator Design Pattern in C httpsdotnettutorialsnetlessondecoratordesignpatternDecorator Design Pattern RealTime Example httpsdotnettutorialsnetlessondecoratordesignpatternrealtimeexampleBridge Design Pattern in C httpsdotnettutorialsnetlessonbridgedesignpatternBridge Design Pattern RealTime Example httpsdotnettutorialsnetlessonbridgedesignpatternrealtimeexampledesignpatterntraining dotnetdesignpattern csharpdesignpattern DecoratorDesignPattern BridgeDesignPattern dotnettutorials pranayarout DecoratorDesignPatternCSharp BridgeDesignPatternCsharp",
          "https://i.ytimg.com/vi/Dq4smkbdXWc/default.jpg",
          "1:42:45",
          "2023-03-30",
          "Decorator Design Pattern in C#,Decorator Design Pattern Real-Time Example,Bridge Design Pattern in C#,Bridge Design Pattern Real-Time Example,Decorator Design Pattern in CSharp,Decorator Design Pattern Real-Time Example CSharp,Bridge Design Pattern in CSharp,Bridge Design Pattern Real-Time Example CSharp"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "LDsQS9OsSEs",
          "Design Pattern Training using C# - Day 7 | Composite, Proxy, and Flyweight Design Patterns in C#",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 7  Composite Proxy and Flyweight Design Patterns in CWhat is the Composite Design Pattern in CAs per the Gang of Four definitions the Composite Design Pattern states that Compose objects into tree structures to represent partwhole hierarchies Composite lets clients treat individual objects and compositions of objects uniformly The Composite Design Pattern represents PartWhole hierarchies of objects That means the client can access the individual objects or the composition of objects in a uniform mannerIn simple words we can say that the Composite Design Pattern composes the objects in the form of a tree structure to represent part as well as a whole hierarchy This design pattern is used when we need to treat a group of objects in a similar way as a single object When do we need to use the Composite Design Pattern in RealTime ApplicationsWe need to use the Composite Design Pattern in C Realtime Applications when1 We want to represent partwhole hierarchies of objects2 We want the clients to ignore the difference between the compositions of objects and individual objectsWhat is Proxy Design PatternAccording to the Gang of four definitions Proxy Design Pattern provides a surrogate act on behalf of another or placeholder for another object to control access to it The Proxy Design Pattern allows us to create a class that represents the functionality of other classes The proxy could interface with anything such as a network connection a large object in memory a file or some other resources that are expensive or impossible to duplicateWe can also say that the Proxy is the object which is being called by the client to access the real object behind the scene Proxy means in place of or on behalf of That means In Proxy Design Pattern a class represents the functionality of another class What is the Flyweight Design PatternThe Flyweight Design Pattern is used when there is a need to create a large number of objects of almost similar nature A large number of objects means it consumes a large amount of memory and the Flyweight Design Pattern provides a solution for reducing the load on memory by sharing objectsThis Design Pattern is basically used to reduce the number of objects created decrease the memory footprint and increase the overall performance of the application That means Flyweight Design Pattern tries to reduce the already existing similar kind of objects by storing them in the cache and creating a new object when no matching object is foundText Document Links used in the VideoComposite Design Pattern httpsdotnettutorialsnetlessoncompositedesignpatternProxy Design Pattern httpsdotnettutorialsnetlessonproxydesignpatternFlyweight Design Pattern httpsdotnettutorialsnetlessonflyweightdesignpatterndesignpatterntraining dotnetdesignpattern csharpdesignpattern CompositeDesignPattern ProxyDesignPattern dotnettutorials pranayarout FlyweightDesignPatternCSharp CompositeDesignPatternCsharp",
          "https://i.ytimg.com/vi/LDsQS9OsSEs/default.jpg",
          "1:52:45",
          "2023-04-07",
          "What is the Composite Design Pattern in C#,What is Proxy Design Pattern in C#,What is the Flyweight Design Pattern,What is the Composite Design Pattern in CSharp,What is Proxy Design Pattern in CSharp,What is the Flyweight Design Pattern in CSharp,What is the Composite Design Pattern,What is Proxy Design Pattern"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "zEpFaWlmLyY",
          "Design Pattern Training using C# - Day 8 | Observer, and Iterator Design Patterns in C#",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 8  Observer Chain of Responsibility and Iterator Design Patterns in CWhat is the Behavioural Design Pattern in CBehavioural Design Patterns deal with the communication or interaction between Classes and Objects The interaction between the objects should be in such a way that they are talking to each other and still they are loosely coupled Loose coupling is the key to implementing the ntier architectureWhat is the Observer Design PatternAccording to GOF Observer Design Pattern states Define a onetomany dependency between objects so that when one object state changes all its dependents are notified and updated automatically The Observer Design Pattern is a Software Design Pattern in which an object called a Subject maintains a list of its dependents called Observers and notifies them automatically whenever any state changes by calling one of their methodsWhat is the Chain of Responsibility Design PatternAccording to the Gang of Four Definitions the Chain of Responsibility Design Pattern states that Avoid coupling the sender of a request to its receiver by giving more than one receiver object a chance to handle the request Chain the receiving objects and pass the request along the chain until an object handle itIn simple words we can say that the chain of responsibility design pattern creates a chain of receiver objects for a given request In this design pattern normally each receiver contains a reference to another receiver If one receiver cannot handle the request then it passes the same request to the next receiver and so on One receiver handles the request in the chain or one or more receivers can also handle the requestWhat is Iterator Design PatternThe Iterator Design Pattern allows sequential access to elements without exposing the inside logic That means using the Iterator Design Pattern we can access the elements of a collection in a sequential manner without knowing its internal representationsText Document Links used in the VideoBehavioural Design Pattern in C httpsdotnettutorialsnetlessonbehavioraldesignpatternObserver Design Pattern in C httpsdotnettutorialsnetlessonobserverdesignpatternChain of Responsibility Design Pattern in C httpsdotnettutorialsnetlessonchainofresponsibilitydesignpatternIterator Design Pattern in C httpsdotnettutorialsnetlessoniteratordesignpatterndesignpatterntraining dotnetdesignpattern csharpdesignpattern ObserverDesignPattern IteratorDesignPattern dotnettutorials pranayarout ChainOfResponsibilityDesignPatternCSharp",
          "https://i.ytimg.com/vi/zEpFaWlmLyY/default.jpg",
          "1:42:7",
          "2023-04-10",
          "Behavioural Design Pattern in C#,Behavioural Design Pattern in CSharp,Behavioural Design Pattern,Observer Design Pattern in C#,Observer Design Pattern in CSharp,Observer Design Pattern,Iterator Design Pattern in C#,Iterator Design Pattern in CSharp,Iterator Design Pattern,Chain of Responsibility Design Pattern in C#,Chain of Responsibility Design Pattern in CSharp,Chain of Responsibility Design Pattern"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "3qAgvmCRITQ",
          "Design Pattern Training using C# - Day 9 | State, Template, Command and Visitor Design Patterns",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 9  State Template Command and Visitor Design Patterns in CWhat is State Design Pattern in CAccording to Gang of Four Definitions State Design Pattern in CSharp allows an object to alter its behavior when its internal state changes In simple words we can say that the State Design Pattern allows an object to completely change its behavior depending on its current internal stateWhat is the Template Method Design Pattern in CAccording to Gang of Four Template Method Design Pattern in CSharp defines a sequence of steps of an algorithm and allows the subclasses to override the steps but is not allowed to change the sequence What is the Command Design Pattern in CAccording to the Gang of Four definitions Command Design Pattern in CSharp is used to encapsulate a request as an object ie a command and pass it to an invoker wherein the invoker does not know how to serve the request but uses the encapsulated command to perform an actionWhat is the Visitor Design Pattern in CAccording to GOF Definition in the Visitor Design Pattern in CSharp we use a Visitor Object which changes the Executing Algorithm of an Element Object In this way when the visitor varies the execution algorithm of the element object can also vary Text Document Links used in the VideoState Design Pattern in C httpsdotnettutorialsnetlessonstatedesignpatternTemplate Method Design Pattern in C httpsdotnettutorialsnetlessontemplatemethoddesignpatternCommand Design Pattern in C httpsdotnettutorialsnetlessoncommanddesignpatternVisitor Design Pattern in C httpsdotnettutorialsnetlessonvisitordesignpatterndesignpatterntraining dotnetdesignpattern csharpdesignpattern StateDesignPattern CommandDesignPattern dotnettutorials pranayarout VisitorDesignPattern TemplateMethodDesignPattern StateDesignPatternCSharp CommandDesignPatternCSharp VisitorDesignPatternCSharp TemplateMethodDesignPatternCSharp",
          "https://i.ytimg.com/vi/3qAgvmCRITQ/default.jpg",
          "1:37:35",
          "2023-04-10",
          "State Design Pattern in C#,State Design Pattern in CSharp,State Design Pattern,Command Design Pattern in C#,Command Design Pattern in CSharp,Command Design Pattern,Visitor Design Pattern in C#,Visitor Design Pattern in CSharp,Visitor Design Pattern,Template Method Design Pattern in C#,Template Method Design Pattern in CSharp,Template Method Design Pattern"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "pIZYGjfPN_c",
          "Design Pattern Training using C# - Day 10 | Strategy, Mediator, Memento, Interpreter Design Patterns",
          "Design Pattern Training Videos",
          "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5",
          "Design Pattern Training using C  Day 10  Strategy Mediator Memento and Interpreter Design PatternsWhat is the Strategy Design Pattern in CAccording to the Gang of Four Definitions define a family of algorithms encapsulate each one and make them interchangeable Strategy lets the algorithm vary independently from clients that use it The Strategy Design Pattern is used when we have multiple algorithms solutions for a specific task and the client decides on the actual implementation to be used at runtime In simple words we can say that the Strategy Design Pattern attempts to solve the issue where you need to provide multiple solutions for the same problem so that one can be selected at runtimeWhat is the Mediator Design Pattern in CAccording to the Gang of Four definitions define an object that encapsulates how a set of objects interact with each other Mediator promotes loose coupling by keeping objects from referring to each other explicitly and it lets you vary their interaction independentlyLet us first simplify the above definitions The Mediator Design Pattern is used to reduce the communication complexity between multiple objects This design pattern provides a mediator object and that mediator object will take the responsibility to handle all the communication complexities between different objectsThe Mediator object acts as the communication center for all objects That means when an object needs to communicate with another object then it does not call the other object directly instead it calls the mediator object and it is the responsibility of the mediator object to route the message to the destination objectWhat is the Memento Design Pattern in CThe Memento Design Pattern in CSharp is used to Restore an object to its Previous State That means if you want to perform some kind of undo or rollback operation in your application then you need to use the Memento Design PatternWhat is the Interpreter Design Pattern in CThe Interpreter Design Pattern in CSharp Provides a way to evaluate language grammar or expression This pattern is used in SQL Parsing Symbol Processing Engines etcText Document Links used in the VideoStrategy Design Pattern in C httpsdotnettutorialsnetlessonstrategydesignpatternMediator Design Pattern in C httpsdotnettutorialsnetlessonmediatordesignpatternMemento Design Pattern in C httpsdotnettutorialsnetlessonmementodesignpatternInterpreter Design Pattern in C httpsdotnettutorialsnetlessoninterpreterdesignpatterndesignpatterntraining dotnetdesignpattern csharpdesignpattern StrategyDesignPattern MediatorDesignPattern dotnettutorials pranayarout MementoDesignPattern InterpreterDesignPattern StrategyDesignPatternCSharp MediatorDesignPatternCSharp MementoDesignPatternCSharp InterpreterDesignPatternCSharp",
          "https://i.ytimg.com/vi/pIZYGjfPN_c/default.jpg",
          "1:39:59",
          "2023-04-11",
          "Strategy Design Pattern,Mediator Design Pattern,Memento Design Pattern,Interpreter Design Pattern,Strategy Design Pattern in C#,Mediator Design Pattern in C#,Memento Design Pattern in C#,Interpreter Design Pattern in C#,Strategy Design Pattern in CSharp,Mediator Design Pattern in CSharp,Memento Design Pattern in CSharp,Interpreter Design Pattern in CSharp"
      );
      insert INTO
      playlist (
      playlistId,
      playlistTitle,
      category
    )
VALUES (
  "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
  "LINQ Training",
  "dotnet"
    );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bpZ6EXSavEM",
          "LINQ Training Part -1 | Architecture of LINQ | Different Ways to Queries | IEnumerable vs IQueryable",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Onne Training Part 1  Architecture of LINQ  Different Ways to write LINQ Queries  IEnumerable and IQueryable in C  Differences Between IEnumerable and IQueryableArchitecture of LINQ  What is LINQ Why should we learn LINQ How does LINQ work What are LINQ Providers What are the Advantages of using LINQ Disadvantages of using LINQLink For the Text Document httpsdotnettutorialsnetlessonintroductiontolinqDifferent Ways to write LINQ Queries Different things required to write a LINQ Query What is a Query What are the different ways to write a LINQ query Example of using both Method and Query SyntaxLink For the Text Document httpsdotnettutorialsnetlessondifferentwaystowritelinqqueryIEnumerable and IQueryable in C What is IEnumerable in C What is IQueryable in C Examples of IEnumerable and IQueryableLink For the Text Document httpsdotnettutorialsnetlessonienumerableiqueryablecsharpDifferences Between IEnumerable and IQueryable in C     Link For the Text Document httpsdotnettutorialsnetlessondifferencesbetweenienumerableandiqueryablelinq dotnettutorials csharp linqtutorials linqbydotnettutorials linqonlinetraining linqarchitecture linqqueries",
          "https://i.ytimg.com/vi/bpZ6EXSavEM/default.jpg",
          "1:37:2",
          "2023-02-28",
          "Architecture of LINQ,Different Ways to write LINQ Queries,IEnumerable and IQueryable in C#,Differences Between IEnumerable and IQueryable in C#,What is LINQ,Why should we learn LINQ?,How does LINQ work,What are LINQ Providers,Advantages of using LINQ,Disadvantages of using LINQ,Different things required to write a LINQ Query?,What is a Query?,What are the different ways to write a LINQ query,Example of using both Method and Query Syntax,What is IEnumerable in C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "nZAF5PNSq_Q",
          "LINQ Training Part -2 | LINQ Projection Operators | Select and SelectMany Methods in LINQ",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Online Training Part 2  LINQ Projection Operators  Select and SelectMany Projection Methods in LINQLINQ Operator  Methods     What are LINQ Operators  Methods      What are the Categories of LINQ OperatorsText Document Link httpsdotnettutorialsnetlessonlinqoperatorsLINQ Select Projection Operator in C      What is Projection in LINQ      What are Projection Methods or Operators Available in LINQ      Select Operator and Select Method using C      Examples to Understand LINQ Select Method and Select Operator using C      How to Select a Single Property using LINQ Select Operator or Select Method in C      How to Select a Few Properties using LINQ Select Operator or Select Method in C      How to Select a Few Properties to a Different Class using LINQ Projection Operator      How to Project the Data to Anonymous Type using LINQ Select OperatorMethod      How to Perform Calculations on Select Data using the LINQ Projection Operator      How to Select Data with Index Value using LINQ Select Projection OperatorText Document Link httpsdotnettutorialsnetlessonlinqselectoperatorLINQ SelectMany Method in C     What is Linq SelectMany Method     Example to Understand LINQ SelectMany Projection Method using C     LINQ SelectMany Using Query Syntax in C     Example to Understand LINQ SelectMany Projection Method with Complex Data Type in C     Example to Understand how to Remove Duplicates while using LINQ SelectMany Method Complex Example to Understand LINQ SelectMany Method using CText Document Link httpsdotnettutorialsnetlessonselectmanyinlinqlinqoperators linqselectmethod linqselectmanymethod linqonlinetraining linqtutorials csharp dotnettutorials pranayaroutlinq",
          "https://i.ytimg.com/vi/nZAF5PNSq_Q/default.jpg",
          "1:52:50",
          "2023-02-28",
          "LINQ Operators,LINQ Select Projection Operator in C#,LINQ SelectMany Method in C#,What are LINQ Operators / Methods,What is Projection in LINQ,What are Projection Methods or Operators Available in LINQ,Select Operator and Method using C#,What is Linq SelectMany Method,Example to Understand LINQ SelectMany Projection Method using C,How to Select a Single Property using LINQ Select Operator or Select Method in C#?,Complex Example to Understand LINQ SelectMany Method using C#"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "S8jq-258h88",
          "LINQ Training Part -3 | LINQ Where Method | OfType Operator in LINQ | LINQ Distinct Method",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Online Training Part 3  LINQ Where Method  OfType Operator in LINQ  Set Operators in LINQ  LINQ Distinct MethodLINQ Where Method   What is Filtering   What are the Filtering Methods Available in LINQ   LINQ Where Filtering Operator or Method   What is a Predicate in C   Complex Example to Understand LINQ Where Extension Method using C   Example to Understand How to Specify Multiple Conditions using LINQ   Where Method in C   Complex Example to Understand LINQ Where Method   Example to Fetch Elements along with their Index position using Where Method in CText Document Link httpsdotnettutorialsnetlessonwherefilteringoperatorsinlinqOfType Operator in LINQ   What is OfType Operator in LINQ   Example to Understand LINQ OfType Method Using Method and Query Syntax in C   OfType and is Operators with a condition in CText Document Link httpsdotnettutorialsnetlessonoftypeoperatorinlinqSet Operators in LINQ   What are Set Operators in LINQ   Examples of Set Operations   LINQ Set Operation Methods in CText Document Link httpsdotnettutorialsnetlessonsetoperationlinqLINQ Distinct Method   What is LINQ Distinct Method in C   Example to Understand LINQ Distinct Method on Value Type using C   Example to Understand LINQ Distinct Method with String Values   LINQ Distinct Operation with Complex Data Type using C   Implementing IEqualityComparer Interface   Overriding Equals and GetHashCode Methods   Using Anonymous Type   Implementing IEquatble InterfaceText Document Link httpsdotnettutorialsnetlessonlinqdistinctmethodlinqtutorials linqwheremethod linqsetoperators linqdistinctmethod linqtraining dotnettutorials pranayadotnet pranayalinq",
          "https://i.ytimg.com/vi/S8jq-258h88/default.jpg",
          "1:36:9",
          "2023-02-28",
          "LINQ Where Method,OfType Operator in LINQ,Set Operators in LINQ,LINQ Distinct Method,What is Filtering?,What is OfType Operator in LINQ?,What are Set Operators in LINQ?,What is LINQ Distinct Method in C#?,LINQ Where Filtering Operator or Method,Example to Understand LINQ OfType Method Using Method and Query Syntax in C#,Examples of Set Operations,Example to Understand LINQ Distinct Method"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "eSAkjfOqy9A",
          "LINQ Training Part - 4 | LINQ Except Intersect Union Concat Methods | Ordering Operators in LINQ",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Training Part  4  LINQ Except Intersect Union Concat Methods with Examples  Ordering Operators in LINQSet Operators in LINQText Document Link httpsdotnettutorialsnetlessonsetoperationlinqLINQ Distinct MethodWhat is LINQ Distinct in CMultiple Examples to Understand LINQ Distinct Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqdistinctmethodLINQ Except MethodWhat is LINQ Except in CMultiple Examples to Understand LINQ Except Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqexceptmethodLINQ Intersect MethodWhat is LINQ Intersect in CMultiple Examples to Understand LINQ Intersect Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqintersectmethodLINQ Union MethodWhat is LINQ Union in CMultiple Examples to Understand LINQ Union Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqunionmethodLINQ Concat MethodWhat is LINQ Concat in CMultiple Examples to Understand LINQ Concat Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqconcatoperatorOrdering Operators in LINQWhat are Ordering Operators in CMultiple Examples to Understand Ordering Operators  Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonorderingoperatorsinlinqLINQ OrderBy MethodWhat is LINQ OrderBy in CMultiple Examples to Understand LINQ OrderBy Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqorderbymethodLinq OrderByDescending MethodWhat is Linq OrderByDescending in CMultiple Examples to Understand Linq OrderByDescending Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqorderbydescendingmethodLinq ThenBy and ThenByDescending MethodWhat is Linq ThenBy and ThenByDescending Method in CMultiple Examples to Understand Linq ThenBy and ThenByDescending Method Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqthenbyandthenbydescendingLINQ Reverse MethodWhat is LINQ Reverse in CMultiple Examples to Understand LINQ Reverse Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqreversemethodLINQExcept LINQIntersect LINQUnion LINQConcat LINQExceptMethid LINQIntersectMethod LINQUnionMethod LINQConcatMethod linq linqcsharp dotnettutorials linqtraining pranayalinq",
          "https://i.ytimg.com/vi/eSAkjfOqy9A/default.jpg",
          "1:27:11",
          "2023-02-28",
          "Set Operators in LINQ,LINQ Distinct Method,LINQ Except Method,LINQ Intersect Method,LINQ Union Method,LINQ Concat Method,Ordering Operators in LINQ,LINQ OrderBy Method,Linq OrderByDescending Method,Linq ThenBy and ThenByDescending Method,LINQ Reverse Method,What is LINQ Distinct in C#?,What is LINQ Except in C#?,What is LINQ Intersect in C#?,What is LINQ Union in C#?,What is LINQ Concat in C#?,What is Ordering Operators in C#?,What is LINQ OrderBy in C#?"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "J_GA_oZkHSw",
          "LINQ Training Part - 5 | LINQ Aggregate Sum Max Min Average Count Method | LINQ All Any Contains",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Training Part  5  LINQ Aggregate Functions  LINQ Sum Max Min Average Count Method  LINQ All Any Contains MethodLINQ Aggregate FunctionsWhat are LINQ Aggregate Functions in CMultiple Examples to Understand LINQ Aggregate Methods with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqaggregatefunctionsLINQ Sum MethodWhat is LINQ Sum in CMultiple Examples to Understand LINQ Sum Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqsummethodLINQ Max MethodWhat is LINQ Max in CMultiple Examples to Understand LINQ Max Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqmaxmethodLINQ Min MethodWhat is LINQ Min in CMultiple Examples to Understand LINQ Min Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqminmethodLINQ Average MethodWhat is LINQ Average in CMultiple Examples to Understand LINQ Average Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqaveragemethodLINQ Count MethodWhat is LINQ Count in CMultiple Examples to Understand LINQ Count Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqcountmethodLINQ Quantifiers OperatorsWhat are LINQ Quantifier Methods in CMultiple Examples to Understand LINQ Quantifier Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqquantifiersoperatorsLINQ All MethodWhat is LINQ All in CMultiple Examples to Understand LINQ All Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqalloperatorLINQ Any MethodWhat is LINQ Any in CMultiple Examples to Understand LINQ Any Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqanyoperatorLINQ Contains MethodWhat is LINQ Contains in CMultiple Examples to Understand LINQ Contains Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqcontainsmethodlinqcsharp linqaggregatemethods linqQuantifiermethods linqtraining dotnettutorials linqtutorials pranayalinq",
          "https://i.ytimg.com/vi/J_GA_oZkHSw/default.jpg",
          "1:27:18",
          "2023-02-28",
          "LINQ Aggregate Functions,LINQ Sum Method,LINQ Max Method,LINQ Min Method,LINQ Average Method,LINQ Count Method,LINQ Quantifiers Operators,LINQ All Method,LINQ Any Method,LINQ Contains Method,What are LINQ Aggregate Functions in C#?,What is LINQ Sum in C#?,What is LINQ Max in C#?,What is LINQ All in C#?,What is LINQ Any in C#?,What is LINQ Contains in C#?,What are LINQ Quantifier Methods in C#?,What is LINQ Count in C#?,What is LINQ Average in C#?"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "5MckNJmlaCY",
          "LINQ Training Part - 6 | LINQ Deferred vs Immediate Execution | LINQ GroupBy ToLookup | LINQ Joins",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Training Part  6  LINQ Deferred vs Immediate Execution  LINQ GroupBy Method  LINQ ToLookup Method  LINQ Joins  LINQ Inner JoinsLINQ Deferred Execution vs Immediate ExecutionWhat is LINQ Deferred ExecutionWhat is LINQ Immediate ExecutionDifferences Between Deferred Execution and Immediate Execution in LINQText Document Link httpsdotnettutorialsnetlessondeferredexecutionvsimmediateexecutioninlinqLINQ GroupBy MethodWhat is LINQ GroupBy Method in CMultiple Examples to Understand LINQ GroupBy Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessongroupbyinlinqLINQ GroupBy Method with Multiple KeysText Document Link httpsdotnettutorialsnetlessongroupbymultiplekeysinlinqLINQ ToLookup MethodWhat is LINQ ToLookup in CMultiple Examples to Understand LINQ ToLookup Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqtolookupoperatorLINQ JoinsText Document Link httpsdotnettutorialsnetlessonlinqjoinsincsharpLINQ Inner JoinsWhat is LINQ Join Method in CMultiple Examples to Understand LINQ Join Method with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessoninnerjoininlinqLINQGroupByMethod LINQToLookupMethod LINQJoins linqtutorials linqcsharp dotnettutorials linqonlinetraining linqbypranaya",
          "https://i.ytimg.com/vi/5MckNJmlaCY/default.jpg",
          "2:4:4",
          "2023-02-28",
          "LINQ Deferred Execution vs Immediate Execution,LINQ GroupBy Method,LINQ ToLookup Method,LINQ Joins,LINQ Inner Joins,What is LINQ Deferred Execution,What is LINQ Immediate Execution,What is LINQ GroupBy Method in C#,LINQ GroupBy Method with Multiple Keys,What is LINQ ToLookup in C#,What is LINQ Join Method in C#,Differences Between Deferred Execution and Immediate Execution in LINQ"
      );
        insert INTO
        video (
          ytId,
          title,
          playlistTitle,
          playlistId,
          description,
          thumbnails,
          duration,
          publishDate,
          tags
      )
      VALUES (
          "bnib1XpaGTk",
          "LINQ Training Part - 7 | LINQ Join with Multiple Sources | Group Join | Left Join | Full Outer Join",
          "LINQ Training",
          "PLNgSFZ9yC06JXbAPfTqWvrGc9uSoIMIE9",
          "LINQ Training Part  7  LINQ Join with Multiple Data Sources  LINQ Group Join  LINQ Left Join  Full Outer Join in LINQ  LINQ Cross JoinLINQ Join with Multiple Data SourcesMultiple Examples to Understand LINQ Join with Multiple Data Sources with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqjoinwithmultipledatasourcesLINQ Group JoinWhat is LINQ Group Join in CMultiple Examples to Understand LINQ Group Join with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqgroupjoinLINQ Left JoinWhat is LINQ Left Join in CMultiple Examples to Understand LINQ Left Join with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonleftouterjoininlinqFull Outer Join in LINQWhat is LINQ Full Outer Join in CMultiple Examples to Understand LINQ Full Outer Join with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonfullouterjoininlinqLINQ Cross JoinWhat is LINQ Cross Join in CMultiple Examples to Understand LINQ Cross Join with Query and Method Syntax using Primtive as well as Complex Data TypeText Document Link httpsdotnettutorialsnetlessonlinqcrossjoinlinqgroupjoin linqleftouterjoin linqrightouterjoin linqfulljoin linqcrossjoin linqtutorials linqcsharp dotnettutorials linqonlinetraining linqbypranaya",
          "https://i.ytimg.com/vi/bnib1XpaGTk/default.jpg",
          "1:57:23",
          "2023-02-28",
          "LINQ Join with Multiple Data Sources,LINQ Group Join,LINQ Left Join,Full Outer Join in LINQ,LINQ Cross Join,Multiple Examples to Understand LINQ Group Join with Query and Method Syntax,Multiple Examples to Understand LINQ Left Join,Multiple Examples to Understand LINQ Full Outer Join,Examples to Understand LINQ Cross Join with Query and Method Syntax,Examples to Understand LINQ Join with Multiple Data Sources,What is LINQ Group Join in C#,What is LINQ Left Join in C#"
      );