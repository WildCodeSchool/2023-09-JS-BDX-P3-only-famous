import { createContext, useContext, useMemo, useRef, useState } from "react";
import axios from "axios";
import PropTypes from "prop-types";

const videoContext = createContext();
export default function VideoContextProvider({ children }) {
  const [videos, setVideos] = useState([]);
  const [videoId, setVideoId] = useState("");
  const [searchedPlaylist, setSearchedPlaylist] = useState([]);

  const [category, setCategory] = useState("");

  const [playlists, setPlaylists] = useState([]);
  const [playlistsHome, setPlaylistsHome] = useState([
    { playlistId: "PLjwdMgw5TTLXgsTQE_1PpRkC_yX47ZcGV" },
    { playlistId: "PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5" },
    { playlistId: "PLTjRvDozrdlxzQet01qZBt-sRG8bbDggv" },
    { playlistId: "PLjwdMgw5TTLXP6JWACTxDqun0jJ5_sYvK" },
  ]);
  const [count, setcount] = useState(1);
  const [countVideos, setCountVideos] = useState(1);
  const [recommendedCarroussel, setRecommendedCaroussel] = useState([]);

  const video = useRef({});

  async function getVideoListFromPlaylist(playlistId) {
    const { data } = await axios.get(
      `${import.meta.env.VITE_BACKEND_URL}/api/playlist`,
      {
        params: { playlistId },
      }
    );
    setVideos(data.rows);
  }
  async function getAllVideos() {
    const { data } = await axios.get(
      `${import.meta.env.VITE_BACKEND_URL}/api/videos/20`
    );
    setVideos(data);
  }

  async function getAllVideosPagination(start, offset) {
    try {
      const { data } = await axios.get(
        `${
          import.meta.env.VITE_BACKEND_URL
        }/api/videos?start=${start}&offset=${offset}`
      );
      setVideos([...data.videos]);
      setCountVideos(data.count);
    } catch (err) {
      setVideos([]);
    }
  }

  async function runSearchVideo(ytId) {
    try {
      const { data } = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/api/video/${ytId}`
      );
      setVideos([...data.rows]);
    } catch (err) {
      setVideos([]);
    }
  }

  async function deleteVideoBId(ytId) {
    const { data } = await axios.delete(
      `${import.meta.env.VITE_BACKEND_URL}/api/video/${ytId}`
    );
    if (data.success) {
      const result = videos.filter((ele) => ele.ytId !== ytId);
      setVideos([...result]);
    }
  }

  async function getAllPlaylists() {
    try {
      const { data } = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/api/playlists`
      );

      setPlaylists([...data.playlists]);
    } catch (err) {
      setPlaylists([]);
    }
  }

  async function getAllPlaylistsPagination(start, offset) {
    try {
      const { data } = await axios.get(
        `${
          import.meta.env.VITE_BACKEND_URL
        }/api/playlistspagination?start=${start}&offset=${offset}`
      );
      setPlaylists([...data.playlists]);
      setcount(data.count);
    } catch (err) {
      setPlaylists([]);
    }
  }

  async function getAllPlaylistsByCategory(category1) {
    try {
      const { data } = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/api/searchedplaylists/${category1}`
      );
      setSearchedPlaylist([...data.playlists]);
      setPlaylists([...data.playlists]);
      setPlaylistsHome([...data.playlists]);
    } catch (err) {
      setSearchedPlaylist([]);
    }
  }

  async function getAllPlaylistsByCategoryPagination(category1, start, offset) {
    try {
      const { data } = await axios.get(
        `${
          import.meta.env.VITE_BACKEND_URL
        }/api/playlists/${category1}?start=${start}&offset=${offset}`
      );
      setPlaylistsHome([...data.playlists]);
      setPlaylists([...data.playlists]);
    } catch (err) {
      setPlaylistsHome([]);
      setPlaylists([]);
    }
  }

  async function updateVideoById(ytId, { isHidden, isPublic }) {
    const { data } = await axios.patch(
      `${import.meta.env.VITE_BACKEND_URL}/api/video/${ytId}`,
      { isHidden, isPublic }
    );

    return data;
  }

  async function deletePlaylistById(playlistId) {
    const { data } = await axios.delete(
      `${import.meta.env.VITE_BACKEND_URL}/api/playlists/${playlistId}`
    );
    if (data.success) {
      const result = playlists.filter((ele) => ele.playlistId !== playlistId);
      setPlaylists([...result]);
    }
  }

  async function updatePlaylistById(playlistId, newPlaylist) {
    const { data } = await axios.patch(
      `${import.meta.env.VITE_BACKEND_URL}/api/playlists/${playlistId}`,
      newPlaylist
    );
    return data;
  }

  const adminData = useMemo(
    () => ({
      videos,
      setVideos,
      countVideos,
      setCountVideos,
      getVideoListFromPlaylist,
      getAllVideosPagination,
      deleteVideoBId,
      updateVideoById,
      video,
      runSearchVideo,
      playlists,
      setPlaylists,
      getAllPlaylists,
      playlistsHome,
      setPlaylistsHome,
      getAllPlaylistsByCategory,
      deletePlaylistById,
      updatePlaylistById,
      getAllPlaylistsPagination,
      count,
      setcount,
      recommendedCarroussel,
      setRecommendedCaroussel,
      getAllPlaylistsByCategoryPagination,
      category,
      setCategory,
      videoId,
      setVideoId,
      getAllVideos,
      searchedPlaylist,
    }),
    [
      videos,
      setVideos,
      getVideoListFromPlaylist,
      getAllVideosPagination,
      deleteVideoBId,
      updateVideoById,
      video,
      runSearchVideo,
      playlists,
      setPlaylists,
      getAllPlaylists,
      playlistsHome,
      setPlaylistsHome,
      getAllPlaylistsByCategory,
      deletePlaylistById,
      updatePlaylistById,
      getAllPlaylistsPagination,
      count,
      setcount,
      getAllPlaylistsByCategoryPagination,
      videoId,
      setVideoId,
      getAllVideos,
      searchedPlaylist,
      countVideos,
      setCountVideos,
    ]
  );

  return (
    <videoContext.Provider value={adminData}>{children}</videoContext.Provider>
  );
}
VideoContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};
export const useVideoContext = () => useContext(videoContext);
