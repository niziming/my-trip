<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
