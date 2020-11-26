<%--
  Created by IntelliJ IDEA.
  User: DengLong
  Date: 2019/6/18
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板-用户登录</title>
</head>
<body>
<h1>留言板-用户登录</h1>
<hr>
<form action="/user/doLogin" method="post">
    <label for="name">姓  名：</label><input type="text" name="name" id="name"> <br>
    <label for="password">密  码：</label><input type="password" name="password" id="password"> <br>
    <input type="submit" value="登录"> <input type="reset" value="重置"><a href="/user/register">注册用户</a>
</form>
</body>
</html>
