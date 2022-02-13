
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>
        Login Page
    </title>
    <h2>${errorMsg}</h2>
    <form method="post">
        <input type="text" name="username" PLACEHOLDER="Username" /><br>
        <br>
        <input type="text" name="password" PLACEHOLDER="Password" /><br>
        <br>
        <button>submit</button>
    </form>

</head>
</html>