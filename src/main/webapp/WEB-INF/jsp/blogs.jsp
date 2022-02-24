<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 24/2/2022
  Time: 12:42
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
    <c:forEach items="${blog}" var="item">
        <tr>
            <td><c:out value="${item.titre}" /></td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
