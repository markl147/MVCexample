<%--
  Created by IntelliJ IDEA.
  User: Mark
  Date: 06/10/2021
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
<%--    <tr>--%>
        <th>
            Title :
        </th>

        <th>
            Author :
        </th>

        <th>
            Publisher :
        </th>
<%--    </tr>--%>

    <c:forEach items="${myBookList}" var="book">
    <tr>
        <td><c:out value="${book.title}"/></td>
        <td><c:out value="${book.author}"/></td>
        <td><c:out value="${book.publisher}"/></td>
        <br>
    </tr>
    </c:forEach>
</table>
</body>
</html>