<%--
  Created by IntelliJ IDEA.
  User: DengLong
  Date: 2019/6/18
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言本-用户注册</title>
</head>
<body>
<h1>留言本-用户注册</h1>
<hr>
<%--<form action="/user/doRegister" method="post">--%>
<%--    <label for="name">姓 名：</label><input type="text" name="name" id="name"> <br>--%>
<%--    <label for="password">密 码：</label><input type="password" name="password" id="password"> <br>--%>
<%--    <input type="submit" value="注册"> <input type="reset" value="重置">--%>
<%--</form>--%>
<%--    <form action="${pageContext.request.contextPath }/file/upload.chao"--%>
<%--          method="post" enctype="multipart/form-data">--%>
<%--        选择文件:<input type="file" name="file" width="120px"> <input--%>
<%--            type="submit" value="上传">--%>
<%--    </form>--%>
<%--    <hr>--%>
<%--    <form action="${pageContext.request.contextPath }/file/down.chao"--%>
<%--          method="get">--%>
<%--        <input type="submit" value="下载">--%>
<%--    </form>--%>
<!-- 如果提交的内容有需要上传文件信息，需要添加一个参数就是enctype="multipart/form-data" -->
<form action="/book/insert" method="post" enctype="multipart/form-data">
    <!-- 上传文件的表单 -->
    <p>头像：<input type="file" name="file"/></p>
    <p><input type="submit" value="提交"/></p>
</form>
</body>
</html>
