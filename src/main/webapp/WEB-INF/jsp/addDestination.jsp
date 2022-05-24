
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addDestinationStyle.css">
    <title>Add destination</title>
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
    <p class="title">Share your favourite destination with the community ...</p>
    <p class="description">Try to describe each field in the following form in order to have a clear vision about the destination </p>
</div>

<div class="container imageConatiner">
    <div class="row">
        <form action="add_destination" class="col-xl-12 formDestContainer" method="post">

            <div class="fieldDiv">
                <label for="destName" class="formLabel">Destination name : <span class="etoile">*</span></label><br>
            </div>
            <input type="text" name="nom" class="formInputText" id="destName"><br>

            <div class="fieldDiv">
                <label for="destCity"  class="formLabel">City : <span class="etoile">*</span></label><br>
            </div>
            <input type="text" name="ville" class="formInputText" id="destCity"><br>

            <div class="fieldDiv">
                <label  class="formLabel">Images : <span class="etoile">*</span> </label><br>
            </div>
            <div class="panel">
                <div class="button_outer">
                    <div class="btn_upload">
                        <input type="file" id="upload_file" name="" class="uploadText">
                        Upload images
                    </div>
                </div>
            </div>
            <div class="error_msg"></div>
            <div class="uploaded_file_view" id="uploaded_view">
                <span class="file_remove">X</span>
            </div>

            <div class="fieldDiv">
                <label for="destTransport" class="formLabel">Transport : <span class="etoile">*</span></label><br>
            </div>
            <textarea name="transport" id="destTransport" cols="30" rows="10" class="formInputTextarea"></textarea><br>

            <div class="fieldDiv">
                <label for="destCampaign" class="formLabel">Campaign : </label><br>
            </div>
            <textarea name="camping" id="destCampaign" cols="30" rows="10" class="formInputTextarea"></textarea><br>

            <div class="fieldDiv">
                <label for="destWater" class="formLabel">Drinking water : </label><br>
            </div>
            <textarea   name="eaupot" id="destWater" cols="30" rows="10" class="formInputTextarea"></textarea><br>

            <div class="fieldDiv">
                <label for="destGrocery" class="formLabel">Grocery : </label><br>
            </div>
            <textarea name="epicerie" id="destGrocery" cols="30" rows="10" class="formInputTextarea"></textarea><br>


            <div class="fieldDiv">
                <label for="destActivities" class="formLabel">Activities : </label><br>
            </div>
            <textarea type="text" name="activite" id="destActivities" cols="30" rows="10" class="formInputTextarea"></textarea><br>

            <div class="fieldDiv">
                <label for="destOther" class="formLabel">Other : </label><br>
            </div>
            <textarea type="text" name="divers" id="destOther" cols="30" rows="10" class="formInputTextarea"></textarea><br>

            <button class="cancelBtn">Cancel</button>
            <button class="submitBtn" type="submit">Save</button>
        </form>
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

<script src="${pageContext.request.contextPath}/js/uploadImage.js"></script>

</body>
</html>
