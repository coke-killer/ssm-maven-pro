<%--
  Created by IntelliJ IDEA.
  User: DengLong
  Date: 2019/6/18
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>留言本-用户注册</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>留言本-用户注册</h1>--%>
<%--<hr>--%>
<%--&lt;%&ndash;<form action="/user/doRegister" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label for="name">姓 名：</label><input type="text" name="name" id="name"> <br>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <label for="password">密 码：</label><input type="password" name="password" id="password"> <br>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="submit" value="注册"> <input type="reset" value="重置">&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <form action="${pageContext.request.contextPath }/file/upload.chao"&ndash;%&gt;--%>
<%--&lt;%&ndash;          method="post" enctype="multipart/form-data">&ndash;%&gt;--%>
<%--&lt;%&ndash;        选择文件:<input type="file" name="file" width="120px"> <input&ndash;%&gt;--%>
<%--&lt;%&ndash;            type="submit" value="上传">&ndash;%&gt;--%>
<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <form action="${pageContext.request.contextPath }/file/down.chao"&ndash;%&gt;--%>
<%--&lt;%&ndash;          method="get">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="submit" value="下载">&ndash;%&gt;--%>
<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>
<%--<!-- 如果提交的内容有需要上传文件信息，需要添加一个参数就是enctype="multipart/form-data" -->--%>
<%--<form action="/book/insert" method="post" enctype="multipart/form-data">--%>
<%--    <!-- 上传文件的表单 -->--%>
<%--    <p>头像：<input type="file" name="file"/></p>--%>
<%--    <p><input type="submit" value="提交"/></p>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>书籍管理-修改密码</title>
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/my-login.css">
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center align-items-center h-100">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="/images/logo.jpg" alt="bootstrap 4 login page">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">还想改密码是咋滴？</h4>
                        <form method="POST" class="my-login-validation" novalidate="" action="/user/updatePassword">
                            <div class="form-group">
                                <label for="new-password">新 密码</label>
                                <input id="new-password" type="text" readonly="readonly" class="form-control"
                                       name="password" required
                                       autofocus data-eye>
                                <div class="invalid-feedback">
                                    记住密码
                                </div>
                                <div class="form-text text-muted">
                                    就不让你输入
                                </div>
                            </div>

                            <div class="form-group m-0">
                                <a href="/user/register">回去重新注册吧，，我没加邮箱改密功能</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="footer">
                    Copyright &copy; 2020 &mdash; 你的学校
                </div>
            </div>
        </div>
    </div>
</section>
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>
<script src="js/my-login.js"></script>
</body>
</html>
