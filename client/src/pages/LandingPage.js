import React from 'react';
import LandingCongressionalMemberCard from '../components/LandingCongressionalMemberCard'
import { Grid, Paper, Title, Space } from '@mantine/core';

function LandingPage ({congressionalMembers}) {

  const congressionalIndividuals = congressionalMembers.map((congressionalMember) => {
    return <LandingCongressionalMemberCard 
      key={congressionalMember.id} 
      id={congressionalMember.id} 
      name={congressionalMember.name}
      bio={congressionalMember.bio}
      districtNUM={congressionalMember.districtNUM}
      political_party={congressionalMember.political_party}
      years_in_office={congressionalMember.years_in_office}
      image_url={congressionalMember.image_url}
      />
  });


  return (
    <>
    <Paper p="xs" justify="center">
      <Title align="left" order={2} >NEW YORK CONGRESSIONAL MEMBERS</Title>
    </Paper>
    <Space h={8}/>
      <Grid justify="center" gutter={1}>
        {congressionalIndividuals}
      </Grid>
    </>
  )
}

export default LandingPage;