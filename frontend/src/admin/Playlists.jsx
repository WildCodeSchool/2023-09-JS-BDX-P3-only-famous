import { useEffect } from "react";
import { useVideoContext } from "../context/videoContext";
import SingleLinePlaylist from "../components/playlist/SingleLinePlaylist";
import PlaylistTopLine from "../components/playlist/PlaylistTop";
import TaskBarPlaylist from "../components/playlist/TaskBarPlaylist";

export default function Playlists() {
  const { playlists, getAllPlaylists } = useVideoContext();

  useEffect(() => {
    getAllPlaylists();
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
    </>
  );
}