<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 于冬月
  Date: 2020/12/24
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>图书馆欢迎页</title>
    <meta name="description" content="">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/font-awesome.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/templatemo-style.css">
    <script src="/js/vendor/modernizr-2.6.2.min.js"></script>
    <script src="/js/vendor/jquery-1.10.2.min.js"></script>
    <script src="/js/min/plugins.min.js"></script>
    <script src="/js/min/main.min.js"></script>
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript" src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $("#xxxx1").submit(function () {
                if ($("#book-name").val() == '' || $("#book-isbn").val() == '' || $("#book-price").val() == '' || $("#book-pages").val() == '' || $("#book-publisher").val() == '' || $("#file").val() == '') {
                    alert("封面和价格等信息都不能为空值");
                }
            });
            $("#ddd1").submit(function () {
                    if ($("#user-name").val() == '' || $("#user-old-password").val() == '' || $("#user-new-password").val() == '') {
                        alert("不能为空");
                        return false;
                    }
                    var r;
                    $.ajax({
                        type: "Post",//请求类型
                        url: "/user/doLogin",//请求的url
                        data: {name: $("#user-name").val(), password: $("#user-old-password").val()},//请求参数
                        dataType: "text",//ajax接口（请求url）返回的数据类型
                        cache: false,
                        async: false,
                        success: function (data) {//data：返回数据（json对象）
                            if (data === "success") {//name为空，错误提示
                                alert("修改成功，重新登陆吧！");
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
                }
            );
        })
    </script>

</head>
<body>
<!-- SIDEBAR -->
<div class="sidebar-menu hidden-xs hidden-sm">
    <div class="top-section">
        <div class="profile-image">
            <img src="/images/profile.jpg" alt="Volton">
        </div>
        <h3 class="profile-title">Volton</h3>
        <p class="profile-description">Pro Photography</p>
    </div> <!-- top-section -->
    <div class="main-navigation">
        <ul class="navigation">
            <li><a href="#top"><i class="fa fa-globe"></i>欢迎来到这</a></li>
            <li><a href="#about"><i class="fa fa-pencil"></i>关于图书馆</a></li>
            <li><a href="#projects"><i class="fa fa-paperclip"></i>现有---藏书</a></li>
            <li><a href="#contact"><i class="fa fa-link"></i>添加新图书</a></li>
            <li><a href="#update"><i class="fa fa-adjust"></i>修改---密码</a></li>
        </ul>
    </div> <!-- .main-navigation -->
    <div class="social-icons">
        <ul>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
            <li><a href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
    </div> <!-- .social-icons -->
</div> <!-- .sidebar-menu -->

<div class="banner-bg" id="top" style="background: url(/images/a.jpg)">
    <div class="banner-overlay"></div>
    <div class="welcome-text">
        <h2>欢迎来到 | 图书管理网站</h2>
        <h5>这是一个小型的图书管理网站，能够讲你的图书全部收录于此，便于快递查找你的现有图书</h5>
    </div>
</div>

<!-- MAIN CONTENT -->
<div class="main-content">
    <div class="fluid-container">

        <div class="content-wrapper">
            <!-- ABOUT -->
            <div class="page-section" id="about">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="widget-title">关于“我”</h4>
                        <div class="about-image">
                            <img src="/images/8.jpg" alt="about me">
                        </div>
                        <p>我是一个小型的服务网站 <a rel="nofollow" href="http://www.templatemo.com/page/1">主要应用于图书管理</a> from
                            <span class="blue">template</span><span class="green">mo</span>
                            我被创建在2020年12月24日，主要由
                            <strong>spring,springmvc,mabatis,mysql,html,css,javascript,jquery,ajax,jsp,jstl,</strong>
                            搭建完成，后续会逐渐演变由<strong>springboot,mybatis,dubbo,nacos,vue,react,node.js,redis</strong>
                            搭建的项目
                        </p>
                        <hr>
                    </div>
                </div> <!-- #about -->
            </div>

            <!-- PROJECTS -->
            <div class="page-section" id="projects">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="widget-title">现有藏书</h4>
                        <p>
                            全球最大图书搜索网站将于12月24日成立，该网站将与美国纽约公共图书馆以及哈佛大学、斯坦福大学、密歇根大学和牛津大学的图书馆合作，将这些著名图书馆的馆藏图书扫描制作成电子版放到网上供读者阅读。届时，此项目将成为全球最大的网上图书馆。</p>
                    </div>
                </div>
                <div class="row projects-holder">
                    <c:forEach items="${list}" var="book" varStatus="xh">
                        <div class="col-md-4 col-sm-6">
                            <div class="project-item">
                                <img alt=""
                                <c:if test="${xh.count==1}"> src="/images/1.jpg"</c:if>
                                     <c:if test="${xh.count==2}">src="/images/2.jpg"</c:if>
                                     <c:if test="${xh.count==3}">src="/images/3.jpg"</c:if>
                                     <c:if test="${xh.count==4}">src="/images/4.jpg"</c:if>
                                     <c:if test="${xh.count==5}">src="/images/5.jpg"</c:if>
                                     <c:if test="${xh.count==6}">src="/images/6.jpg"</c:if>
                                     <c:if test="${xh.count==7}">src="/images/6.jpg"</c:if>
                                     <c:if test="${xh.count==8}">src="/images/6.jpg"</c:if>
                                     <c:if test="${xh.count==9}">src="/images/6.jpg"</c:if>>
                                <div class="project-hover">
                                    <div class="inside">
                                        <div style="width: 115px;height: 155px">
                                            <img src="/images/${book.cover}" alt="">
                                        </div>
                                        <div style=" float: right">
                                            <c:choose>
                                                <c:when test="${userLogin.id == book.user.id}">
                                                    <td><a href="/book/update?id=${book.id}">修改</a>&nbsp;&nbsp;&nbsp; <a
                                                            href="/book/deleteBook?id=${book.id}">删除</a></td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td style="color: red; font-size: 8px;">不可操作</td>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <h5><a href="#">《${book.name}》</a></h5>
                                        <p>出版社：${book.publisher}</p>
                                        <p>isbn：${book.isbn}</p>
                                        <p>图书价格：￥${book.price}</p>
                                        <p>图书页数：${book.pages}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <%--                        <div class="col-md-4 col-sm-6">--%>
                    <%--                            <div class="project-item">--%>
                    <%--                                <img src="/images/1.jpg" alt="">--%>
                    <%--                                <div class="project-hover">--%>
                    <%--                                    <div class="inside">--%>
                    <%--                                        <h5><a href="#">这是一本书</a></h5>--%>
                    <%--                                        <p>一本添加完很久的书</p>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                </div> <!-- .projects-holder -->
            </div>
            <div class="container" align="center">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="/book/pageBean/1">首页</a></li>
                    <li class="page-item"><a class="page-link" href="/book/pageBean/${pageBean.nowPage-1}">上一页</a></li>
                    <li class="page-item"><a class="page-link" href="/book/pageBean/${pageBean.nowPage+1}">下一页</a></li>
                    <li class="page-item"><a class="page-link" href="/book/pageBean/${pageBean.endPage}">末页</a></li>
                </ul>
            </div>
            <hr>

            <!-- CONTACT -->
            <div class="page-section" id="contact">
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="widget-title">添加图书</h4>
                        <p>请依次选择你要添加的图书内容</p>
                    </div>
                </div>
                <div class="row">
                    <form action="/book/insert" method="post" class="contact-form" enctype="multipart/form-data"
                          id="xxxx1">
                        <fieldset class="col-md-4 col-sm-6">
                            <input type="text" name="name" id="book-name" placeholder="Book Name...">
                        </fieldset>
                        <fieldset class="col-md-4 col-sm-6">
                            <input type="text" name="isbn" id="book-isbn" placeholder="Book Isbn...">
                        </fieldset>
                        <fieldset class="col-md-4 col-sm-12">
                            <input type="text" name="price" id="book-price" placeholder="Book Price...">
                        </fieldset>
                        <fieldset class="col-md-4 col-sm-12">
                            <input type="text" name="publisher" id="book-publisher" placeholder="Book Publisher...">
                        </fieldset>
                        <fieldset class="col-md-4 col-sm-12">
                            <input type="text" name="pages" id="book-pages" placeholder="Book Pages...">
                        </fieldset>
                        <fieldset class="col-md-4 col-sm-12">
                            <input type="hidden" name="userId" id="user-id" value="${userLogin.id}">
                        </fieldset>
                        <fieldset class="col-md-12 col-sm-12">
                            <p> 选择图书封面 <input type="file" class="button big default" name="file" id="file"></p>
                        </fieldset>
                        <fieldset class="col-md-12 col-sm-12">
                            <button type="submit" class="btn btn-danger btn-block">
                                提交
                            </button>
                        </fieldset>
                    </form>
                </div> <!-- .contact-form -->
                <hr>
                <div class="page-section" id="update">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="widget-title">修改密码</h4>
                            <p>请依次输入你的账号用户名和密码</p>
                        </div>
                    </div>
                    <div class="row">
                        <form action="/user/update" method="post" class="contact-form" id="ddd1"
                              enctype="multipart/form-data">
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="text" name="name" id="user-name" placeholder="User Name...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-6">
                                <input type="password" name="old-password" id="user-old-password"
                                       placeholder="User Old password...">
                            </fieldset>
                            <fieldset class="col-md-4 col-sm-12">
                                <input type="password" name="password" id="user-new-password"
                                       placeholder="User New password...">
                            </fieldset>
                            <fieldset class="col-md-12 col-sm-12">
                                <button type="submit" class="btn btn-danger btn-block">
                                    修改
                                </button>
                                <%--                                <input type="submit" id="updatePassword" class="button big default" value="修改">--%>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <hr>
                <div class="row" id="footer">
                    <div class="col-md-12 text-center">
                        <p class="copyright-text">Copyright &copy; 2084 Company Name | More Templates</p>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
