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
  it("should not connect succefully, bad mauvais identifiants", async () => {
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

// connexion sans body
describe("GET /api/user", () => {
  it("should not connect succefully", async () => {
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
  email: "mahdi.mcheik@hotmail.com",
  password: "Olitec1@",
};
// inscription valide
describe("POST /api/users", () => {
  it("should register succefully", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/users").send(randomUser);
    // Assertions
    expect(response.status).toBe(201);
  });
});
// inscription non-valide, email deja utilisé
describe("GET /api/users", () => {
  it("should not register succefully", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/users").send(randomUser);
    // Assertions
    expect(response.status).toBe(409);
    expect(response.body.message).toEqual("Email existant!!!");
  });
});

delete randomUser.isAdmin;
delete randomUser.imgUrl;
randomUser.email = "mahdi.mcheik@hotmail.com";

// inscription non-valide sans imgurl et isadmin
describe("GET /api/users", () => {
  it("should not register without admin and imgUrl", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).post("/api/users").send(randomUser);
    // Assertions
    expect(response.status).toBe(409);
  });
});

const token =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc0FkbWluIjowLCJmaXJzdG5hbWUiOiJtYWhkaSIsImxhc3RuYW1lIjoibWNoZWlrIiwiZW1haWwiOiJtYWhkaS5tY2hlaWtAaG90bWFpbC5jb20iLCJpYXQiOjE3MTAwNzYzMjMsImV4cCI6MTcxMDExMjMyM30.7GCg7hZdItAelqkJtEQ5CGfhKz56F6NNzOUGMtn2rDc";

// update description
describe("GET /api/updatedescription", () => {
  it("should update user", async () => {
    const response = await request(app)
      .post("/api/updatedescription")
      .set("Authorization", `Bearer ${token}`)
      .send({
        email: "mahdi.mcheik@hotmail.com",
        description: "Nouvelle description",
      });
    // Assertions
    expect(response.status).toBe(200);
    expect(response.body.message).toEqual("description actualisée!!!");
  });
});

// Delete without token
describe("GET /api/user", () => {
  it("should not delete user", async () => {
    // Send a GET request to the /api/user
    const response = await request(app).delete("/api/user").send({
      email: "mahdi.mcheik@hotmail.com",
    });
    // Assertions
    expect(response.status).toBe(401);
  });
});

// Delete with token
describe("GET /api/user", () => {
  it("should delete user", async () => {
    // Send a GET request to the /api/user
    const response = await request(app)
      .delete("/api/user")
      .set("Authorization", `Bearer ${token}`)
      .send({
        email: "mahdi.mcheik@hotmail.com",
      });
    // Assertions
    expect(response.status).toBe(202);
  });
});
