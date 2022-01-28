<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="/css/common.css" rel="stylesheet">
</head>

<body>

<div class="container">

    <form method="POST" class="form-signin" th:object="${userForm}" th:action="@{/registration}">
        <h2 class="form-signin-heading">Create your account</h2>
        <div class="form-group">
            <input type="text" th:field="*{username}" class="form-control" placeholder="Username"
                   autofocus="true">
            <span class="has-error" th:if="${#fields.hasErrors('username')}" th:errors="*{username}"></span>
        </div>

        <div class="form-group">
            <input type="password" th:field="*{mdp}" class="form-control" placeholder="Password">
            <span class="has-error" th:if="${#fields.hasErrors('mdp')}" th:errors="*{mdp}"></span>
        </div>

        <div class="form-group">
            <input type="password" th:field="*{passwordConfirm}" class="form-control"
                   placeholder="Confirm your password">
            <span class="has-error" th:if="${#fields.hasErrors('passwordConfirm')}" th:errors="*{passwordConfirm}"></span>
        </div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="/js/main.js"></script>
</body>
</html>