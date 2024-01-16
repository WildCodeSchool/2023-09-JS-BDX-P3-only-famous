import { createContext, useContext, useMemo, useState } from "react";
import axios from "axios";
import PropTypes from "prop-types";

const videoContext = createContext();
export default function VideoContextProvider({ children }) {
  const [videos, setVideos] = useState([]);

  async function getVideoListFromPlaylist(playlistId) {
    const { data } = await axios.get("http://localhost:3310/api/playlist", {
      params: { playlistId },
    });
    setVideos(data.rows);
  }

  async function deleteVideoBId(ytId) {
    const { data } = await axios.delete(
      `http://localhost:3310/api/video/${ytId}`
    );
    if (data.success) {
      const result = videos.filter((ele) => ele.ytId !== ytId);
      setVideos([...result]);
    }
  }

  const adminData = useMemo(
    () => ({ videos, setVideos, getVideoListFromPlaylist, deleteVideoBId }),
    [videos, setVideos, getVideoListFromPlaylist, deleteVideoBId]
  );

  return (
    <videoContext.Provider value={adminData}>{children}</videoContext.Provider>
  );
}
VideoContextProvider.propTypes = {
  children: PropTypes.node.isRequired,
};
export const useVideoContext = () => useContext(videoContext);
