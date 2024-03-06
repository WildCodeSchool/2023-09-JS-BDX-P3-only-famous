import React from "react";
import ReactDOM from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import { MantineProvider } from "@mantine/core";
import "./styles/_index.scss";
import axios from "axios";

import App from "./App";
import Connexion from "./pages/Connexion";
import Upload from "./pages/Upload";
import Home from "./pages/Home";
import Admin from "./pages/Admin";
import SingleVideoPage from "./pages/SingleVideoPage";
import UserContextProvider from "./context/UserContext";
import AdminContextProvider from "./context/AdminContext";
import RegisterUser from "./pages/RegisterUser";
import PageUser from "./pages/PageUser";
import ForgotPassword from "./pages/ForgotPassword";
import ResetPassword from "./pages/ResetPassword";
import UsersList from "./admin/UsersList";
import Videos from "./admin/Videos";
import VideoContextProvider from "./context/videoContext";
import AdminMain from "./admin/AdminMain";
import Playlists from "./admin/Playlists";
import VideoUpload from "./admin/VideoUpload";
import AddPlaylist from "./admin/AddPlaylist";

const router = createBrowserRouter([
  {
    loader: async () => {
      axios.defaults.headers.common = {
        Authorization: `Bearer ${localStorage.getItem("token") ?? ""}`,
      };

      let loaderData = null;

      // try {
      //   if (localStorage.getItem("token")) {
      //     const { data } = await axios.get(
      //       `${import.meta.env.VITE_BACKEND_URL}/api/getprofile`
      //     );
      //     loaderData = data;

      //   }
      // } catch (err) {
      //   console.error(err.message);
      // }
      loaderData = { isAdmin: 1 };
      return { loaderData };
    },
    element: (
      <VideoContextProvider>
        <UserContextProvider>
          <MantineProvider>
            <App />
          </MantineProvider>
        </UserContextProvider>
      </VideoContextProvider>
    ),
    path: "/",
    children: [
      {
        path: "/onevideo",
        element: <SingleVideoPage />,
      },
      {
        path: "/inscription",
        element: <RegisterUser />,
      },
      {
        path: "/connexion",
        element: <Connexion />,
      },
      {
        path: "/resetpassword",
        element: <ResetPassword />,
      },
      {
        element: <Upload />,
        path: "/upload",
      },
      {
        element: <PageUser />,
        path: "/user",
      },
      {
        element: <ForgotPassword />,
        path: "/fpassword",
      },
      {
        path: "/",
        element: <Home />,
      },
      {
        element: (
          <AdminContextProvider>
            <Admin />
          </AdminContextProvider>
        ),
        path: "/admin",
        children: [
          {
            path: "/admin/users",
            element: <UsersList />,
          },
          {
            path: "/admin/videos",
            element: <Videos />,
          },
          {
            path: "/admin/",
            element: <AdminMain />,
          },
          {
            path: "/admin/playlists",
            element: <Playlists />,
          },
          {
            path: "/admin/addplaylist",
            element: <AddPlaylist />,
          },
          {
            path: "/admin/upload",
            element: <VideoUpload />,
          },
        ],
      },
    ],
  },
]);

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
