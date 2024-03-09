const { app, request } = require("./setup");

// Connexion avec un email valid
describe("GET /api/user", () => {
  it("should connect succefully", async () => {
    const newUser = {
      email: "mahdi.mcheik@hotmail.fr",
      password: "Olitec1@",
    };
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/user").send(newUser);
    // Assertions
    expect(response.status).toBe(200);
    expect(response.body).toBeInstanceOf(Object);
    expect(response.body.user.email).toEqual("mahdi.mcheik@hotmail.fr");
    expect(response.body.message).toEqual(`Bravo!!! Vous êtes connecté`);
  });
});
// connexion avec des mauvais identifiants
describe("GET /api/user", () => {
  it("should connect succefully", async () => {
    const newUser = {
      email: "mahdi.mcheik@hotmail.fr",
      password: "Olitec1@@",
    };
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/user").send(newUser);
    // Assertions
    expect(response.status).toBe(404);
    expect(response.body).toBeInstanceOf(Object);
    expect(response.body.user).toEqual(null);
    expect(response.body.message).toEqual(`Identifiants incorrects!!!`);
  });
});

// connexion sans email identifiants
describe("GET /api/user", () => {
  it("should connect succefully", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/user");
    // Assertions
    expect(response.status).toBe(404);
    expect(response.body).toBeInstanceOf(Object);
    expect(response.body.user).toEqual(null);
    expect(response.body.message).toEqual(`Identifiants incorrects!!!`);
  });
});

// add user
const randomUser = {
  firstname: "mahdi",
  lastname: "mcheik",
  birthday: "21-04-1986",
  isAdmin: 0,
  imgUrl: "",
  email: "mahdi.mcheik@hotmail.cof",
  password: "Olitec1@",
};
// inscription valide
describe("GET /api/user", () => {
  it("should connect succefully", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/users").send(randomUser);
    // Assertions
    expect(response.status).toBe(201);
  });
});
// inscription non-valide, email deja utilisé
describe("GET /api/user", () => {
  it("should connect succefully", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/users").send(randomUser);
    // Assertions
    expect(response.status).toBe(409);
    expect(response.body.message).toEqual("Email existant!!!");
  });
});

delete randomUser.isAdmin;
delete randomUser.imgUrl;
randomUser.email = "mahdi.mcheik@hotmail.cofl";

// inscription non-valide sans imgurl et isadmin
describe("GET /api/user", () => {
  it("should add user without isadmin", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/users").send(randomUser);
    // Assertions
    expect(response.status).toBe(409);
  });
});
