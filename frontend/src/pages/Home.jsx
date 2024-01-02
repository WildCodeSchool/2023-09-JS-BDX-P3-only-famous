import Carroussel from "../components/Carroussel";
import Keyborad from "../components/Keyboard";

function Home() {
  return (
    <div>
      {/* <Map /> */}
      <Keyborad />
      <Carroussel playlistId="PLjwdMgw5TTLUEOKPg5Z5TgwAOeWkjGL69" />
      <Carroussel playlistId="PLNgSFZ9yC06Lj8ndCyoTjymTCAjG-pzFQ" />
      <Carroussel playlistId="PLjwdMgw5TTLUnvhOKLcpCG8ORQsfE7uB4" />
      <Carroussel playlistId="PLNgSFZ9yC06Ifg4MDVbu2gJLDI3cjhsJ5" />
    </div>
  );
}

export default Home;
