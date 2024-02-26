import { useEffect, useRef, useState } from "react";
import { Pagination } from "@mantine/core";
import { useVideoContext } from "../context/videoContext";
import SingleLinePlaylist from "../components/playlist/SingleLinePlaylist";
import PlaylistTopLine from "../components/playlist/PlaylistTop";
import TaskBarPlaylist from "../components/playlist/TaskBarPlaylist";

export default function Playlists() {
  const playListPerPage = useRef(5);
  const [activePage, setPage] = useState(1);
  const { playlists, category, getAllPlaylistsPagination, count } =
    useVideoContext();

  useEffect(() => {
    async function getData() {
      await getAllPlaylistsPagination(
        (activePage - 1) * playListPerPage.current,
        playListPerPage.current
      );
    }
    getData();
  }, [activePage, category]);

  return (
    <div className="playlists">
      <TaskBarPlaylist />
      <PlaylistTopLine />
      <div className="list-playlist">
        <div>
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
        </div>
        {playListPerPage.current < count && (
          <Pagination
            total={count / playListPerPage.current + 1}
            value={activePage}
            onChange={setPage}
            className="pages"
          />
        )}
      </div>
    </div>
  );
}
