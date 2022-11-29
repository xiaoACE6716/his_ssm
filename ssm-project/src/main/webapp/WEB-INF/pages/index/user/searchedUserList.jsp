<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xiaoACE
  Date: 2022/6/16
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
</head>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
      crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
      integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
      crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
        integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
        crossorigin="anonymous"></script>

<body style="width: 85%">

<div>
    <div style="position: relative; left: 30px; top: -10px;">
        <div class="page-header">
            <h3>用户列表</h3>
        </div>
    </div>
</div>

<div class="btn-toolbar" role="toolbar" style="background-color: #F7F7F7; height: 50px; position: relative;left: 30px; width: 110%; top: 20px;">

    <%--    搜索表单--%>
    <form class="form-inline" action="/searchUser.do">

        <%--            新增用户按钮，与搜索表单无关--%>
        <button type="button"  onclick="window.location.href='toAddUser.do'"><span class="glyphicon glyphicon-plus"></span>新建用户</button>

        <%--            搜索用户--%>
        <div class="form-group">
            <label for="exampleInputName2">搜索:</label><input type="text" class="form-control" id="exampleInputName2" name="value" placeholder="要搜索的内容" >
            <button type="submit" ><span class="glyphicon glyphicon-search"></span>查找</button>
        </div>

    </form>

</div>

<div style="position: relative; left: 20px; top: 40px; width: 110%">
    <table class="table table-hover table-bordered table-sm" >
        <thead>
        <tr style="color: #B3B3B3;">
            <td>序号</td>
            <td>名字</td>
            <td>职位</td>
            <td>部门</td>
            <td>角色</td>
            <td>修改用户</td>
            <td>删除用户</td>
        </tr>
        </thead>
        <c:forEach items="${users}" var="user">
            <tbody>
            <tr class="active">
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.job}</td>
                <td>${user.deptid}</td>
                <td>${user.roleid}</td>
                <td><a href="toUpdateUser.do?id=${user.id}">修改</a></td>
                <td><a href="deleteUser.do?id=${user.id}">删除</a></td>
            </tr>
            </tbody>
        </c:forEach>

    </table>
</div>

</body>
</html>
