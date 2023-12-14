import React from "react";

function Admin() {
  return (
    <div className="admin_container">
      <div className="filtre_recherche">
        <ul>
          <li>
            <button type="button">Utilisateurs</button>
          </li>
          <li>
            <button type="button">Videos</button>
          </li>
          <li>
            <input type="search" />
          </li>
        </ul>
      </div>
      <div className="users_container">
        <div className="users_infos">
          <ul>
            <li>Id</li>
            <li>Nom</li>
            <li>Prénom</li>
            <li>Date de naissance</li>
            <li>Mail</li>
            <li>Date d'inscription</li>
            <li>Admin</li>
          </ul>
        </div>
        {/*  <div className="users_data">
          {usersData.map((item) => (
            <UserCard firstname={item.firstname} lastname={item.lastname} />
          ))}
        </div> */}
      </div>
    </div>
  );
}

export default Admin;