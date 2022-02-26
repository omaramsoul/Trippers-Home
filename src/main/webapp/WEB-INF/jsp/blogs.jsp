<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 24/2/2022
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>



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
    <title>Blogs</title>
    <style>

        .blogBorder {
            padding: 0px;
            border: 1px solid #E1E1E1;
        }

        .blogImage {
            width: 100%;
        }

        .blogTitle {
            padding: 20px 30px;
            padding-bottom: 0px;
            font-family: 'Poppins', sans-serif;
            font-size: 20px;
            font-weight: 700;
        }

        .blogDescription {
            padding: 0px 30px;
            font-family: 'Poppins', sans-serif;
            font-size: 18px;
            font-weight: 400;
        }

        .bolgsContainer {
            margin-top: 20px;
            margin-bottom: 90px;
        }

        .blogAuthor {
            font-family: 'Poppins', sans-serif;
            font-weight: 400;
            font-size: 15px;
            color: #37474F;
            margin-left: 10px;
            margin-bottom: 15px;
        }

        .creator {
            color: #37474F;
        }

        .creatorDiv {
            text-align: end;
            padding-right: 20px;
        }

        a:hover{
            color: #37474F;
        }
    </style>
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
                <a class="nav-link item" href="/blogs">Blog</a>
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
    <p class="description">Spend a moment with other trippers ...</p>
</div>


        <div class="container bolgsContainer">

            <div class="row">




                <c:forEach items="${blogs}" var="item">


                    <div class="blogCard col-xl-4 col-md-3">
                        <div class="blogBorder">

                            <a href="#"><p class="blogTitle"><c:out value="${item.titre}" /></p></a>
                            <a href="#"><p class="blogDescription"><c:out value="${item.sujet}"></c:out></p></a>
                            <div class="creatorDiv">

                                <span class="blogAuthor">By : <a href="#" class="creator"><c:out value="${item.id1.username}"></c:out></a></span>
                            </div>
                        </div>
                    </div>


                </c:forEach>


            </div>
        </div>



        <div class="scrollDiv col-12">
            <button class="scrollBtn col-xd-12">1</button>
            <button class="scrollBtn col-xd-12">2</button>
        </div>





<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>



