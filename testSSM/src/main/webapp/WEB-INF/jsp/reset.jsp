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
<script src="js/my-login.js"></script>
</body>
</html>
