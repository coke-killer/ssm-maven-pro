<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>书籍管理-注册账号</title>
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/my-login.css">
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="../js/my-login.js"></script>
    <script>
        $(function () {
            $(".my-login-validation").submit(function () {
                var r;
                var name = $("#name").val();
                var password = $("#password").val();
                var email = $("#password").val();
                var agree = $("#agree").is(':checked');
                if (name == '' || password == '' || email == '' || agree == false) {
                    return false;
                } else $.ajax({
                    type: "Post",//请求类型
                    url: "/user/doRegister",//请求的url
                    data: {name: $("#name").val(), password: $("#password").val(), email: $("#email").val()},//请求参数
                    dataType: "text",//ajax接口（请求url）返回的数据类型
                    cache: false,
                    async: false,
                    success: function (data) {//data：返回数据（json对象）
                        if (data === "success") {//name为空，错误提示
                            r = true;
                            alert("注册成功");
                        } else if (data === "failed") {
                            alert("用户名已存在");
                            r = false;
                        }
                    },
                    error: function (data) {
                    }
                });
                return r;
            });
        })
    </script>
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="/images/logo.jpg" alt="bootstrap 4 login page">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">注册账号</h4>
                        <form method="POST" class="my-login-validation" novalidate="" action="/user/register">
                            <div class="form-group">
                                <label for="name">账 号：</label>
                                <input id="name" type="text" class="form-control" name="name" required autofocus>
                                <div class="invalid-feedback">
                                    Name is invalid
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input id="email" type="email" class="form-control" name="email" required>
                                <div class="invalid-feedback">
                                    Your email is invalid
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password">密 码:</label>
                                <input id="password" type="password" class="form-control" name="password" required
                                       data-eye>
                                <div class="invalid-feedback">
                                    Password is invalid
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="custom-checkbox custom-control">
                                    <input type="checkbox" name="agree" id="agree" class="custom-control-input"
                                           required="">
                                    <label for="agree" class="custom-control-label">我同意 <a href="#">Terms and
                                        Conditions</a></label>
                                    <div class="invalid-feedback">
                                        你必须同意我们的条件
                                    </div>
                                </div>
                            </div>

                            <div class="form-group m-0">
                                <button type="submit" class="btn btn-primary btn-block">
                                    注册
                                </button>
                            </div>
                            <div class="mt-4 text-center">
                                Already have an account? <a href="/user/login">登录</a>
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
</body>
</html>