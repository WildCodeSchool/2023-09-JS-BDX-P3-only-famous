import { useVideoContext } from "../../context/videoContext";

export default function Tab() {
  const { getAllPlaylistsByCategory } = useVideoContext();

  async function handleclick(e) {
    console.warn("test");
    await getAllPlaylistsByCategory(e.target.name);
    console.warn(e.target.name);
  }
  return (
    <div className="container-tab">
      <button
        className="item javascript"
        name="javascript"
        onClick={handleclick}
        type="button"
      >
        {" "}
      </button>
      <button
        className="item  dotnet"
        name="dotnet"
        onClick={handleclick}
        type="button"
      >
        {" "}
      </button>
      <button
        className="item php"
        name="php"
        onClick={handleclick}
        type="button"
      >
        {" "}
      </button>
      <button
        className="item angular"
        name="angular"
        onClick={handleclick}
        type="button"
      >
        {" "}
      </button>
      <button
        className="item react"
        name="react"
        onClick={handleclick}
        type="button"
      >
        {" "}
      </button>
    </div>
  );
}
