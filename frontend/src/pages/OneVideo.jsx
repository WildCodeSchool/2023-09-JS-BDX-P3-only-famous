import { AspectRatio, Container } from "@mantine/core";
import Accordion from "../components/Accordion";
import { useUserContext } from "../context/UserContext";

export default function OneVideo() {
  const { linkToVideo } = useUserContext();
  const fullLink = `https://www.youtube.com/embed/${linkToVideo.link}`;
  return (
    <Container size="lf">
      <AspectRatio ratio={16 / 9} maw={1200} mx="auto">
        <iframe
          src={fullLink}
          title="YouTube video player"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowFullScreen
        />
      </AspectRatio>
      <div className="SingleVideo-details">
        <div className="SingleVideo-title-date">
          <h3>{linkToVideo.title}</h3>
          <h5>Publié le 23-12-2023</h5>
        </div>
        <Accordion description={linkToVideo.description} />
      </div>
    </Container>
  );
}
