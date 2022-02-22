<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/7cae05fcdc.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/tent-2.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/navBar.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css"/>
    <title>Login</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/img/logo.png" class="logo"></a>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0 align-items-center">
            <li class="nav-item ">
              <a class="nav-link item" href="#">Home</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link item" href="#">Destinations</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link item" href="#">Bloog</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link item" href="#">Contact us</a>
            </li>
            <li class="nav-item navRegistration">
                <a class="nav-link item" href="#">Log in</a>
            </li>
            <li class="nav-item navRegistration">
                <a class="nav-link item" href="#">Sign up</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <button class="btn logBtn resgistration my-2 my-sm-0" type="submit">Log in</button>
            <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit">Sign up</button>
          </form>
        </div>
    </nav>

    <div class="container contentContainer">
        <div class="row contentDiv">
            <div class="loginForm col-xl-6 col-md-6 col-sm-6 col-12">
              <p class="loginText loginTextUp">Login your account</p>
              <p class="loginSubText loginSubTextUp">Thank you for getting back !</p>
              <form action="#" method="post">
                <input type="text" name="username" placeholder="Username" class="inputField"><br>
                <input type="password" name="password" placeholder="Password" class="inputField"><br>
                  <h2>${errorMsg}</h2>
                <button class="loginBtn" type="submit" value="Submit">Login</button><br>
              </form>
              <p class="loginText loginTextDown">Don't have account ? <a href="/register" class="signUpField">Sign up</a></p>
            </div>
            <div class="imageDiv col-6">
                <img src="${pageContext.request.contextPath}/img/tripLogin.png" alt="login image" class="imageVal">
              </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
</body>
</html>