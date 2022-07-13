import React, { useState } from "react";
import LoginForm from "../components/LogInForm";
import SignUpForm from "../components/SignUpForm";

function LogInPage({onLogin, setIsLoggedIn}) {

  const [showLogin, setShowLogin] = useState(true);
  

  return (
    <>
      {showLogin ? (
        <LoginForm onLogin={onLogin} setShowLogin={setShowLogin} setIsLoggedIn={setIsLoggedIn}/>
      ) : (
          <SignUpForm onLogin={onLogin} setShowLogin={setShowLogin} setIsLoggedIn={setIsLoggedIn}/>
      )}
    </>
  )
}

export default LogInPage;