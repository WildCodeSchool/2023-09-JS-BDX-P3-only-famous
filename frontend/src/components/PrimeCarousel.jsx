import { useEffect, useState } from "react";
import axios from "axios";
import PropTypes from "prop-types";
import { Button, Progress } from "@mantine/core";
import { Carousel } from "@mantine/carousel";
import VideoItem from "./VideoItem";

export default function PrimeCarousel({ playlistId }) {
  const [videos, setVideos] = useState([]);
  const [playlistTitle, setPlaylistTitle] = useState("");
  useEffect(() => {
    async function getData() {
      const { data } = await axios.get("http://localhost:3310/api/playlist", {
        params: { playlistId },
      });
      setVideos(data.rows);
      setPlaylistTitle(data.title);
    }
    getData();
  }, []);
  return (
    <>
      <Button variant="filled" className="playlist-title" size="xl">
        {playlistTitle}
      </Button>
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
          />
        ))}
      </Carousel>
    </>
  );
}
PrimeCarousel.propTypes = {
  playlistId: PropTypes.string.isRequired,
};
