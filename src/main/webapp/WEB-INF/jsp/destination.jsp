<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 25/2/2022
  Time: 09:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:out value="${destination.dNom}"/>

<img src="${pageContext.request.contextPath}/dimg/<c:out value="${destination.dNom}"/>.jpg"/>
</body>
</html>
