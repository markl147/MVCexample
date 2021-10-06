<%--
  Created by IntelliJ IDEA.
  User: Mark
  Date: 06/10/2021
  Time: 15:37
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
            Name:
        </th>
        <br>
        <br>
        <th>
            Address :
        </th>
    </tr>
    <tr>
        <td><c:out value = "${myList[0].name}" />  </td>
        <td><c:out value = "${myList[0].address}" />  </td>
    </tr>

    <tr>
        <td><c:out value = "${myList[1].name}" /></td>
        <td><c:out value = "${myList[1].address}" />  </td>
    </tr>

    <tr>
        <td><c:out value = "${myList[2].name}" /></td>
        <td><c:out value = "${myList[2].address}" />  </td>
    </tr>
</table>
<br>
</head>

</body>
</html>
