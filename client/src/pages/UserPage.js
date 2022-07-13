import React, { useState, useEffect } from "react";
import PetitionCard from "../components/PetitionCard";

function UserPage(props) {
  console.log(props)
  const [petitions, setPetitions] = useState([]);

  useEffect(() => {
    fetch(`/petitions/${props.user.congressional_member_id}/congressional_member_petitions`)
      .then((response) => response.json())
      .then((result) => {
        setPetitions(result);
        // console.log(petitions);
      })
      .catch((error) => console.log(error));
  }, []);

  const handleDelete = (id) => {
    fetch(`/petitions/${id}`, {
      method: 'DELETE',
    }).then(response => {
      if(response.status == 204) {
        setPetitions((petition) => petition.filter((petition) => petition.id !== id))
      }
    })
    .catch(error => console.log(error))
  }

  const petitionItems = petitions.map((petition) => {
    return (
      <PetitionCard
        key={petition.id}
        id={petition.id}
        title={petition.title}
        description={petition.description}
        signature={petition.signature}
        onDelete={handleDelete}
        canView={props.user.congressional_member_id == petition.congressional_member_id}
      />
    );
  });

  return (
    <>
      <div style={{ width: 900, margin: "auto" }}>
        <h2>Petitions</h2>
        {petitionItems}
      </div>
    </>
  );
}

export default UserPage;
