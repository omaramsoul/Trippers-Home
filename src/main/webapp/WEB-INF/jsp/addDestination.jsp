
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>
        ADD destination Page
    </title>
    <h2>${errorMsg}</h2>
    <form method="post">
        <input type="text" name="nom" /><br>
        <br>
        <input type="text" name="ville"  /><br>
        <br>
        <input type="text" name="transport"  /><br>
        <br>
        <input type="text" name="camping"  /><br>
        <br>
        <input type="text" name="epicerie"  /><br>
        <br>
        <input type="text" name="eaupot"  /><br>
        <br>
        <input type="text" name="activite"  /><br>
        <br>
        <input type="text" name="divers"  /><br>
        <br>
        <input type="file" id="img" name="img" accept="image/*">
        <button>submit</button>
    </form>

</head>
</html>
