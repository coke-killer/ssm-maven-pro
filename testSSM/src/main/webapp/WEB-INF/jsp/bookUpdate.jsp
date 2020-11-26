<%--
  Created by IntelliJ IDEA.
  User: DengLong
  Date: 2019/6/18
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bookUpdate jsp</title>
</head>
<body>
<h1>bookUpdate jsp</h1>
<hr>
<form action="/book/doUpdate" method="post">
    <input type="hidden" name="id" value="${book.id}">
    <label for="description">描  述：</label><input type="text" name="description" id="description" value="${book.description}"><br>
    <label for="message">留  言：</label><textarea name="message" id="message" cols="30" rows="10">${book.message}</textarea> <br>
    <input type="submit" value="提交"> <input type="reset" value="重置">
</form>
</body>
</html>
