
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>TrippersHome</title>
</head>
<body>
<h1>
  TrippersHome

</h1>
<c:choose>
    <c:when test="${user==null}">
        <button><a href ="/login">login</a></button>

    </c:when>
    <c:otherwise>
        <button><a href ="/">logout</a></button>
        <button><a href ="/destinations">destinations</a></button>
    </c:otherwise>
</c:choose>

</body>
</html>
