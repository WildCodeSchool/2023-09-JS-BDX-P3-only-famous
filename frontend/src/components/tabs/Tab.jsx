export default function Tab() {
  async function handleclick() {
    console.warn("test");
  }
  return (
    <div className="container">
      <button
        className="item javascript"
        name="javascrit"
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
