import React, { useState } from 'react';
import { Navbar, Text, Title, Button, createStyles, Group, Code} from '@mantine/core';
import { Link} from 'react-router-dom';
import { useNavigate } from "react-router-dom";
import {
  Map,
  Phone,
  User,
  Logout,
} from 'tabler-icons-react';

function NavBarContainer({setUser, user}) {

  let navigate = useNavigate();

  const { classes, cx } = useStyles();

  function handleDistrictPage() {
    navigate('/')
  }

  function handleUserPage() {
    navigate('/user')
  }

  function handleContactUsPage() {
    navigate('/contactUs')
  }
  
  function handleLogout() {
    fetch("/logout", {
      method: "DELETE",
    })
    .then(() => {
      setUser(null)
    });
  }

  return (
    <>
       <Navbar.Section onClick={handleDistrictPage}>
        <a href="#" className={classes.link} onClick={(event) => event.preventDefault()}>
          <Map className={classes.linkIcon} />
          <span>DISTRICT</span>
        </a>
        </Navbar.Section>
        <Navbar.Section onClick={handleUserPage}>
        <a href="#" className={classes.link} onClick={(event) => event.preventDefault()}>
          <User className={classes.linkIcon} />
          <span>USER</span>
        </a>
       </Navbar.Section>
        <Navbar.Section onClick={handleContactUsPage} grow>
        <a href="#" className={classes.link} onClick={(event) => event.preventDefault()}>
          <Phone className={classes.linkIcon} />
          <span>CONTACT</span>
        </a>
        </Navbar.Section>

      <Navbar.Section className={classes.footer} onClick={handleLogout}>
        <a href="#" className={classes.link} onClick={(event) => event.preventDefault()}>
          <Logout className={classes.linkIcon} />
          <span>Logout</span>
        </a>
      </Navbar.Section>
    </>
  )
}

export default NavBarContainer;



const useStyles = createStyles((theme, _params, getRef) => {
  const icon = getRef('icon');
  return {
    header: {
      paddingBottom: theme.spacing.md,
      marginBottom: theme.spacing.md * 1.5,
      borderBottom: `1px solid ${
        theme.colorScheme === 'dark' ? theme.colors.dark[4] : theme.colors.gray[2]
      }`,
    },

    footer: {
      paddingTop: theme.spacing.md,
      marginTop: theme.spacing.md,
      borderTop: `1px solid ${
        theme.colorScheme === 'dark' ? theme.colors.dark[4] : theme.colors.gray[2]
      }`,
    },

    link: {
      ...theme.fn.focusStyles(),
      display: 'flex',
      alignItems: 'center',
      textDecoration: 'none',
      fontSize: theme.fontSizes.sm,
      color: theme.colorScheme === 'dark' ? theme.colors.dark[1] : theme.colors.gray[7],
      padding: `${theme.spacing.xs}px ${theme.spacing.sm}px`,
      borderRadius: theme.radius.sm,
      fontWeight: 500,

      '&:hover': {
        backgroundColor: theme.colorScheme === 'dark' ? theme.colors.dark[6] : theme.colors.gray[0],
        color: theme.colorScheme === 'dark' ? theme.white : theme.black,

        [`& .${icon}`]: {
          color: theme.colorScheme === 'dark' ? theme.white : theme.black,
        },
      },
    },

    linkIcon: {
      ref: icon,
      color: theme.colorScheme === 'dark' ? theme.colors.dark[2] : theme.colors.gray[6],
      marginRight: theme.spacing.sm,
    },

    linkActive: {
      '&, &:hover': {
        backgroundColor:
          theme.colorScheme === 'dark'
            ? theme.fn.rgba(theme.colors[theme.primaryColor][8], 0.25)
            : theme.colors[theme.primaryColor][0],
        color: theme.colorScheme === 'dark' ? theme.white : theme.colors[theme.primaryColor][7],
        [`& .${icon}`]: {
          color: theme.colors[theme.primaryColor][theme.colorScheme === 'dark' ? 5 : 7],
        },
      },
    },
  };
});


{/* <Navbar.Section>
<Button align="right" variant="outline" color="dark" radius="xs" size="sm" uppercase component={Link} to="/user">User</Button>
<Button align="right" variant="outline" color="dark" radius="xs" size="sm" uppercase component={Link} to="/contactUs">ContactUs</Button>
<Button align="right" variant="outline" color="dark" radius="xs" size="sm" uppercase onClick={handleLogout}>LogOut</Button>
</Navbar.Section> */}

{/* <Group className={classes.header} position="apart"></Group> */}