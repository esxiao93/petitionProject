import React, { useEffect, useState } from 'react';
import HeaderContainer from './components/HeaderContainer';
import NavBarContainer from './components/NavBarContainer';
import LandingPage from './pages/LandingPage';
import DistrictPage from './pages/DistrictPage';
import LogInPage from './pages/LogInPage';
import ImagePage from './pages/ImagePage';
import PetitionPage from './pages/PetitionPage';
import NewPetition from './components/NewPetition';
import UserPage from './pages/UserPage';
import ContactUs from './pages/ContactUs';
import {Routes, Route} from "react-router-dom";
import {
  AppShell,
  Navbar,
  Header,
  MediaQuery,
  Burger,
  useMantineTheme,
  DEFAULT_THEME,
} from '@mantine/core';

function App() {

  const theme = useMantineTheme();

  const [user, setUser] = useState({petitions: []});
  const [congressionalMembers, setCongressionalMembers] = useState([]);
  const [opened, setOpened] = useState(false);


  useEffect(() => {
    fetch('/me').then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);


  useEffect(() => {
    fetch('/congressional_members')
    .then(response => response.json())
    .then((congressionalMembers) => setCongressionalMembers(congressionalMembers))
    .catch(error => console.log(error))
  }, []);


  // Reroute user to <Login /> Component if not authenticated
  if (!user) return <LogInPage onLogin={setUser} />;


  return (
    <AppShell
      styles={{
        main: {
          background: theme.colorScheme === 'dark' ? theme.colors.dark[8] : theme.colors.gray[0],
        },
      }}
      navbarOffsetBreakpoint="sm"
      asideOffsetBreakpoint="sm"
      fixed

      navbar={
        <Navbar p="md" hiddenBreakpoint="sm" hidden={!opened} width={{ sm: 200, lg: 300 }}>
        {<NavBarContainer setUser={setUser} user={user} />}
        </Navbar>
      }

      header={
        <Header height={70} p="md">
          <div style={{ display: 'flex', alignItems: 'center', height: '100%' }}>
            <MediaQuery largerThan="sm" styles={{ display: 'none' }}>
              <Burger
                opened={opened}
                onClick={() => setOpened((o) => !o)}
                size="sm"
                color={theme.colors.gray[6]}
                mr="xl"
              />
            </MediaQuery>

            {<HeaderContainer setUser={setUser} user={user} />}
          </div>
        </Header>
      }
    >
      {
      <div style={{ backgroundColor: DEFAULT_THEME.colors.gray[1] }}>

      <Routes>
      <Route exact path="/" element={<LandingPage congressionalMembers={congressionalMembers} />} />
      <Route exact path="/congressional_members/:id" element={<DistrictPage user={user}/>} />
      <Route exact path="/petitions/:id" element={<PetitionPage user={user}/>} />
      <Route exact path="/new_petition/:congressionalMemberId" element={<NewPetition />} />
      <Route exact path="/gotem" element={<ImagePage />}  />
      <Route exact path="/user" element={<UserPage user={user} />}  />
      <Route exact path="/contactUs" element={<ContactUs />}  />
      </Routes>
      </div>
      }
    </AppShell>
  )
}

export default App;

{/* <AppShell
      padding="md"
      navbar={<Navbar width={{ base: 300 }} height={500} p="xs">{<NavBarContainer setUser={setUser} user={user} />}</Navbar>}
      header={<Header height={60} p="xs">{<HeaderContainer setUser={setUser} user={user} />}</Header>}
      styles={(theme) => ({
        main: { backgroundColor: theme.colorScheme === 'dark' ? theme.colors.dark[8] : theme.colors.gray[0] },
      })}
    >
    </AppShell> */}