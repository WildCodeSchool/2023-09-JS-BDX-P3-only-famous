CREATE TABLE
    user (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        firstname VARCHAR(255) NOT NULL,
        lastname VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        birthday VARCHAR(255) NOT NULL,
        password VARCHAR(255) NOT NULL,
        isAdmin BOOLEAN DEFAULT false,
        isActive BOOLEAN DEFAULT false,
        imgUrl VARCHAR(255) NULL
    );

CREATE TABLE
    video (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        ytId VARCHAR(255) NOT NULL,
        title VARCHAR(255) NOT NULL,
        playlistTitle VARCHAR(255) NOT NULL,
        playlistId VARCHAR(255) NOT NULL,
        description TEXT NULL,
        thumbnails VARCHAR(255) NOT NULL,
        duration VARCHAR(50) NOT NULL,
        publishDate DATE NOT NULL,
        tags TEXT NULL
    );

CREATE TABLE
    playlist (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
        playlistId VARCHAR(255) NOT NULL,
        playlistTitle VARCHAR(255) NOT NULL,
        category VARCHAR(255) NOT NULL
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