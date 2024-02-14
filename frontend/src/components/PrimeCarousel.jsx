import { useEffect, useState } from "react";
import axios from "axios";
import PropTypes from "prop-types";
import { Progress } from "@mantine/core";
import { Carousel } from "@mantine/carousel";
import VideoItem from "./VideoItem";

export default function PrimeCarousel({ playlistId }) {
  const [videos, setVideos] = useState([]);
  const [playlistTitle, setPlaylistTitle] = useState("");
  useEffect(() => {
    async function getData() {
      const { data } = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/api/playlist`,
        {
          params: { playlistId },
        }
      );
      if (data?.rows) {
        setVideos(data.rows);
        setPlaylistTitle(data.title);
      } else {
        setVideos([]);
        setPlaylistTitle("La playlist est vide ");
      }
    }
    getData();
  }, []);
  return (
    <>
      <h2 className="invisible-button h1-button">{playlistTitle}</h2>
      <Progress color="gray" value={100} />
      <Carousel
        withIndicators
        height={300}
        slideSize="33.333333%"
        slideGap="md"
        loop
        align="start"
        slidesToScroll={3}
        dragFree
      >
        {videos.map((item) => (
          <VideoItem
            title={item.title}
            duration={item.duration}
            imgUrl={item.thumbnails}
            publishDate={item.publishDate}
            link={item.ytId}
            description={item.description}
            tags={item.tags}
            key={item.title}
            isPublic={item.isPublic}
            playlistId={item.playlistId}
          />
        ))}
      </Carousel>
    </>
  );
}
PrimeCarousel.propTypes = {
  playlistId: PropTypes.string.isRequired,
};
