import React, {useState, useEffect} from 'react'
import { useParams } from 'react-router-dom'
import { useNavigate } from "react-router-dom";
import { Text, Group, useMantineTheme, Paper, Button } from '@mantine/core';
import { User } from 'tabler-icons-react';

function PetitionPage({user}) {

  // let {id} = useParams();
  const params = useParams()
  let navigate = useNavigate();

  const [petition, setPetition] = useState([])
  const [signature, setSignature] = useState(null)
  const [matchedPetiton, setMatchedPetition] = useState(false)
  // const [title, setTitle] = useState("")
  // const [description, setDescription] = useState("")

  useEffect(() => {

    // fetch(`/petitions/${params.id}`)
    // .then(response => response.json())
    // .then(petition => {
    //   setPetition(petition)
    //   setSignature(petition.signature)
    // })
    // .catch(error => console.log(error))
    
    const getPetitions = async () => {
      const response = await fetch(`/petitions/${params.id}`)
      const petition = await response.json()
      if(response.ok) {
        setPetition(petition)
        setSignature(petition.signature)
      } else {
        console.log("not loaded")
      } 
    }

    getPetitions()
    setPetitionCounter()

  },[])

  function handleSignatureClick() {
    // Clicking Sign Petition create a new data in the UserPetition table
    fetch(`/user_petitions`,{
      method: 'POST',
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        user_id: user.id,
        petition_id: params.id
      }),
    })
    .then(response => response.json())
    .then(data => console.log(data))
    
    setMatchedPetition(true)

    setSignature(prevSignature => prevSignature + 1)
    fetch(`/petitions/${params.id}`,{
      method: 'PATCH',
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        signature: signature + 1
      }),
    })
    .then(response => response.json())
    window.location.reload()
    navigate(-1)
  };

  function setPetitionCounter() {

    if (user.user_petitions.some(petition => petition.petition_id === parseInt(params.id))) {
      setMatchedPetition(true)
    } else {
      setMatchedPetition(false)
    }
  }


  const theme = useMantineTheme();

  const secondaryColor = theme.colorScheme === 'dark'
    ? theme.colors.dark[1]
    : theme.colors.gray[7];

  return (
    <div style={{ width: "680", margin: 'auto' }}>
    <Paper shadow="xl" p="md" withBorder>
      <Group position="apart" style={{ marginBottom: 5, marginTop: theme.spacing.xm }}>
        <Text weight={500}>
          {petition.title}
        </Text>
        <Text size="sm" style={{ color: secondaryColor, lineHeight: 1.5 }}>
          {petition.description}
        </Text>
      </Group>
        <Text>
          {petition.signature} people have signed this petition
        </Text>
        {matchedPetiton ?
          <Button onClick={handleSignatureClick} >Sign Petition </Button>
          // <h1>matched on</h1>
        : 
          <Button onClick={handleSignatureClick} disabled>Sign Petition </Button>
          // <h1>matched off</h1>
        }
    
          </Paper>
  </div>
  )
}

export default PetitionPage;