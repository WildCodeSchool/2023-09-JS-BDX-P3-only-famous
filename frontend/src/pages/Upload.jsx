function Upload() {
  return (
    <div className="upload_container">
      <h2>Importer une vidéo</h2>
      <img src="./src/assets/upload.svg" alt="logo react" />
      <ul className="informations_upload">
        <li>
          <h4>Titre</h4>
          <input type="text" placeholder="Entrer le titre ici" />
        </li>
        <li>
          <h4>Description</h4>
          <textarea type="text" placeholder="Entrer votre description ici" />
        </li>
        <li>
          <h4>Thème de la video</h4>
          <select type="text" placeholder="">
            <option value="option1">Nature</option>
            <option value="option2">Animaux</option>
            <option value="option3">Villes</option>
          </select>
        </li>
        <li>
          <h4>Tag</h4>
          <textarea type="text" placeholder="Entrer vos tags ici" />
        </li>
        <h4>Qui peut voir ma vidéo</h4>
        <select type="text" placeholder="">
          <option value="option1">Tout le monde</option>
          <option value="option2">Seulement les personnes inscrites</option>
          <option value="option3">Seulement moi</option>
        </select>
      </ul>
      <button type="button">Importer ma vidéo</button>
    </div>
  );
}

export default Upload;
