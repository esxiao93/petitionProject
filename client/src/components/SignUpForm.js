import React, {useState} from "react";
import { Card, Text, Button, TextInput, PasswordInput } from '@mantine/core';
import { useNavigate } from "react-router-dom";
// import { useMantineTheme } from '@mantine/core';

function SignUpForm({setShowLogin, onLogin, setIsLoggedIn}) {

  let navigate = useNavigate();

  const [name, setName] = useState('')
  const [email, setEmail] = useState('')
  const [username, setUsername] = useState('')
  const [district, setDistrict] = useState('')
  const [password, setPassword] = useState('')
  const [errors, setErrors] = useState([])


  function handleSubmit(e){
    e.preventDefault()
    const user = {
        name: name,
        email: email,
        username: username,
        district: +district,
        password: password,
        congressional_member_id: +district
    }
  
    fetch('/signup',{
      method:'POST',
      headers:{'Content-Type': 'application/json'},
      body:JSON.stringify(user)
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
    <br></br>
    <br></br>
    <div style={{ width: 600, margin: 'auto' }}>
      <Card shadow="sm" p="lg">
      <Text>
        SIGN UP
      </Text>
      <form onSubmit={handleSubmit}>
    <TextInput
      placeholder="Enter Name"
      label="Full Name"
      value ={name}
      onChange={(e) => setName(e.target.value)}
      required
    />
    <TextInput
      placeholder="Enter Email"
      label="Email"
      value ={email}
      onChange={(e) => setEmail(e.target.value)}
      required
    />
    <TextInput
      placeholder="Enter Username"
      label="Username"
      value ={username}
      onChange={(e) => setUsername(e.target.value)}
      required
    />
    <TextInput
      placeholder="Enter District By Number"
      label="District"
      value ={district}
      onChange={(e) => setDistrict(e.target.value)}
      required
    />
    <br></br>
    <br></br>
    <br></br>
    <PasswordInput
      placeholder="Enter Password"
      label="Password"
      value ={password}
      onChange={(e) => setPassword(e.target.value)}
      required
    />
    <br></br>
      <Button type="submit">Sign Up</Button>
    </form>
      </Card>
    </div>
    </>
  );
}

export default SignUpForm;