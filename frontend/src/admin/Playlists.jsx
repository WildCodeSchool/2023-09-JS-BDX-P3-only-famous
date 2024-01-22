import { useEffect } from "react";
import { useVideoContext } from "../context/videoContext";
import SingleLinePlaylist from "../components/SingleLinePlaylist";

export default function Playlists() {
  const { playlists, getAllPlaylists } = useVideoContext();

  useEffect(() => {
    getAllPlaylists();
  }, []);
  return (
    <>
      {playlists.map((ele) => (
        <h2>
          <SingleLinePlaylist
            playlistTitle={ele.playlistTitle}
            category={ele.category}
          />
        </h2>
      ))}
    </>
  );
}
