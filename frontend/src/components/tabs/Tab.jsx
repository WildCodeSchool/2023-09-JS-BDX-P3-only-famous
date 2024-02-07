import { useVideoContext } from "../../context/videoContext";

export default function Tab() {
  const { getAllPlaylistsByCategory } = useVideoContext();

  async function handleclick(e) {
    await getAllPlaylistsByCategory(e.target.name);
  }

  const languages = [
    {
      id: 1,
      name: "javascript",
      description: "lorem ipsum",
    },
    {
      id: 2,
      name: "dotnet",
      description: "lorem ipsum",
    },
    {
      id: 3,
      name: "php",
      description: "lorem ipsum",
    },
    {
      id: 4,
      name: "angular",
      description: "lorem ipsum",
    },
    {
      id: 5,
      name: "react",
      description: "lorem ipsum",
    },
    {
      id: 6,
      name: "python",
      description: "lorem ipsum",
    },
    {
      id: 7,
      name: "rust",
      description: "lorem ipsum",
    },
  ];
  return (
    <div className="container-tab">
      {languages.map((ele) => (
        <button
          className={`item ${ele.name}`}
          name={ele.name}
          onClick={handleclick}
          type="button"
          key={ele.id}
        >
          {" "}
        </button>
      ))}
    </div>
  );
}
