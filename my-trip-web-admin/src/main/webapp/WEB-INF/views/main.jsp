<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--代表HTML5--%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin | Management</title>
    <jsp:include page="../includes/header.jsp"/>

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
    <%--顶部导航--%>
    <jsp:include page="../includes/top_navigate.jsp"/>
    <%--侧边菜单--%>
    <jsp:include page="../includes/leftside_menu_navigate.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                欢迎登陆管理员|
                <small>Welcome to management page.</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-users"></i> Admin </a></li>
            </ol>
        </section>
        <br/>
        <br/>
        <%--table start--%>
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">个人信息</h3>
                </div>

                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>登陆时间|Time</th>
                            <th>用户ID|Uid</th>
                            <th>用户名|Uname</th>
                            <th>邮箱|Email</th>
                            <th>注册时间|Date</th>
                        </tr>
                        <tr>
                            <td>${timestamp}</td>
                            <td>${user.uid}</td>
                            <td>${user.uname}</td>
                            <td><span class="label label-primary">${user.email}</span></td>
                            <td><fmt:formatDate value="${user.regDate}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.content-wrapper -->
    </div>
    <!-- /.content-wrapper -->
    <%--版权--%>
    <jsp:include page="../includes/copyright.jsp" />
</div>
<%--css--%>
<jsp:include page="../includes/footer.jsp"/>

</body>
</html>
