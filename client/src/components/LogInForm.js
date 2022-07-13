import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import { Card, Title, Button, Group, TextInput, PasswordInput, Paper, DEFAULT_THEME, Container, Space } from '@mantine/core';
// import { useMantineTheme } from '@mantine/core';
function LoginForm({setShowLogin, onLogin, setIsLoggedIn}) {

  let navigate = useNavigate();

  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [errors, setErrors] = useState([]);

  function handleSubmit(e) {
    e.preventDefault();
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    }).then((r) => {
      if (r.ok) {
        r.json().then((user) => {
        onLogin(user)
        setIsLoggedIn(true)
        navigate('/')
      });
      } else {
        r.json().then((err) => setErrors(err.errors));
      }
    });
  }


  // const theme = useMantineTheme();

  // const secondaryColor = theme.colorScheme === 'dark'
  //   ? theme.colors.dark[1]
  //   : theme.colors.gray[7];

  return (
    <>
    {/* <div style={{ backgroundColor: DEFAULT_THEME.colors.gray[0] }}> */}
    <Container>
    <br></br>
    <br></br>
      <div style={{ 
        width: 500,
        margin: 'auto',
        marginLeft: 'auto',
        marginRight: 'auto',
        marginTop: 200,
      }}>
     
        <Card shadow="sm" p={100} withBorder>
        <Paper align="center" justify="center">
          <Title>LOG IN</Title>
          <Space h="xl" />
          <form onSubmit={handleSubmit}>
            <TextInput
            placeholder="Enter Username"
            label="Username"
            value ={username}
            onChange={(e) => setUsername(e.target.value)}
            required
            />
          <PasswordInput
            placeholder="Enter Password"
            label="Password"
            value ={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
            <Space h={40} />
            <Button type="submit">Log In</Button>
            <Space h="lg" />
            <Button onClick={()=> setShowLogin(false)}>Sign Up</Button>
          </form>
          </Paper>
        </Card>
      </div>
      </Container>
      {/* </div> */}
    </>
  );
}

export default LoginForm;