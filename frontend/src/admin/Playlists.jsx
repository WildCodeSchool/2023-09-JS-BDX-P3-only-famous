import { useEffect, useRef, useState } from "react";
import { useVideoContext } from "../context/videoContext";
import SingleLinePlaylist from "../components/playlist/SingleLinePlaylist";
import PlaylistTopLine from "../components/playlist/PlaylistTop";
import TaskBarPlaylist from "../components/playlist/TaskBarPlaylist";

export default function Playlists() {
  const playListPerPage = useRef(5);
  const [activePage] = useState(1);
  const { playlists, getAllPlaylistsByCategoryPagination, category } =
    useVideoContext();

  useEffect(() => {
    async function getData() {
      await getAllPlaylistsByCategoryPagination(
        category,
        (activePage - 1) * playListPerPage.current,
        playListPerPage.current
      );
    }
    getData();
  }, [activePage, category]);

  return (
    <>
      <TaskBarPlaylist />
      <PlaylistTopLine />
      {playlists.map((ele, index) => (
        <h2 key={ele.playlistId}>
          <SingleLinePlaylist
            playlistId={ele.playlistId}
            playlistTitle={ele.playlistTitle}
            category={ele.category}
            index={index}
          />
        </h2>
      ))}
    </>
  );
}
