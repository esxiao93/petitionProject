import React from 'react'
import { Link } from 'react-router-dom'
import { Text, Group, useMantineTheme, Paper, Button } from '@mantine/core';

function PetitionCard({id, title, description, signature, onDelete, canView}) {

  const theme = useMantineTheme();

  const secondaryColor = theme.colorScheme === 'dark'
    ? theme.colors.dark[1]
    : theme.colors.gray[7];
  
  return (
        <div style={{ width: "flex", margin: 'auto' }}>
      <Paper shadow="xl" p="md" withBorder>
        <Group position="apart" style={{ marginBottom: 5, marginTop: theme.spacing.xm }}>
          <Text weight={500}>
            {title}
          </Text>
          <Text size="sm" style={{ color: secondaryColor, lineHeight: 1.5 }}>
            {description}
          </Text>
        </Group>
        {
          canView ? 
          <span>
          <Text>
            {signature} signatures
          </Text>
          </span> : null }
          { canView ? <Button onClick={() => onDelete(id)}>Delete</Button> : null }
      </Paper>
    </div>
  )
}

export default PetitionCard;