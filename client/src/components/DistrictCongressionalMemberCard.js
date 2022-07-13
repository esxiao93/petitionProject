import React, {useState, useEffect} from 'react';
import {useParams} from 'react-router-dom';
import { Card, Image, Text, Group, useMantineTheme, Button, Collapse, Grid, Paper, Title, Space, ScrollArea } from '@mantine/core';

function DistrictCongressionalMemberCard() {

  let {id} = useParams();
    
  const [congressionalMember, setCongressionalMember] = useState({
    id: "",
    name: "",
    bio: "",
    districtNUM: "",
    political_party: "",
    years_in_office: "",
    image_url: "",
    district: [{district: "", user_id: "", congressional_member_id: ""}]
  })
    
  useEffect(() => {
    fetch(`/congressional_members/${id}`)
    .then(response => response.json())
    .then(congressionalMember => setCongressionalMember(congressionalMember))
    .catch(error => console.log(error))
  }, [id])


  const theme = useMantineTheme();

  const secondaryColor = theme.colorScheme === 'dark'
    ? theme.colors.dark[1]
    : theme.colors.gray[7];
  
  return (
    <>
      <Paper p="md" justify="center">
        <Title align="Center" order={2} >DISTRICT {congressionalMember.districtNUM}</Title>
      </Paper>

      <Space h={50}/>

      <Paper p="xs" justify="center">
      <Grid justify="center" align="center">
        <Grid.Col span={4}>
          <div style={{ width: 340, margin: 'auto' }}>
            <Card shadow="md" p="lg" withBorder>
              <Card.Section>
                <Image src={congressionalMember.image_url} height={360} alt="congressionalMember" />
              </Card.Section>

              <Group position="apart" style={{ marginBottom: 5, marginTop: theme.spacing.sm }}>
                <Text weight={500}>{congressionalMember.name}</Text>
              </Group>

              <Text size="sm" style={{ color: secondaryColor, lineHeight: 1.5 }}>
                {congressionalMember.political_party}
                <br></br>
                {congressionalMember.years_in_office}
              </Text>
            </Card>
          </div>
        </Grid.Col>

        <Grid.Col span={4}>
          {/* <Card withBorder> */}
          <ScrollArea style={{ height: 400, width: 600 }} offsetScrollbars>
            {congressionalMember.bio}
          </ScrollArea>
          {/* </Card> */}
        </Grid.Col>
      </Grid>
      </Paper>
    </>
  )
}

export default DistrictCongressionalMemberCard