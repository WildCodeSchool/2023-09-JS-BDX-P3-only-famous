import { AspectRatio, Button, Container } from "@mantine/core";
import { MdFavorite } from "react-icons/md";
import Accordion from "../components/Accordion";
import { useUserContext } from "../context/UserContext";

export default function OneVideo() {
  const { linkToVideo, user, favoritePlaylist } = useUserContext();
  const fullLink = `https://www.youtube.com/embed/${linkToVideo.link}`;
  return (
    <Container size="fluid">
      <AspectRatio ratio={16 / 9} maw={2000} mx="auto" className="yt-video">
        <iframe
          src={fullLink}
          title="YouTube video player"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowFullScreen
        />
      </AspectRatio>
      <div className="SingleVideo-details">
        <div className="SingleVideo-title-date">
          <div>
            <h3>{linkToVideo.title}</h3>
            <h5>Publié le 23-12-2023</h5>
          </div>
          {user.isConnected && (
            <Button className="invisible-button">
              {" "}
              <MdFavorite
                className={`like-icon ${
                  !favoritePlaylist.includes(linkToVideo.playlistId)
                    ? "not-liked"
                    : "liked"
                } `}
              />
            </Button>
          )}
        </div>
        <Accordion description={linkToVideo.description} />
      </div>
    </Container>
  );
}
