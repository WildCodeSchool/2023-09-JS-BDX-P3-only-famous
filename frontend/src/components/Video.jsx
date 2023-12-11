import ReactPlayer from "react-player/youtube";

export default function Video() {
  return (
    <div>
      <ReactPlayer url="./src/assets/butterfly.mp4" />
      <img src="./src/assets/favicon.svg" alt="" />
    </div>
  );
}
