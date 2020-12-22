<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>书籍管理-用户登录</title>
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/my-login.css">
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="../js/my-login.js"></script>
    <script>
        $(function () {
            $("#ccc1").click(function () {
                alert($("#name").val());
                alert($("#password").val());
                $.ajax({
                    url: "http://localhost:8083/user/doLogin?name=" + $("#name").val() + "&password=" + $("#password").val(),
                    type: 'post',
                    success: function (data) {
                        if (data == "success") {
                            // alert("登录成功");
                            window.location.href = "http://localhost:8083/book/list";
                        } else {
                            alert("denglushibai");
                        }
                    }
                });
            })
        })
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
                        <%--                        action="/user/doLogin"--%>
                        <form method="post" class="my-login-validation" novalidate="">
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
                            <div hidden="hidden" id="xxx"></div>
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


<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>

</body>
</html>

