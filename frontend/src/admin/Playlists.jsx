import { useEffect, useState } from "react";
import { Pagination } from "@mantine/core";
import { useVideoContext } from "../context/videoContext";
import SingleLinePlaylist from "../components/playlist/SingleLinePlaylist";
import PlaylistTopLine from "../components/playlist/PlaylistTop";
import TaskBarPlaylist from "../components/playlist/TaskBarPlaylist";

export default function Playlists() {
  const [activePage, setPage] = useState(1);
  const { playlists, getAllPlaylistsPagination, count } = useVideoContext();
  // getAllPlaylists,

  function handlechangePage(e) {
    setPage(e);
  }
  useEffect(() => {
    // console.log("lol", activePage);
    getAllPlaylistsPagination((activePage - 1) * 5, 5);
  }, [activePage]);

  useEffect(() => {
    getAllPlaylistsPagination(0, 5);
  }, []);
  return (
    <>
      <TaskBarPlaylist />
      <PlaylistTopLine />
      {playlists.map((ele) => (
        <h2>
          <SingleLinePlaylist
            playlistId={ele.playlistId}
            playlistTitle={ele.playlistTitle}
            category={ele.category}
          />
        </h2>
      ))}
      <Pagination
        value={activePage}
        onChange={(e) => handlechangePage(e)}
        total={Math.floor(count / 5)}
      />
    </>
  );
}
