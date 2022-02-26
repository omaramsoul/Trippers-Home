<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 24/2/2022
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <c:forEach items="${comments}" var="item">
        <tr>
            <td><c:out value="${item.comment}" /></td>
        </tr>
    </c:forEach>

    <form method="post">
        <input type="text" name="comment" /><br>
        <br>
        <button>submit</button>
</table>

</body>
</html>
