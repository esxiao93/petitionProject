import React from 'react';
import { Title } from '@mantine/core';
import { Link } from "react-router-dom";


function HeaderContainer({setUser, user}) {

  return (
    <>
      <Title align="left" order={1} component={Link} to='/'>WE THE PEOPLE</Title>
    </>
  );
}
export default HeaderContainer;