<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%--代表HTML5--%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin | Management</title>
    <jsp:include page="../includes/header.jsp" />

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
                用户管理|
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
                        <form action="/signout" method="get">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">注销</button>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <!-- /.content-wrapper -->
    <%--版权--%>
    <jsp:include page="../includes/copyright.jsp" />

</div>

<%--css--%>
<jsp:include page="../includes/footer.jsp" />

</body>
</html>
