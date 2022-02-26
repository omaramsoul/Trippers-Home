<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 24/2/2022
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/navBar.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;900&display=swap" rel="stylesheet">
  <link rel="shortcut icon" href="/img/tent-2.png" type="image/x-icon">
  <script src="https://kit.fontawesome.com/7cae05fcdc.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/blog.css">
  <title>Add blog</title>
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
        <a class="nav-link item" href="/destinations">Destinations</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link item" href="/blogs">Blog</a>
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
      <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\destinations_favoris">Favoris</a></button>
      <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\my_destinations">Mes destinations</a></button>
      <button class="btn logBtn resgistration my-2 my-sm-0" type="submit"><a href="\logout">Logout</a> </button>
    </form>
  </div>
</nav>

<div class="container titleContainer">
  <p class="title">Share your experience by creating blogs</p>
</div>

<div class="container">
  <div class="row">
    <form action="#" class="col-xl-12 blogContainer" method="post">

      <div class="fieldDiv">
        <label for="blogTitle" class="formLabel">Blog title : </label><br>
      </div>
      <input name="title" type="text" class="formInputText" id="blogTitle"><br>

      <div class="fieldDiv">
        <label for="blogContent" class="formLabel">Blog content : </label><br>
      </div>
      <textarea name="sujet" id="blogContent" cols="30" rows="10" class="formInputTextarea"></textarea><br>


      <button class="cancelBtn">Cancel</button>
      <button class="createBtn" type="submit">Create</button>
    </form>
  </div>
</div>

</body>
</html>
