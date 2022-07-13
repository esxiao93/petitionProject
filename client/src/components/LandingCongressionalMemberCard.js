import React from 'react';
import { Card, Image, Text, Button, Group, useMantineTheme, Space } from '@mantine/core';
import { Link } from "react-router-dom";

function LandingCongressionalMemberCard({id, name, bio, districtNUM, political_party, years_in_office, image_url}) {
  
    const theme = useMantineTheme();

  const secondaryColor = theme.colorScheme === 'dark'
    ? theme.colors.dark[1]
    : theme.colors.gray[7];


  return (
    <>
    <div style={{ width: 340, margin: 'auto' }}>
      <Space h={35}/>
      <Card shadow="sm" p="lg">
        <Card.Section>
          <Image src={image_url} height={360} alt="congressionalMembers" />
        </Card.Section>

        <Group position="apart" style={{ marginBottom: 5, marginTop: theme.spacing.sm }}>
          <Text weight={500}>{name}</Text>
        </Group>

        <Text size="sm" style={{ color: secondaryColor, lineHeight: 1.5 }}>
            {political_party}
            <br></br>
            {years_in_office}
        </Text>
        <Link to={`/congressional_members/${id}`} >
            <Button variant="light" color="blue" fullWidth style={{ marginTop: 14 }}>
                VIEW DISTRICT {districtNUM}
            </Button>
        </Link>
      </Card>
    </div>
    </>
  )
}

export default LandingCongressionalMemberCard;