import React from "react";
import ReactDOM from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import "mdb-react-ui-kit/dist/css/mdb.min.css";
import "@fortawesome/fontawesome-free/css/all.min.css";

import App from "./App";
import Register from "./pages/Register";
import Connexion from "./pages/Connexion";
import Upload from "./pages/Upload";
import Home from "./pages/Home";
import Admin from "./pages/Admin";
import OneVideo from "./pages/OneVideo";

// async function timeOut(time = 3000){
//   setTimeout(() => {
//     console.log('timeout done ');
//   }, time);
// }

const router = createBrowserRouter([
  {
    element: <App />,
    path: "/",
    children: [
      {
        path: "/",
        element: <Home />,
      },
      {
        path: "/onevideo",
        element: <OneVideo title="my title" date="21-04-1986" />,
      },
      {
        path: "/inscription",
        element: <Register />,
      },
      {
        path: "/connexion",
        element: <Connexion />,
      },
      {
        element: <Upload />,
        path: "/upload",
      },
      {
        element: <Admin />,
        path: "/admin",
      },
    ],
  },
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
