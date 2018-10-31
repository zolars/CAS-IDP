<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%
    session.invalidate(); //注销
%>

<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="css/indexstyle.css">
    <link rel="stylesheet" href="css/bootstrap-3.3.4.css">
    <style>
        form {
            margin-top: 60px;
            margin-left: 200px;
        }
        label {
            margin-bottom: 0;
            font-weight: normal;
        }
        .login-container {
            width: 100%;
            height: 100%;
            position: relative;
            background: url("img/index/in_banner.jpg") no-repeat;
            background-size: 100% 100%;
        }

        .login-box {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            box-sizing: content-box;
            width: 300px;
            height: 180px;
            padding: 20px;
        }

        .login-item {
            width: 100%;
            margin-bottom: 20px;
        }

        .login-button {
             float: right;
         }

        .login-input {
            width: 160px;
        }

        .pic{
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
        }
    </style>

</head>

<body>

<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>

<!--清除所有cookies-->
<script>
    var cookies = document.cookie.split(";");

    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i];
        var eqPos = cookie.indexOf("=");
        var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
</script>

<div class="login-container">

    <img class="pic"  src="img/index/content-banner.png">
    
    <div class="login-box">
        <form id="login" name="login" action="/IDP/login.action" method="post">
            <div class="login-item">
                <input class="login-input" type="text" name="username" value="" id="login_username">
            </div>
            <div class="login-item">
                <input class="login-input" type="text" name="password" value="" id="login_password">
            </div>
            <div class="login-item">
                <button class="btn btn-primary login-button" type="submit">登录</button>
            </div>
       </form>
    </div>
</div>



<div id="loading" style="position:absolute;left:400px;top:400px">
    <img src="img/index/loading.gif">
</div>

<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="js/jquery-3.3.1.js"></script>

<!-- loading button hidden/show-->
<script type="text/javascript">
    $("#loading").hide();

    $("#sublogin").click(function () {
        $("#loading").show();
    })
</script>

</body>
</html>
