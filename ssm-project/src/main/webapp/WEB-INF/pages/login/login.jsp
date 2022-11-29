<%--
  Created by IntelliJ IDEA.
  User: xiaoACE
  Date: 2022/10/17
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>登录页面</title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <%--图标库--%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <script type="text/javascript">
        //当页面加载完之后，再给登录按钮添加登录功能 :)
        $(function() {
            //给整个浏览器窗口添加键盘按下事件
            $(window).keydown(function(e) {
                //如果按的是回车键，则提交登录请求
                if (e.keyCode == 13) {
                    $("#loginBtn").click();
                }
            });
            //给"登录"按钮添加单击事件
            $("#loginBtn").click(function() {
                //获取登录所需的数据
                var loginAccount = $.trim($("#name").val());
                var password = $.trim($("#password").val());
                if (loginAccount == "") {
                    alert("用户名不能为空");
                    return;
                }
                if (password == "") {
                    alert("密码不能为空");
                    return;
                }
                //显示正在验证
                $("#msg").text("正在验证....");
                //如果符合要求，就发送请求
                $.ajax({
                    url: "login.do",
                    data: {
                        loginAccount: loginAccount,
                        password: password
                    },
                    type: 'POST',
                    dataType: 'json',
                    success: function(data) {
                        if (data.code == "1") {
                            //登录成功
                            window.location.href = "toIndex.do";
                        } else {
                            //登录失败，提示信息
                            $("#msg").html(data.message);
                        }
                    },
                    beforeSend: function() {
                        //当ajax向后台发送请求之前，会自动执行本函数；
                        //该函数的返回值能够决定ajax是否真正向后台发送请求：
                        //如果该函数返回true,则ajax会真正向后台发送请求；否则，如果该函数返回false，则ajax放弃向后台发送请求。
                        $("#msg").text("正在努力验证....");
                        return true;
                    }
                })
            })
        });
    </script>

    <link href="css/login.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="container">
    <div class="form row">
        <form class="form-horizontal col-sm-offset-3 col-md-offset-3" action="/login.do" role="form">
            <h3 class="form-title">登录</h3>
            <div><span id="msg"></span> </div>
            <div class="col-sm-9 col-md-9">
                <div class="form-group">
                    <!--        用户名图标和用户名输入框            -->
                    <i class="fa fa-user"  aria-hidden="true" id="fa1"></i>
                    <input class="form-control" type="text" name="name" id="name" placeholder="请输入用户名" required autofocus>
                </div>
                <!--        密码图标和密码输入框                -->
                <div class="form-group">
                    <i class="fa fa-key"  aria-hidden="true" id="fa2"></i>
                    <input class="form-control " type="password" name="password" id="password" placeholder="请输入密码" required>
                </div>

                <!--         登录按钮           -->
                <div class="form-group">
                    <button type="button" class="btn btn-success pull-right" id="loginBtn">登录</button>
                </div>

            </div>
        </form>
    </div>
</div>
</body>

</html>