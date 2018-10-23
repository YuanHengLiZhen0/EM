<%@ page contentType="text/html;charset=UTF-8"%>
<%
    /*获取工程路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>登入页面</title>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <!--用百度的静态资源库的cdn安装bootstrap环境-->
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--表单校验JS：jquery.validate-->
    <script type="text/javascript" src="<%=basePath%>js/jquery.validate.min.js" ></script>
    <script type="text/javascript" src="<%=basePath%>js/login.js" ></script>
    <style type="text/css">
        body{background: url(<%=basePath%>img/4.jpeg) no-repeat;background-size:cover;font-size: 16px;}
        .form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}
        #login_form{display: block;}
        #register_form{display: none;}
        .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
        input[type="text"],input[type="password"]{padding-left:26px;}
        .checkbox{padding-left:21px;}
    </style>
    <script type="text/javascript">
        $(function () {
            if('${msg}'!=''){
                $("#register_form").css("display", "block");
                $("#login_form").css("display", "none");
                alert('${msg}');
            }
        });
    </script>
</head>
<body>
<div class="container">
    <div class="form row">
        <form action="<%=basePath%>user/login" method="post" class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form">
            <h3 class="form-title">设备智能监控系统</h3>
            <div class="col-sm-9 col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="LoginName" name="loginName" autofocus="autofocus" maxlength="20"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Password" name="password" maxlength="8"/>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/> 记住用户名
                    </label>
                    <hr />
                    <a href="javascript:;" id="register_btn" class="">注册新用户</a>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-success pull-right" value="登录 "/>
                </div>
            </div>
        </form>
    </div>

    <div class="form row">
        <form action="<%=basePath%>user/register" method="post" class="form-horizontal col-sm-offset-3 col-md-offset-3" id="register_form">
            <h3 class="form-title">注册系统管理员</h3>
            <div class="col-sm-9 col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="Name" name="name" autofocus="autofocus"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="Age" name="age" autofocus="autofocus"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="LoginName" name="loginName" autofocus="autofocus"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Password" id="register_password" name="password"/>
                </div>
                <div class="form-group">
                    <i class="fa fa-check fa-lg"></i>
                    <input class="form-control required" type="password" placeholder="Re-type Your Password" name="rpassword"/>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-success pull-right" value="Sign Up "/>
                    <input type="button" class="btn btn-info pull-left" id="back_btn" value="Back"/>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
