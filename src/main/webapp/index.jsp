<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<form method="post" action="/HelloServlet">
    <p>Please enter your name: <input type = text name = "name"></p>
    <p>Please enter what county your from: <input type = text name="address"></p>
    <input type = submit name = submit>

</form>

<br>

<form method="post" action="/BookServlet">
    <p>Please enter the title: <input type = text name = "title"></p>
    <p>Please enter the author: <input type = text name = "author"></p>
    <p>Please enter the publisher: <input type = text name = "publisher"></p>
    <input type = submit name = submit>

</form>

<br>

<form method="post" action="/ListUsersServlet">
    <p>ListUsersServlet</p>
    <input type = submit name = UserList>

</form>

<br>

<form method="get" action="/ListBooksServlet">
    <p>ListBooksServlet</p>
    <input type = submit name = booksList>

</form>


<br>

<form method="post" action="/ListBooksServlet">
    <p>Create new book</p>
    <p>Please enter the title: <input type = text name = "title"></p>
    <p>Please enter the author: <input type = text name = "author"></p>
    <p>Please enter the publisher: <input type = text name = "publisher"></p>
    <input type = submit name = submit>

</form>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
</body>
</html>