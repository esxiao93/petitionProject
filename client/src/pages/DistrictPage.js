import React, {useState, useEffect} from 'react';
import {useParams} from 'react-router-dom';
import { Card, Button } from '@mantine/core';
import { Link } from 'react-router-dom';
import KeyIssueCard from '../components/KeyIssueCard';
import DistrictPetition from '../components/DistrictPetition';
import DistrictCongressionalMemberCard from '../components/DistrictCongressionalMemberCard';

function DistrictPage(props) {
  // console.log(props)
  let {id} = useParams();

//INITIAL STATEs
  const [congressionalMembers, setCongressionalMembers] = useState({
    petitions: [{title:'', description:'', signature: ''}], 
    key_issues: [{title:'', description:''}]
  });
  const [petitions, setPetitions] = useState([]);
  const [keyIssues, setKeyIssues] = useState([]);

//Fetching individual congressional members to render nested data
  useEffect(() => {
    fetch(`/congressional_members/${id}`)
    .then(response => response.json())
    .then(congressional_members => {
      setCongressionalMembers(congressional_members)
      setPetitions(congressional_members.petitions)
      setKeyIssues(congressional_members.key_issues)
    })
    .catch(error => console.log(error))
  },[])

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

  

  // console.log(congressional_members.petitions.signature)

//Mapping through key_issues by individual congressional_members to render
  const keyIssueItems = keyIssues.map((keyIssue) => {
    return <KeyIssueCard
      key={keyIssue.id} 
      id={keyIssue.id} 
      title={keyIssue.title}
      description={keyIssue.description}
      />
  });

//Mapping through petitions by individual congressional_members to render
  const petitionItems = petitions.map((petition) => {
    return <DistrictPetition
      key={petition.id}
      id={petition.id}
      title={petition.title}
      description={petition.description}
      signature={petition.signature}
      onDelete={handleDelete}
      canView={props.user.congressional_member_id == petition.congressional_member_id}
    />
  })

  return (
    <>
        <DistrictCongressionalMemberCard />
        <div style={{ width: 900, margin: 'auto' }}>
          <br></br>
          <br></br>
          <Link to={`/new_petition/${id}`} >
          {props.user.district == id ?
            <Button>
            Create a New Petition
          </Button>: null}
          </Link>
          {petitionItems}
          <br></br>
            <Card>
              {keyIssueItems}
            </Card>
        </div>
    </>
  )
}

export default DistrictPage;
