import React from 'react'
import { Text, Group, useMantineTheme, Paper } from '@mantine/core';

function KeyIssueCard({id, title, description}) {


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
      </Paper>
    </div>
  )
}

export default KeyIssueCard