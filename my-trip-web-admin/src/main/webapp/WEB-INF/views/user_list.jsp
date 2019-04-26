<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--代表HTML5--%>
<!DOCTYPE html>
<html>
<head>
    <title>用户管理 | UserInfo</title>
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
        <%--管理员信息界面--%>

        <jsp:include page="user/list.jsp"/>
        <!-- /.content-wrapper -->
    </div>
    <!-- /.content-wrapper -->
    <%--版权--%>
    <jsp:include page="../includes/copyright.jsp"/>
</div>
<%--css--%>
<jsp:include page="../includes/footer.jsp"/>

</body>
</html>
