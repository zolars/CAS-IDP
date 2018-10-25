<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <title>IDP数据中心动力管控系统</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">
    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.4.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/form.css" rel="stylesheet">
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="css/reset.css">-->
    <link rel="stylesheet" href="css/jquery.hotspot.css">
    <link rel="stylesheet" type="text/css" href="css/deviceManager.css">
    <link href="css/menu.css" rel="stylesheet">

    <link href="css/mycss.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css">

    <style>
        .location-select-item {
            width: 120px;
            margin-right: 12px;
        }
    </style>
</head>

<body id="skin-blur-blue">

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>
<%
    String userid = (String)session.getAttribute("userid");
    if(userid == null) {
%>
<script>
    alert('您还未登录或您的认证已过期, 请先登陆.');
    //  window.location.href = 'http://localhost:8082/index.jsp';
    window.location.href = <%=basePath%>+'index.jsp';
    window.location.href = 'http://localhost:8082/index.jsp';
</script>
<%
    }
%>

    <header id="header" class="media">
        <div class="header-left">
            <a href="" id="menu-toggle"></a>
            <%-- <a class="logo pull-left" href="province.jsp">IDP数据中心</a>--%>
            <img src="img/index/logo.jpg" alt="">
            <img src="/img/index/logo.jpg" alt="">
        </div>
        <div class="media-body">
            <div class="media" id="top-menu">
                <div class="pull-left location-select">
                    <select class="form-control location-select-item" id="province_code" name="province_code">
                        <option value="">请选择</option>
                    </select>

                    <script>
                        $("#province_code").change(function(){
                            var options = $("#province_code option:selected");
                            $. cookie('opinion1', options.text(), {expires: 1, path: '/'});
                            getCity();
                        })
                    </script>

                    <select class="form-control location-select-item" id="city_code" name="city_code">
                        <option value="">请选择</option>
                    </select>

                    <script>
                        $("#city_code").change(function(){
                            var options = $("#city_code option:selected");
                            $. cookie('opinion2', options.text(), {expires: 1, path: '/'});
                            getComproom();
                        })

                    </script>

                    <select class="form-control location-select-item" id="comproom_code" name="comproom_code">
                        <option value="">请选择</option>
                    </select>

                    <script>
                        $("#comproom_code").change(function(){
                            var options = $("#comproom_code option:selected");
                            $. cookie('opinion3', options.text(), {expires: 1, path: '/'});
                        })
                    </script>

                </div>

                <!-- 注销按钮 -->
                <div class="pull-right">
                    <li><a href="index.jsp">注销</a></li>
                </div>

                <div class="pull-right">欢迎用户${username} 登录</div>

            </div>
        </div>
    </header>

    <div class="clearfix"></div>

    <section id="main" class="p-relative" role="main">
        <!-- Sidebar -->
        <!-- 动态加载菜单项 -->
        <aside id="sidebar">
            <ul id="ulbar" class="list-unstyled side-menu" style="width: 100%!important;padding-top: 20px;">
            </ul>
        </aside>
    </section>

    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <!-- <script src="js/jquery-3.3.1.js"></script> -->

    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Charts -->
    <script src="js/charts/jquery.flot.js"></script>
    <!-- Flot Main -->
    <script src="js/charts/jquery.flot.time.js"></script>
    <!-- Flot sub -->
    <script src="js/charts/jquery.flot.animator.min.js"></script>
    <!-- Flot sub -->
    <script src="js/charts/jquery.flot.resize.min.js"></script>
    <!-- Flot sub - for repaint when resizing the screen -->

    <script src="js/sparkline.min.js"></script>
    <!-- Sparkline - Tiny charts -->
    <script src="js/easypiechart.js"></script>
    <!-- EasyPieChart - Animated Pie Charts -->
    <script src="js/charts.js"></script>
    <!-- All the above chart related functions -->

    <!-- Map -->
    <script src="js/maps/jvectormap.min.js"></script>
    <!-- jVectorMap main library -->
    <script src="js/maps/usa.js"></script>
    <!-- USA Map for jVectorMap -->

    <!--Media Player-->
    <script src="js/media-player.min.js"></script>
    <!-- USA Map for jVectorMap -->

    <!--  Form Related -->
    <script src="js/icheck.js"></script>
    <!-- Custom Checkbox + Radio -->

    <!-- UX -->
    <script src="js/scroll.min.js"></script>
    <!-- Custom Scrollbar -->

    <!-- Other -->
    <script src="js/calendar.min.js"></script>
    <!-- Calendar -->
    <!--<script src="js/feeds.min.js"></script> &lt;!&ndash; News Feeds &ndash;&gt;-->
    <!--HotSpot of pic-->
    <script src="js/modernizr.custom.49511.js"></script>
    <script src="js/jquery.hotspot.min.js"></script>

    <!-- All JS functions -->
    <script src="js/functions.js"></script>
    <script type="text/javascript" src="js/deviceManager.js"></script>

    <!-- 省\市\机房下拉菜单-->
    <script type="text/javascript">
        /*加载省下拉选*/

        //读取cookie中已存的机房配置
        var opinion1 = $. cookie('province_name');

        $.ajax({
            type: "post",
            url: "setProvince",
            data: {provid: opinion1},
            dataType: "json",
            success: function (data) {
                $('#province_code').append("<option value='" + opinion1 + "' selected='selected' >" + opinion1 + "</option>");
                getCity();
            },
            error: function () {
                $('#province_code').append("<option value='" + opinion1 + "' selected='selected' >" + opinion1 + "</option>");
                getCity();
            }
        });

        /*加载市下拉选*/
        function getCity() {
            var pname = $("#province_code").val();

            //读取cookie中已存的机房配置
            var opinion2 = $. cookie('opinion2');

            $("#city_code").empty();
            $("#comproom_code").empty();

            $.ajax({
                type: "post",
                url: "getCityTree",
                data: {provinceid: pname},
                dataType: "json",
                success: function (data) {

                    $('#city_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        if(obj[i].cbname == opinion2) {
                            $('#city_code').append("<option value='" + obj[i].cbname + "' selected='selected' >" + obj[i].cbname + "</option>");
                            getComproom();
                        }
                        else
                            $('#city_code').append("<option value='" + obj[i].cbname + "' >" + obj[i].cbname + "</option>");

                    }
                }
            });
        }

        /*加载机房下拉选*/
        function getComproom() {
            var cname = $("#city_code").val();

            //读取cookie中已存的机房配置
            var opinion3 = $. cookie('opinion3');

            $("#comproom_code").empty();

            $.ajax({
                type: "post",
                url: "getCompTree",
                data: {cityid: cname},
                dataType: "json",
                success: function (data) {
                    var list = data.allcomputerroom;

                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < list.length; i++) {
                        if(list[i].rname == opinion3)
                            $('#comproom_code').append("<option value='" + list[i].rid + "' selected='selected'>" + list[i].rname + "</option>");
                        else
                            $('#comproom_code').append("<option value='" + list[i].rid + "' >" + list[i].rname + "</option>");
                    }
                }
            });
        }

    </script>

    <!-- 动态加载菜单项 -->
    <script type="text/javascript">
        var menulist="<%=session.getAttribute("menulist")%>";
        var cbidstr = menulist.split(",");
        var isSystemMng = false;
        var isNewSystemMng = false;

        //处理第一个和最后一个
        cbidstr[0] = cbidstr[0].substring(1);
        cbidstr[0] = " " + cbidstr[0];

        var idx = cbidstr.length - 1;
        var len = cbidstr[idx].length;
        cbidstr[idx] = cbidstr[idx].substring(0, len - 1);

        for(var i = 0; i < cbidstr.length; i++){

            var menuname = "";
            if(cbidstr[i] == " province.jsp"){
                isSystemMng = false;
                menuname = "集中监控";
            }
            else if(cbidstr[i] == " efficiencyDevice.jsp"){
                isSystemMng = false;
                menuname = "动力设施";
            }
            else if(cbidstr[i] == " onlineDetect.jsp"){
                isSystemMng = false;
                menuname = "在线监测";
            }
            else if(cbidstr[i] == ' efficiencyAnalysis.jsp'){
                isSystemMng = false;
                menuname = "动力分析";
            }
            else if(cbidstr[i] == ' efficiencyAssessment.jsp'){
                isSystemMng = false;
                menuname = "动力评估";
            }
            else if(cbidstr[i] == ' reportChart.jsp'){
                isSystemMng = false;
                menuname = "报表功能";
            }
            else if(cbidstr[i] == ' history.jsp'){
                isSystemMng = false;
                menuname = "历史曲线";
            }
            else if(cbidstr[i].search('systemMng.jsp')){

                if(!isNewSystemMng)
                {//第一条systemMng的
                    isNewSystemMng = true;
                    menuname = "系统管理";
                    $('#ulbar').append("<li><a href='systemMng.jsp' id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
                }
                isSystemMng = true;
            }

            if(!isSystemMng) $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
        }
    </script>




</body>

</html>