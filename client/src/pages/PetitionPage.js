import React, {useState, useEffect} from 'react'
import { useParams } from 'react-router-dom'
import { useNavigate } from "react-router-dom";
import { Text, Group, useMantineTheme, Paper, Button } from '@mantine/core';
import { User } from 'tabler-icons-react';

function PetitionPage({user}) {

  let {id} = useParams();
  let navigate = useNavigate();

  const [petition, setPetition] = useState([])
  const [signature, setSignature] = useState(null)

  const [matchedPetiton, setMatchedPetition] = useState(null)
  // const [isClicked, setIsClicked] = useState(false)
  // const [title, setTitle] = useState("")
  // const [description, setDescription] = useState("")


  useEffect(() => {
    fetch(`/petitions/${id}`)
    .then(response => response.json())
    .then(petition => {
      setPetition(petition)
      setSignature(petition.signature)
    })
    .catch(error => console.log(error))
    setPetitionCounter()
  },[])

  console.log(petition.signature)

  function handleSignatureClick() {
    // setSignature(prevSignature => prevSignature + 1)
    // setIsClicked(!isClicked)
    fetch(`/petitions/${id}`,{
      method: 'PATCH',
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        // title: title,
        // description: description,
        signature: signature + 1
      }),
    })
    .then(response => response.json())
    window.location.reload()
    navigate(-1)
    };

    console.log(petition)

    function setPetitionCounter() {
      if (user.petitions.some(petition => petition.id === id)) {
        setMatchedPetition(user.petitions.find(petition => petition.id === id))
    } else {
        setMatchedPetition(null)
    }
    }

    console.log(user)
  


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
        {matchedPetiton ? (
          <Button onClick={handleSignatureClick} disabled>Sign Petition </Button>

        ) : (
          <Button onClick={handleSignatureClick} >Sign Petition </Button>          
        )}
    
          </Paper>
  </div>
  )
}

export default PetitionPage;