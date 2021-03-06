<%--
  Created by IntelliJ IDEA.
  User: OLDMOTO
  Date: 2019/7/3
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>adminBestore</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="../css/ready.css">
    <link rel="stylesheet" href="../css/demo.css">
</head>
<body>
<c:if test="${username==null}">
    <a href="adminLogin.jsp"><h2>请登录！</h2></a>
</c:if>
<c:if test="${username!=null}">
<div class="wrapper">
    <div class="main-header">
        <div class="logo-header">
            <a href="/login?username=admin&password=admin"  class="logo">
                ${bestore.store_name}
            </a>
            <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
        </div>
        <nav class="navbar navbar-header navbar-expand-lg">
            <div class="container-fluid">

                <form class="navbar-left navbar-form nav-search mr-md-3" action="">
                    <div class="input-group">
                        <input type="text" placeholder="Search ..." class="form-control">
                        <div class="input-group-append">
								<span class="input-group-text">
									<i class="la la-search search-icon"></i>
								</span>
                        </div>
                    </div>
                </form>
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                    <li class="nav-item dropdown hidden-caret">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="la la-envelope"></i>
                        </a>
                    </li>
                    <li class="nav-item dropdown hidden-caret">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="la la-bell"></i>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="../images/user.jpg" alt="user-img" width="36" class="img-circle"><span >Harper Cheung</span> </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="sidebar">
        <div class="scrollbar-inner sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="../images/user.jpg">
                </div>
                <div class="info">
                    <a class="" data-toggle="collapse" href="#" aria-expanded="true">
                        <span>Harper Cheung</span>
                        <span class="user-level">店铺管理员</span>
                    </a>
                </div>
            </div>
            <ul class="nav">
                <li class="nav-item active">
                    <a href="#">
                        <i class="la la-dashboard"></i>
                        <p>店铺信息管理</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="adminProduct.jsp">
                        <i class="la la-bell"></i>
                        <p>商品信息管理</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="adminBrand.jsp">
                        <i class="la la-cog"></i>
                        <p>加盟信息管理</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#">
                        <i class="la la-weibo"></i>
                        <p>招聘信息管理</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="adminLogin.jsp">
                        <i class="la la-power-off"></i>
                        <p>退出登录</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <div class="content">
            <div class="container-fluid">
                <h4 class="page-title">店铺信息管理</h4>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <form action="/updateStore_name" method="get">
                                        <label ><h6>修改店铺名名称</h6></label>
                                        <input type="text" class="form-control input-pill" placeholder="${bestore.store_name}" name="store_name"><br>
                                        <input type="submit" class="btn btn-success" value="发布">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <form action="/updateStore_place" method="get">
                                        <label ><h6>修改店铺名地址</h6></label>
                                        <input type="text" class="form-control input-pill" placeholder="${bestore.store_place}" name="store_place"><br>
                                        <input type="submit" class="btn btn-success" value="发布">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group">
                                    <form action="/updateStore_zipcode" method="get">
                                        <label ><h6>修改店铺名邮编</h6></label>
                                        <input type="text" class="form-control input-pill" placeholder="${bestore.store_zipcode}" name="store_zipcode"><br>
                                        <input type="submit" class="btn btn-success" value="发布">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</c:if>
</body>
<script src="../js/core/jquery.3.2.1.min.js"></script>
<script src="../js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="../js/core/popper.min.js"></script>
<script src="../js/core/bootstrap.min.js"></script>
<script src="../js/plugin/chartist/chartist.min.js"></script>
<script src="../js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="../js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="../js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="../js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="../js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="../js/plugin/chart-circle/circles.min.js"></script>
<script src="../js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="../js/ready.min.js"></script>
<script src="../js/demo.js"></script>
</html>
