<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 25/2/2022
  Time: 09:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<c:out value="${destination.dNom}"/>--%>

<%--<img src="${pageContext.request.contextPath}/dimg/<c:out value="${destination.dNom}"/>.jpg"/>--%>


<%--<c:forEach items="${comments}" var="item">--%>
<%--    <tr>--%>
<%--        <td><c:out value="${item.comment}" /></td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>

<%--</body>--%>
<%--</html>--%>



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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/destinationDetails.css">
    <title>Destination details</title>
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

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\destinations_favoris">Favoris</a></button>
            <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\my_destinations">Mes destinations</a></button>
            <button class="btn logBtn resgistration my-2 my-sm-0" type="submit"><a href="\logout">Logout</a> </button>
        </form>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="imagesConatiner col-xl-12">
            <img src="${pageContext.request.contextPath}/dimg/<c:out value="${destination.dNom}"/>.jpg" alt="" class="smallImg">
        </div>
        <div class="detailsContainer col-xl-12">

            <div class="titleDiv">
                <div class="title">
                    <c:out value="${destination.dNom}"/>, <c:out value="${destination.DVille}"/>
                </div>
                <div class="stars">
                    <span class="rating">3.5</span><span class="star"><img src="/img/star.png" alt="" class="starIcon"></span>
                </div>
            </div>


            <hr>

            <div class="transport">
                <div class="titleValue">Transport</div>
                <div class="textValue">
                    <c:out value="${destination.DTransport}"/>
                </div>
            </div>

            <hr>

            <div class="campaign">
                <div class="titleValue">Campaign</div>
                <div class="textValue">
                    <c:out value="${destination.DCamping}"/>
                </div>
            </div>


        </div>

    </div>
</div>

<div class="container secondDescription">
    <div class="row">

        <div class="line col-xl-12">
            <hr>
        </div>

        <div class="drinkingWater col-xl-12">
            <div class="titleValue">Drinking water</div>
            <div class="textValue">
                <c:out value="${destination.DEaupot}"/>
            </div>
        </div>

        <div class="line col-xl-12">
            <hr>
        </div>

        <div class="grocery col-xl-12">
            <div class="titleValue">Grocery</div>
            <div class="textValue">
                <c:out value="${destination.DEpicerie}"/>
            </div>
        </div>

        <div class="line col-xl-12">
            <hr>
        </div>


        <div class="line col-xl-12">
            <hr>
        </div>

        <div class="activities col-xl-12">
            <div class="titleValue">Activities</div>
            <div class="textValue">
                <c:out value="${destination.DActivite}"/>
            </div>
        </div>

        <div class="line col-xl-12">
            <hr>
        </div>

        <div class="other col-xl-12">
            <div class="titleValue">Other</div>
            <div class="textValue">
                <c:out value="${destination.DDivers}"/>
            </div>
        </div>
        <div class="container titleContainer2">
            <p class="title">Trippers reviews</p>
            <p class="description">See what other trippers say about the destination</p>
        </div>
    </div>



    <div class="container reviews">
        <c:forEach items="${comments}" var="item">


        <div class="row">
            <div class="reviewContainer">
                <div class="userPic">
                    <a href="#"><img src="${pageContext.request.contextPath}/img/user 1.jpeg" alt="" class="userPicVal"></a>
                </div>
                <div class="userReview">
                    <div class="userName">
                        <a href="#"><c:out value="${item.user.username}" /></a>
                    </div>
                    <c:out value="${item.comment}" />
                </div>
            </div> <br>
        </div>
        </c:forEach>

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
<script src="/js/selectImage.js"></script>

</body>
</html>
