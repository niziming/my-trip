<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%--代表HTML5--%>
<!DOCTYPE html>
<html>
<%--Header Begin--%>
<head>
    <title>MyShop | 登陆</title>
    <jsp:include page="../includes/header.jsp" />
</head>
<%--Header End--%>

<body class="hold-transition login-page">

<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>Admin</b>登陆</a>
    </div>
    <%--/.UserService.-logo--%>
    <div class="login-box-body">
        <p class="login-box-msg">欢迎管理员登陆</p>

        <%--Denger alert--%>
        <c:if test="${msg != null}">
            <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    ${msg}
            </div>
        </c:if>
        <%--/.alert--%>

        <form action="/login" method="post">
            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="邮箱" name="email"/>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>


            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码" name="pwd"/>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input name="isRemember" type="checkbox"> 记住我?
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登陆</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <a href="#">忘记密码?</a><br>
    </div>
    <!-- /.UserService-box-body -->
</div>
<!-- /.UserService-box -->

<jsp:include page="../includes/footer.jsp" />

</body>
</html>
