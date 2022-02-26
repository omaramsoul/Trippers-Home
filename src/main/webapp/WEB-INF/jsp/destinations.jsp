
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/tent-2.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/7cae05fcdc.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/destinations.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/recommendedPlaces.css">
    <title>Destinations</title>
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
                <a class="nav-link item" href="/blogs">Bloog</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link item" href="#">Contact us</a>
            </li>
            <li class="nav-item navRegistration">
                <a class="nav-link item" href="/logout">Logout</a>
            </li>
            <li class="nav-item navRegistration">
                <a class="nav-link item" href="/destinations_favoris">favoris</a>
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
    <p  class="title"><c:out value="${title}"/></p>
    <p class="description">See where other trippers recommed you ...</p>
</div>

<div class="container recPlacesContainer">
    <div class="row">
<c:forEach items="${destinations}" var="item">
        <div class="recommendedPlaceCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="ratting">
                    <span class="starNumber">3.5</span>
                    <span>
                  <img src="${pageContext.request.contextPath}/img/star.png" alt="star" class="star">
                </span>
                </div>
                <a href="/destinations/<c:out value="${item.dNom}"/>">
                    <img src="${pageContext.request.contextPath}/dimg/<c:out value="${item.dNom}"/>.jpg" alt="" class="placeImage"><br>
                </a>
            </div>
            <a href="/destinations/<c:out value="${item.DNom}"/>" class="placeName"><c:out value="${item.DNom}" />, <br> <c:out value="${item.DVille}" /></a>
        </div>
</c:forEach>


        <div class="scrollDiv col-12">
            <button class="scrollBtn col-xd-12">1</button>
            <button class="scrollBtn col-xd-12">2</button>
        </div>

    </div>
</div>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>
