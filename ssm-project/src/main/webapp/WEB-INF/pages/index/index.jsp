<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <script type="text/javascript">
        //页面加载完毕
        $(function() {

            //导航中所有文本颜色为黑色
            $(".liClass > a").css("color", "black");

            //默认选中导航菜单中的第一个菜单项
            $(".liClass:first").addClass("active");

            //第一个菜单项的文字变成白色
            $(".liClass:first > a").css("color", "white");

            //给所有的菜单项注册鼠标单击事件
            $(".liClass").click(function() {
                //移除所有菜单项的激活状态
                $(".liClass").removeClass("active");
                //导航中所有文本颜色为黑色
                $(".liClass > a").css("color", "black");
                //当前项目被选中
                $(this).addClass("active");
                //当前项目颜色变成白色
                $(this).children("a").css("color", "white");
            });

            //展示页面
            window.open("listAllUser.do", "workareaFrame");

        });
    </script>

</head>

<body style="height: 100%;height: 100%;margin: 0 0 0 0;overflow: hidden hidden">

    <!-- 我的资料 -->
    <div class="modal fade" id="myInformation" role="dialog">
        <div class="modal-dialog" role="document" style="width: 30%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
                    <h4 class="modal-title">我的资料</h4>
                </div>
                <div class="modal-body">
                    <div style="position: relative; left: 40px;">
                        姓名：<b>${sessionScope.sessionUser.name}</b><br>
                        <br> 登录帐号：
                        <b>${sessionScope.sessionUser.account}</b><br>
                        <br> 职位：
                        <b>${sessionScope.sessionUser.job}</b><br>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 修改密码的模态窗口 -->
    <div class="modal fade" id="editPwdModal" role="dialog">
        <div class="modal-dialog" role="document" style="width: 70%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
                    <h4 class="modal-title">修改密码</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="oldPwd" class="col-sm-2 control-label">原密码</label>
                            <div class="col-sm-10" style="width: 300px;">
                                <input type="text" class="form-control" id="oldPwd" style="width: 200%;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="newPwd" class="col-sm-2 control-label">新密码</label>
                            <div class="col-sm-10" style="width: 300px;">
                                <input type="text" class="form-control" id="newPwd" style="width: 200%;">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="confirmPwd" class="col-sm-2 control-label">确认密码</label>
                            <div class="col-sm-10" style="width: 300px;">
                                <input type="text" class="form-control" id="confirmPwd" style="width: 200%;">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="window.location.href='user/login.jsp';">更新</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 退出系统的模态窗口 -->
    <div class="modal fade" id="exitModal" role="dialog">
        <div class="modal-dialog" role="document" style="width: 30%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
                    <h4 class="modal-title">离开</h4>
                </div>
                <div class="modal-body">
                    <p>您确定要退出系统吗？</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="window.location.href='user/login.jsp';">确定</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 顶部 -->
    <div id="top" style="height: 50px; background-color: #3C3C3C; width: 100%;">
        <div style="position: absolute; top: 5px; left: 0px; font-size: 30px; font-weight: 400; color: white; font-family: 'times new roman'">管理系统</div>
        <div style="position: absolute; top: 15px; right: 15px;">
            <ul>
                <li class="dropdown user-dropdown">
                    <a href="javascript:void(0)" style="text-decoration: none; color: white;" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span> ${sessionScope.sessionUser.name} <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right" >
                        <li><a href="javascript:void(0)" data-toggle="modal" data-target="#myInformation"><span class="glyphicon glyphicon-file"></span> 我的资料</a></li>
                        <li><a href="javascript:void(0)" data-toggle="modal" data-target="#editPwdModal"><span class="glyphicon glyphicon-edit"></span> 修改密码</a></li>
                        <li><a href="javascript:void(0);" data-toggle="modal" data-target="#exitModal"><span class="glyphicon glyphicon-off"></span> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <!-- 中间 -->
    <div id="center" style="position: absolute;top: 50px; bottom: 30px; left: 0px; right: 0px;">

        <!-- 导航 -->
        <div id="navigation" style="left: 0px; width: 12%; position: relative; height: 100%; overflow:auto;">

            <ul id="no1" class="nav nav-pills nav-stacked">
                <li class="liClass"><a href="listAllUser.do" target="workareaFrame"><span class="glyphicon glyphicon-user"></span> 用户维护</a></li>
            </ul>

            <!-- 分割线 -->
            <div id="divider1" style="position: absolute; top : 0px; right: 0px; width: 1px; height: 100% ; background-color: #B3B3B3;"></div>
        </div>

        <!-- 工作区 -->
        <div id="workarea" style="position: absolute; top : 0px; left: 12%; width: 72%; height: 100%;">
            <iframe style="border-width: 0px; width: 100%; height: 100%; object-fit: contain;display: inline-block" name="workareaFrame"></iframe>
        </div>

    </div>

    <div id="divider2" style="height: 1px; width: 100%; position: absolute;bottom: 30px; background-color: #B3B3B3;"></div>

    <!-- 底部 -->
    <div id="down" style="height: 30px; width: 100% ; position: absolute;bottom: 0px;"></div>

</body>

</html>