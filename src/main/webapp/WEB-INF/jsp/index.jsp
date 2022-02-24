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
    <link rel="shortcut icon" href="/img/tent-2.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/7cae05fcdc.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slogan.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/recommendedPlaces.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indexDestination.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indexPeaks.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indexBlog.css">
    <title>Trippers home</title>
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

        <c:choose>
            <c:when test="${user==null}">
                <form class="form-inline my-2 my-lg-0">
                    <button class="btn logBtn resgistration my-2 my-sm-0" type="submit"><a href="\login">Log in</a> </button>
                    <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\register">sign up</a></button>
                </form>
            </c:when>
            <c:otherwise>
                <form class="form-inline my-2 my-lg-0">
                    <button class="btn logBtn resgistration my-2 my-sm-0" type="submit"><a href="\logout">Logout</a> </button>
                    <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\destinations_favoris">favoris</a></button>
                    <button class="btn resgistration btn-outline-success my-2 my-sm-0" type="submit"><a href="\my_destinations">Compte</a></button>
                </form>
                <!--                    <button><a href ="/">logout</a></button>-->
                <!--                    <button><a href ="/destinations">destinations</a></button>-->
                <!--                    <button><a href ="/destinations_favoris">destinations favorites</a></button>-->
                <!--                    <button><a href ="/my_destinations">mes destinations</a></button>-->
            </c:otherwise>
        </c:choose>
    </div>



</nav>

<div class="container sloganContainer">
    <div class="row">
        <div class="sloganTextDiv col-xl-6 col-md-5 col-sm-4">
            <p class="Slogan">Explore a <br>  new world .</p>
            <p class="subSlogan">No matter where in <span class="morocco">Morocco</span>  <br>
                you want to go, we can help get you there.</p>
            <button class="exploreBtn">Explore now</button>
        </div>
        <div class="imageSloganDiv col-xl-6 col-md-5 col-sm-4">
            <img src="${pageContext.request.contextPath}/img/Hiking-bro.png" alt="image" class="imageSloganVal">
        </div>
    </div>
</div>

<div class="container titleContainer">
    <p class="title">Most recommended places</p>
    <p class="description">See where other trippers recommed you ...</p>
</div>

<div class="container recPlacesContainer">
    <div class="row">
        <div class="recommendedPlaceCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="ratting">
                    <span class="starNumber">3.5</span>
                    <span>
                <img src="${pageContext.request.contextPath}/img/star.png" alt="star" class="star">
              </span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 05.06 1.png" alt="Aguelmam Azegza" class="placeImage"><br>
                </a>
            </div>
            <a href="#" class="placeName">Aguelmam, <br> Khenifra</a>
        </div>

        <div class="recommendedPlaceCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="ratting">
                    <span class="starNumber">4.5</span>
                    <span>
                <img src="/img/star.png" alt="star" class="star">
              </span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 05.23 1.png" alt="Ait ben haddou, Ouarzazate" class="placeImage"><br>
                </a>
            </div>
            <a href="#" class="placeName">Ait Ben Haddou, <br> Ouarzazate</a>
        </div>

        <div class="recommendedPlaceCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="ratting">
                    <span class="starNumber">4</span>
                    <span>
                <img src="/img/star.png" alt="star" class="star">
              </span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 05.29 1.png" alt="Ait Bouguemez, Azilal" class="placeImage"><br>
                </a>
            </div>
            <a href="#" class="placeName">Ait Bouguemez, <br> Azilal</a>
        </div>

        <div class="recommendedPlaceCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="ratting">
                    <span class="starNumber">4.5</span>
                    <span>
                <img src="${pageContext.request.contextPath}/img/star.png" alt="star" class="star">
              </span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 05.36 1.png" alt="Belyounech, Fnideq" class="placeImage"><br>
                </a>
            </div>
            <a href="#" class="placeName">Belyounech, <br> Fnideq</a>
        </div>
    </div>
</div>

<div class="container titleContainer2">
    <p class="title">Share new destination</p>
    <p class="description">Let’s see ...</p>
</div>

<div class="container addDestContainer">
    <div class="row">
        <div class="imageDestDiv col-xl-6 col-md-5 col-sm-4">
            <img src="${pageContext.request.contextPath}/img/Paper map-bro.png" alt="image" class="imageDestVal">
        </div>
        <div class="addDestTextDiv col-xl-6 col-md-5 col-sm-4">
            <p class="destText">Let's discover <br> <span class="morocco2">Morocco</span> !</p>
            <p class="subDestText">Share your favourite place with the community ..</p>
            <div class="btnContainer">
                <button class="addDestBtn">Add destination</button>
            </div>
        </div>
    </div>
</div>

<div class="container titleContainer2">
    <p class="title">Highest peaks to trek in Morocco</p>
    <p class="description">“Mountains teach that not everything in this world can be rationally explained.”  <span class="author">A. Lwow</span></p>
</div>

<div class="container highestPeakContainer">
    <div class="row">
        <div class="peakCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="atittude">
              <span>
                <img src="${pageContext.request.contextPath}/img/mountain-2.png" alt="mountain" class="mountain">
              </span>
                    <span class="metrs">4 165</span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 14.53 1.png" alt="Toubkal" class="peakImage"><br>
                </a>
            </div>
            <a href="#" class="peakName">Toubkal, <br> Marrakech</a>
        </div>

        <div class="peakCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="atittude">
              <span>
                <img src="${pageContext.request.contextPath}/img/mountain-2.png" alt="mountain" class="mountain">
              </span>
                    <span class="metrs">4 071</span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 16.00 1.png" alt="M'goun , Azilal" class="peakImage"><br>
                </a>
            </div>
            <a href="#" class="peakName">M'goun, <br> Azilal</a>
        </div>

        <div class="peakCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="atittude">
              <span>
                <img src="${pageContext.request.contextPath}/img/mountain-2.png" alt="mountain" class="mountain">
              </span>
                    <span class="metrs">4 089</span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 16.08 1.png" alt="Ouanoukrim" class="peakImage"><br>
                </a>
            </div>
            <a href="#" class="peakName">Ouanoukrim, <br> Marrakech</a>
        </div>

        <div class="peakCard col-xl-3 col-md-2">
            <div class="imageCard">
                <div class="atittude">
              <span>
                <img src="${pageContext.request.contextPath}/img/mountain-2.png" alt="mountain" class="mountain">
              </span>
                    <span class="metrs">3 360</span>
                </div>
                <a href="#">
                    <img src="${pageContext.request.contextPath}/img/Screen Shot 2022-01-29 at 21.25 1.png" alt="Akioud N’moulay ali" class="peakImage"><br>
                </a>
            </div>
            <a href="#" class="peakName">Akioud <br> N’moulay ali</a>
        </div>

    </div>
</div>

<div class="container titleContainer2">
    <p class="title">Blogs</p>
    <p class="description">Share your experience with the community</p>
</div>

<div class="container bolgsContainer">
    <div class="row">
        <div class="blogCard col-xl-4 col-md-3">
            <div class="blogBorder">
                <a href="#"><img src="${pageContext.request.contextPath}/img/meilleur-sac-à-dos-de-randonnée 1.png" alt="blog image" class="blogImage"></a>
                <a href="#"><p class="blogTitle">How to prepare your backpack ?</p></a>
                <a href="#"><p class="blogDescription">Lorem ipsum dolor sit amet, consectetur adipiscing elit . Integer nec odio. Praesent libero...</p></a>
                <div class="creatorDiv">
                    <span class="blogAuthor">By : <a href="#" class="creator">Mouad MADOUN</a></span>
                </div>
            </div>
        </div>

        <div class="blogCard col-xl-4 col-md-3">
            <div class="blogBorder">
                <a href="#"><img src="${pageContext.request.contextPath}/img/7351697482_9638d325e1_z 1.png" alt="blog image" class="blogImage"></a>
                <a href="#"><p class="blogTitle">Which refuge to choose in Toubkal, CAF or Mouflons ?</p></a>
                <a href="#"><p class="blogDescription">Lorem ipsum dolor sit amet, consectetur adipiscing elit . Integer nec odio. Praesent libero...</p></a>
                <div class="creatorDiv">
                    <span class="blogAuthor">By : <a href="#" class="creator">Fatim Zehra ERRAMI</a></span>
                </div>
            </div>
        </div>

        <div class="blogCard col-xl-4 col-md-3">
            <div class="blogBorder">
                <a href="#"><img src="${pageContext.request.contextPath}/img/S20_MS_Brenta_1280x1280@2x 1.png" alt="blog image" class="blogImage"></a>
                <a href="#"><p class="blogTitle">Advices for a successful trip</p></a>
                <a href="#"><p class="blogDescription">Lorem ipsum dolor sit amet, consectetur adipiscing elit . Integer nec odio. Praesent libero...</p></a>
                <div class="creatorDiv">
                    <span class="blogAuthor">By : <a href="#" class="creator">Hicham AZEROUAL</a></span>
                </div>
            </div>
        </div>

    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>