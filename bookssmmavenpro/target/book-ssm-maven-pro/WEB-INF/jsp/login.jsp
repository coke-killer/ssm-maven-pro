<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DengLong
  Date: 2019/6/18
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言本-查询留言</title>
</head>
<body>
<h1>留言本-查询留言</h1>
<hr>
<table border="1" width="80%" align="center">
    <tr>
        <th>id</th>
        <th>姓名</th>
        <th>密码</th>
        <th>留言</th>
        <th>描述</th>
        <th>创建时间</th>
        <th>修改时间</th>
        <th>操作</th>
    </tr>
    <%--    <c:forEach items="${list}" var="book">--%>
    <tr>
        <td>${userLogin.id}</td>
        <td>${userLogin.name}</td>
    </tr>
    <%--    </c:forEach>--%>
</table>
</body>
</html>
