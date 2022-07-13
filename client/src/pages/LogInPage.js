import React, { useState } from "react";
import LoginForm from "../components/LogInForm";
import SignUpForm from "../components/SignUpForm";

function LogInPage({onLogin}) {

  const [showLogin, setShowLogin] = useState(true);
  

  return (
    <>
      {showLogin ? (
        <LoginForm onLogin={onLogin} setShowLogin={setShowLogin} />
      ) : (
          <SignUpForm onLogin={onLogin} setShowLogin={setShowLogin} />
      )}
    </>
  )
}

export default LogInPage;