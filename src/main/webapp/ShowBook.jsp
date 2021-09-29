<%--
  Created by IntelliJ IDEA.
  User: Mark
  Date: 29/09/2021
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

Title: <c:out value="${myBook.title}"/> <br>
Author: <c:out value="${myBook.author}"/> <br>
Publisher: <c:out value="${myBook.publisher}"/> <br>

</body>
</html>
