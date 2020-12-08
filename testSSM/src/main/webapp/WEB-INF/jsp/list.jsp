<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 于冬月
  Date: 2020/11/26
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分页List</title>
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
    <c:forEach items="${list}" var="book">
        <tr>
            <td>${book.id}</td>
            <td>${book.user.name}</td>
            <td>${book.user.password}</td>
            <td>${book.cover}</td>
            <td><!-- 显示上传的学生头像 -->
                <img alt="头像" src="/images/${book.cover}">
            </td>
                <%--            <td>${book.description}</td>--%>
                <%--            <td>${book.createTime}</td>--%>
                <%--            <td>${book.updateTime}</td>--%>
            <c:choose>
                <c:when test="${loginUser.id == book.user.id}">
                    <td><a href="/book/update?id=${book.id}">修改</a>&nbsp;&nbsp;&nbsp; <a
                            href="/book/delete?id=${book.id}">删除</a></td>
                </c:when>
                <c:otherwise>
                    <td style="color: red; font-size: 8px;">不可操作</td>
                </c:otherwise>
            </c:choose>
        </tr>
    </c:forEach>
    <a href=/book/pageBean/1>『首页』 </a>
    <a href=/book/pageBean/${pageBean.nowPage-1}>『上一页』 </a>
    <a href=/book/pageBean/${pageBean.nowPage+1}>『下一页』 </a>
    <a href=/book/pageBean/${pageBean.endPage}>『末页』 </a>
</table>
</body>
</html>
