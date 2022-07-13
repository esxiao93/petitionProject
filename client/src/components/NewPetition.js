import React, {useState} from 'react';
import {useParams} from 'react-router-dom';
import { Text, Group, useMantineTheme, Paper, Button, TextInput } from '@mantine/core';
import { useNavigate } from "react-router-dom";

function NewPetition() {

  let { congressionalMemberId } = useParams();
  let navigate = useNavigate();
  
  const [petition, setPetition] = useState([])
  const [title, setTitle] = useState("")
  const [description, setDescription] = useState("")
  const [signature, setSignature] = useState(0)

  function handleNewPetitionSubmit(e){
    e.preventDefault()
    const newPetition = {
        title: title,
        description: description,
        signature: signature,
        congressional_member_id: +congressionalMemberId
    }
  
    fetch('/petitions',{
      method:'POST',
      headers:{'Content-Type': 'application/json'},
      body:JSON.stringify(newPetition)
    })
    .then(res => res.json())
    .then( data => {
      setPetition([...petition,data])
      navigate(`/congressional_members/${congressionalMemberId}`)
    });
}




  const theme = useMantineTheme();

  const secondaryColor = theme.colorScheme === 'dark'
    ? theme.colors.dark[1]
    : theme.colors.gray[7];


  return (
    <div style={{ width: "flex", margin: 'auto' }}>
    <Paper shadow="xl" p="md" withBorder>
    <form onSubmit={handleNewPetitionSubmit}>
      <Group position="apart" style={{ marginBottom: 5, marginTop: theme.spacing.xm }}>
        <TextInput 
              placeholder="Enter Title of Petition"
              label="Title - Write a hook to grab people's attention"
              value ={title}
              onChange={(e) => setTitle(e.target.value)}
        />
        <TextInput 
              placeholder="Enter Description of Petition"
              label="Description - Tell everyone why this is important"
              value ={description}
              onChange={(e) => setDescription(e.target.value)}
        />
                <TextInput 
              placeholder="Enter District of Petition"
              label="District"
              value ={congressionalMemberId}
              readOnly
        />
      </Group>
        <Button type="submit">Submit Petition</Button>
      </form>
    </Paper>
  </div>
  )
}

export default NewPetition