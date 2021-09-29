<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    Name: <c:out value="${myUser.name}"/> <br>
    Address: <c:out value="${myUser.address}"/> <br>
</body>
</html>
