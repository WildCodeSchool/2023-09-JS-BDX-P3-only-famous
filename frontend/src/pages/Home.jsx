import { useEffect, useState } from "react";
import axios from "axios";
import Carroussel from "../components/Carroussel";
import Map from "../components/Map";

function Home() {
  const [videos, setVideos] = useState([]);
  const [playlistTitle, setPlaylistTitle] = useState([]);
  useEffect(() => {
    async function getData() {
      const { data } = await axios.get("http://localhost:3310/api/playlist", {
        params: { playlistId: "PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" },
      });
      setVideos(data.rows);
      setPlaylistTitle(data.title);
    }
    getData();
  }, []);
  return (
    <div>
      <Map />
      {videos && <Carroussel videoItems={videos} titre={playlistTitle} />}
      {/* <Carroussel videoItems={videoItems} titre="Villes" /> */}
    </div>
  );
}

export default Home;
