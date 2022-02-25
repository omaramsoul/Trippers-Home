
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>${title}</title>

</head>
<body>
<h1>${message}</h1>

<table>
    <c:forEach items="${destinations}" var="item">
        <tr>
            <td><a href="/destinations/<c:out value="${item.DNom}"/>"> <c:out value="${item.DNom}" /> </a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
