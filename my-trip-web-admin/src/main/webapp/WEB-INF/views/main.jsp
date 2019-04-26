<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%--代表HTML5--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin | Management</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="static/assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="static/assets/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="static/assets/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="static/assets/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="static/assets/css/skins/_all-skins.min.css">
    <%--谷歌字体--%>
    <link href='https://fonts.font.im/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9] 让IE8支持媒体查询 -->
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>TRIP</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Trip</b>Admin</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="static/assets/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">${user.uname}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="static/assets/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    ${user.email}<br>

                                    <small>登陆时间-${timestamp}</small>
                                </p>
                            </li>

                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">个人</a>
                                </div>
                                <div class="pull-right">
                                    <a href="/signout" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="static/assets/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${user.uname}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>

            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">管理菜单 | Management</li>
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-users"></i> <span>用户管理</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="#"><i class="fa fa-circle-o"></i>用户列表</a></li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                控制面板|
                <small>操作</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-users"></i> Operate </a></li>
                <li class="active">Users</li>
            </ol>
        </section>

        <div align="center">
            <h2>登陆成功</h2>
            <table style="border: #0a0a0a 1px solid">
                <tr style="border: #0a0a0a 1px solid">
                    <td>登陆时间</td>
                    <td>用户ID</td>
                    <td>用户名</td>
                    <td>登陆邮箱</td>
                    <td>登陆密码</td>
                    <td>注册时间</td>
                    <td></td>
                </tr>
                <tr>
                    <td>${sessionScope.timestamp}</td>
                    <td>${sessionScope.user.uid}</td>
                    <td>${sessionScope.user.uname}</td>
                    <td>${sessionScope.user.email}</td>
                    <td>${sessionScope.user.pwd}</td>
                    <td>${sessionScope.user.regDate}</td>
                </tr>
                <tr align="right">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <form action="/signout" method="post">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">注销</button>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <!-- /.content-wrapper -->

    <%--main-footer--%>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2019 <a href="https://niziming.github.io/">SWUST JermaineNee</a>.</strong> All rights
        reserved.
    </footer>
    <%--/.main-footer--%>
</div>


<!-- jQuery 3 -->
<script src="static/assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="static/assets/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="static/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="static/assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="static/assets/bower_components/fastclick/lib/fastclick.js"></script>

<!-- AdminLTE App -->
<script src="static/assets/js/adminlte.min.js"></script>
</body>
</html>
