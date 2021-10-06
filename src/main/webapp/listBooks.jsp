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
    <tr>
        <th>
            Title:
        </th>
        <br>
        <br>
        <th>
            Author :
        </th>
        <br>
        <br>
        <th>
            Publisher :
        </th>
    </tr>
    <tr>
        <td><c:out value = "${myBookList[0].title}" />  </td>
        <td><c:out value = "${myBookList[0].author}" />  </td>
        <td><c:out value = "${myBookList[0].publisher}" />  </td>

    </tr>

    <tr>
        <td><c:out value = "${myBookList[1].title}" /></td>
        <td><c:out value = "${myBookList[1].author}" />  </td>
        <td><c:out value = "${myBookList[1].publisher}" />  </td>

    </tr>

    <tr>
        <td><c:out value = "${myBookList[2].title}" /></td>
        <td><c:out value = "${myBookList[2].author}" />  </td>
        <td><c:out value = "${myBookList[2].publisher}" />  </td>
    </tr>
</table>
<br>
</head>

</body>
</html>