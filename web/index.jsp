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
            margin-bottom: 0;
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
        .login-title {
            display: block;
            width: 100%;
            height: 100px;
            line-height: 100px;
            text-align: center;
            font-size: 30px;
        }

        .login-box {
            background: #5f708d;
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

        .login-box-title {
            width: 100%;
            margin-bottom: 20px;
            font-size: 20px;
            color: #ffffff;

        }

        .login-item {
            width: 100%;
            margin-bottom: 20px;
        }

        .login-label {
            font-size: 16px;
            color: #ffffff;
        }
        .login-button {
             float: right;
         }
        .login-input {
            width: 228px;

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
    <%--<img class="login-title" src="img/index/logo.jpg" alt="IDP数据中心动力管控系统"/>--%>
    <div class="login-box">
        <div class="login-box-title">用户登录</div>
        <form id="login" name="login" action="/IDP/login.action" method="post">
            <div class="login-item">
                <label for="login_username" class="login-label">用户名&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="login-input" type="text" name="username" value="" id="login_username">
            </div>
            <div class="login-item">
                <label for="login_password" class="login-label">密&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="login-input" type="text" name="password" value="" id="login_password">
            </div>
            <div class="login-item">
                <button class="btn btn-primary login-button" type="submit">登录</button>
                <%--<input type="submit" value="登录" id="login_0">--%>
            </div>
       </form>
    </div>

    <%--<table width="900" height="400" border="0" align="center">--%>
        <%--<tr>--%>
            <%--<td width="100%" height="120">--%>
                <%--<table>--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--<img src="img/index/logo.jpg" width="100%" height="120">--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
            <%--</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td height="10" class="firsttoolbar">--%>
            <%--</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td>--%>
                <%--<table>--%>
                    <%--<tr>--%>
                        <%--<td width="47%" class="leftline">--%>
                            <%--<table align="center">--%>
                                <%--<tr>--%>
                                    <%--<td colspan="2">--%>
                                        <%--<img name="" src="img/index/in_user.png" alt="">--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                            <%--</table>--%>
                           <%----%>
                        <%--</td>--%>

                        <%--<td width="53%" class="rightline" align="center">--%>
                            <%--<img src="img/index/in_banner.jpg">--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
            <%--</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td align="right" class="secondtoolbar" height="20">--%>
            <%--</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td align="right" height="20" class="fontbottom">--%>
                <%--北京中大科慧科技发展有限公司--%>
            <%--</td>--%>
        <%--</tr>--%>

    <%--</table>--%>
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
