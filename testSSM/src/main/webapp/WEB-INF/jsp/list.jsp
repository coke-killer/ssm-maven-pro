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
    <title>书籍管理-书籍展示</title>
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/my-login.css">
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="../js/my-login.js"></script>
</head>
<body>
<h1>留言本-查询留言</h1>
<hr>
<table class="table table-bordered table-sm" align="center">
    <thead>
    <tr>
        <th>姓名</th>
        <th>密码</th>
        <th>isbn号码</th>
        <th>书名</th>
        <th>价格</th>
        <th>出版社</th>
        <th>页数</th>
        <th>封面图片</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="book">
        <tr>
            <td>${book.user.name}</td>
            <td>${book.user.password}</td>
            <td>${book.isbn}</td>
            <td>${book.name}</td>
            <td>${book.price}</td>
            <td>${book.publisher}</td>
            <td>${book.pages}</td>
            <td><!-- 显示上传的学生头像 -->
                <img alt="头像" src="/images/${book.cover}">
            </td>
            <c:choose>
                <c:when test="${userLogin.id == book.user.id}">
                    <td><a href="/book/update?id=${book.id}">修改</a>&nbsp;&nbsp;&nbsp; <a
                            href="/book/delete?id=${book.id}">删除</a></td>
                </c:when>
                <c:otherwise>
                    <td style="color: red; font-size: 8px;">不可操作</td>
                </c:otherwise>
            </c:choose>
        </tr>
    </c:forEach>

    </tbody>
</table>
<table class="table">
    <tr>
        <td><a href=/book/pageBean/1>『首页』 </a></td>
        <td><a href=/book/pageBean/${pageBean.nowPage-1}>『上一页』 </a></td>
        <td><a href=/book/pageBean/${pageBean.nowPage+1}>『下一页』 </a></td>
        <td><a href=/book/pageBean/${pageBean.endPage}>『末页』 </a></td>
    </tr>
</table>
</body>
</html>
