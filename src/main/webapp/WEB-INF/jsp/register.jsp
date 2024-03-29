
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/navBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">
    <title>Sign up</title>
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
                <a class="nav-link item" href="/">Home</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link item" href="/destinations">Destinations</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link item" href="#">Bloog</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link item" href="#">Contact us</a>
            </li>
            <li class="nav-item navRegistration">
                <a class="nav-link item" href="/login">Log in</a>
            </li>
            <li class="nav-item navRegistration">
                <a class="nav-link item" href="/register">Sign up</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn logBtn resgistration my-2 my-sm-0" type="submit"><a href="/login"> Log in</a></button>
            <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="/register">Sign up</a></button>
        </form>
    </div>
</nav>

<div class="container contentContainer">
    <div class="row contentDiv">
        <div class="imageDiv col-6">
            <img src="${pageContext.request.contextPath}/img/Travelers-bro.png" alt="signup image" class="imageVal">
        </div>
        <div class="signUpForm col-xl-6 col-md-6 col-sm-6 col-12">
            <p class="signText signTextUp">Welcome home Tripper</p>
            <form action="register" method="post">
                <input type="text" name="username" placeholder="First name" class="inputField"><br>
                <input type="email" name="email" placeholder="Email" class="inputField"><br>
                <input type="password" name="password" placeholder="Password" class="inputField"><br>
                <input type="password" name="password2" placeholder="Password" class="inputField"><br>
                <button class="signUpBtn" type="submit" value="Submit">Sign up</button><br>
            </form>
            <p class="signText signTextDown">Already have account ? <a href="/login" class="loginField">Login</a></p>
        </div>

    </div>
</div>
<footer class="container-fluid footerContainer">
    <div class="row">
        <div class="footerLogo col-xl-12">
            <img src="/img/tent-3.png" alt="" class="footerLogoVal">
        </div>
        <div class="linksDiv col-xl-12">
            <a href="/" class="footerItem">Home</a>
            <a href="/destinations" class="footerItem">Destinations</a>
            <a href="/blogs" class="footerItem">Blogs</a>
            <a href="#" class="footerItem">Trip partner</a>
        </div>
        <div class="iconsDiv col-xl-12">
            <p class="stayIn">Stay in touch</p>
            <i class="fa fa-facebook-square" aria-hidden="true"></i>
            <i class="fa fa-instagram" aria-hidden="true"></i>
            <i class="fa fa-twitter-square" aria-hidden="true"></i>
        </div>
        <div class="copyrights col-xl-12">
            © Trippershome. All rights Reserved.
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>