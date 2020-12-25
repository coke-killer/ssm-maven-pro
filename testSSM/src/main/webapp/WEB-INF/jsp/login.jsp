<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>书籍管理-用户登录</title>
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/my-login.css">
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="/js/my-login.js"></script>
    <script>
        $(function () {
            $(".my-login-validation").submit(function () {
                var r;
                $.ajax({
                    type: "Post",//请求类型
                    url: "/user/doLogin",//请求的url
                    data: {name: $("#name").val(), password: $("#password").val()},//请求参数
                    dataType: "text",//ajax接口（请求url）返回的数据类型
                    cache: false,
                    async: false,
                    success: function (data) {//data：返回数据（json对象）
                        if (data === "success") {//name为空，错误提示
                            r = true;
                        } else if (data === "failed") {
                            alert("密码错误");
                            r = false;
                        }
                    },
                    error: function (data) {
                    }
                });
                return r;
            });
        });
    </script>
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="/images/logo.jpg" alt="logo">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">登 录</h4>
                        <form method="post" class="my-login-validation" novalidate="" action="/book/pageBean/1">
                            <div class="form-group">
                                <label for="name">姓 名：</label>
                                <input id="name" type="text" class="form-control" name="name" value="" required
                                       autofocus>
                                <div class="invalid-feedback">
                                    Name is invalid
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password">密 码：
                                    <a href="/user/updatePassword" class="float-right">
                                        忘记密码?
                                    </a>
                                </label>
                                <input id="password" type="password" class="form-control" name="password" required
                                       data-eye>
                                <div class="invalid-feedback">
                                    Password is required
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="custom-checkbox custom-control">
                                    <input type="checkbox" name="remember" id="remember" class="custom-control-input">
                                    <label for="remember" class="custom-control-label">记住它</label>
                                </div>
                            </div>

                            <div class="form-group m-0">
                                <button type="submit" class="btn btn-primary btn-block" id="ccc1">
                                    Login
                                </button>
                            </div>
                            <div class="mt-4 text-center">
                                你有账号么小兄弟? <a href="/user/register">点我生成一个吧</a>
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

