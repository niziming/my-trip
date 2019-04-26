<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

<br/><br/>
<div class="col-xs-12">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">用户列表</h3>
            <div class="row" style="padding-left: 12px; padding-top: 10px;">
                <a href="#" type="button" class="btn-primary btn-sm"><i class="fa fa-plus"></i>新增用户</a>
            </div>
            <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control pull-right" placeholder="搜索...">

                    <div class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>

                    </div>
                </div>
            </div>
        </div>

        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <thead></thead>
                <tbody>
                <tr>
                    <th>用户ID|Uid</th>
                    <th>用户名|Uname</th>
                    <th>邮箱|Email</th>
                    <th>注册时间|Date</th>
                    <th>编辑|Edit</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.uid}</td>
                        <td>${user.uname}</td>
                        <td><span class="label label-primary">${user.email}</span></td>
                        <td>
                            <fmt:formatDate value="${user.regDate}" pattern="yyyy-MM-dd" />
                        </td>
                        <td >
                            <div class="btn-group">
                                <button type="button" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i>Edit</button>
                                <button type="button" class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <ul class="dropdown-menu" style="min-width:100%;">
                                    <li><a href="#" >查看</a></li>
                                    <li><a href="#" >修改</a></li>
                                    <li><a href="#" >删除</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->
</div>