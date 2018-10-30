<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="grabData.DataOnline" %>
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
    <link href="css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">
    <link href="css/form.css" rel="stylesheet">
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.hotspot.css">
    <link href="css/menu.css" rel="stylesheet">
    <link rel="stylesheet" href="css/custom-echart-toolbar.css">
    <link href="css/mycss.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css">

</head>

<body id="skin-blur-blue">

<!--告警弹窗-->
<script type="text/javascript" src = "js/websocketconnect.js"></script>

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>
<%
    String userid = (String)session.getAttribute("userid");
    if(userid == null) {
%>
<script>
    alert('您还未登录或您的认证已过期, 请先登陆.');
    window.location.href = <%=basePath%>+'index.jsp';
</script>
<%
    }
%>

<header id="header" class="media">
    <div class="header-left">
        <a href="" id="menu-toggle"></a>
        <img src="img/index/logo.jpg" alt="" class="header-img">
    </div>
    <div class="header-right">
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
            <div class="pull-right header-right-text">
                <a class="header-logout" href="index.jsp">注销</a>
            </div>
            <div class="pull-right header-right-text">欢迎用户${username}登录</div>

        </div>
    </div>
</header>

    <div class="clearfix"></div>

    <section id="main" class="p-relative" role="main">
        <!-- Sidebar -->
        <!-- 动态加载菜单项 -->
        <aside id="sidebar">
            <ul id="ulbar" class="list-unstyled side-menu" style="width: 100%!important;">
            </ul>
        </aside>

        <!-- Content -->
        <section id="content" class="container">

            <!-- Main Widgets -->
            <div class="block-area">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li class="active" style="width:20%">
                                <a data-toggle="tab" id="subItem1">•趋势图</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem2">•谐波</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem3">•三相电压不平衡度</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem4">•参数值</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem5">•实时图形</a>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="pull-left location-select">
                            <select class="form-control location-select-item" id="monitorpnt" name="monitorpnt" onclick="getMonitorPoints()">
                                <option value="">选择检测点</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div id = "item1" class="col-md-12" style="height: 600px;">
                        <div class="row">
                            <div class="col-md-11">

                               <div id="units-label" style="position: absolute;left: 140px; top: 140px;color: black;z-index: 999;">
                                   U
                               </div>

                                <div id="item1-params-list" class="row">
                                    <div class="clearfix"></div>
                                    <ol>
                                        <li><button class="btn btn-default active" value="rms">RMS</button></li>
                                        <li><button class="btn btn-default" value="thd">THD</button></li>
                                        <li><button class="btn btn-default" value="hz">Hz</button></li>
                                        <li><button class="btn btn-default" value="W">W</button></li>
                                        <li><button class="btn btn-default" value="s">VA</button></li>
                                        <li><button class="btn btn-default" value="q">Var</button></li>
                                        <li><button class="btn btn-default" value="pf">PF</button></li>
                                        <li><button class="btn btn-default" value="unb">unb</button></li>
                                        <li><button class="btn btn-default" value="pst">Pst</button></li>
                                        <li><button class="btn btn-default" value="plt">Plt</button></li>
                                    </ol>
                                </div>

                                </select>
                                <div id="item1-params-text" class="row">
                                    <div class="clearfix"></div>
                                    <ol>
                                        <li><button class="btn btn-default" value="average">AVG</button></li>
                                        <li><button class="btn btn-default" value="min">MIN</button></li>
                                        <li><button class="btn btn-default" value="max">MAX</button></li>
                                    </ol>
                                </div>
                                <div class="row chart-item" id="item1-graph" style="height: 550px;"></div>
                            </div>
                            <div id="item1-sidebar" class="col-md-1">
                                <div class="clearfix"></div>
                                <ol>
                                    <li>
                                        <button value="U" class="btn btn-default active">3U</button>
                                    </li>
                                    <li>
                                        <button value="V" class="btn btn-default">3V</button>
                                    </li>
                                    <li>
                                        <button value="I" class="btn btn-default">3A</button>
                                    </li>
                                    <li>
                                        <button value="1" class="btn btn-default">L1</button>
                                    </li>
                                    <li>
                                        <button value="2" class="btn btn-default">L2</button>
                                    </li>
                                    <li>
                                        <button value="3" class="btn btn-default">L3</button>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div id = "item2" class="col-md-12 chart-item" style="height: 600px;">
                    </div>
                    <div id = "item3" class="col-md-12" style="height: 600px;">
                        <div class="row">
                            <div id="item3-text" class="col-md-2" style="height: 580px;" >
                                <ol class="value">
                                    <li>|<span id="item3-text-name1">A1</span>|&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-value1"></span><span id="item3-text-label1">A</span></li>
                                    <li>|<span id="item3-text-name2">A2</span>|&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-value2"></span><span id="item3-text-label2">A</span></li>
                                    <li>|<span id="item3-text-name3">A3</span>|&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-value3"></span><span id="item3-text-label3">A</span></li>
                                </ol>
                                <ol class="diff">
                                    <li>&Phi;<sub>12</sub>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-diff1"></span><sup>&nbsp;o</sup></li>
                                    <li>&Phi;<sub>23</sub>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-diff2"></span><sup>&nbsp;o</sup></li>
                                    <li>&Phi;<sub>31</sub>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-diff3"></span><sup>&nbsp;o</sup></li>
                                </ol>
                                <ol class="unb">
                                    <li><span id="item3-text-nameunb">Uunb</span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-valueunb"></span><span>%</span></li>
                                </ol>
                            </div>
                            <div id="item3-graph" class="col-md-8" style="height: 580px;"></div>
                            <div id="item3-sidebar" class="col-md-2" style="height: 580px;">
                                <ol class="symbol">
                                    <li style="border: 2px solid #ff0;">1</li>
                                    <li style="border: 2px solid #0f0;">2</li>
                                    <li style="border: 2px solid #f00;">3</li>
                                </ol>
                                <div class="clearfix"></div>
                                <ol>
                                    <li>
                                        <button value="U" class="btn btn-default active">3U</button>
                                    </li>
                                    <li>
                                        <button value="V" class="btn btn-default">3V</button>
                                    </li>
                                    <li>
                                        <button value="A" class="btn btn-default">3A</button>
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div id="item3-realtime" class="col-md-12">
                                <span>2018/10/01--00:00</span>
                            </div>
                        </div>
                    </div>
                    <div id = "item4" style="height: 600px;">
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1 col-xs-12">
                                <table id="params-basic" class="table table-bordered">
                                    <caption>基本参数</caption>
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table id="params-power" class="table table-bordered">
                                    <caption>功率参数</caption>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1 col-xs-12">
                                <table id="params-unb" class="table table-bordered">
                                    <caption>&nbsp;</caption>
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table id="params-shanbian" class="table table-bordered">
                                    <caption>闪变</caption>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1 col-xs-12">
                                <table id="params-shunbian" class="table table-bordered">
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table id="params-lytx" class="table table-bordered">
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id = "item5" class="col-md-12" style="height: 600px;width: 800px;">
                        <div class="row">
                            <div class="row chart-item" id="item4-graph" style="height: 550px;"></div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </section>

    <!-- Javascript Libraries -->
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

    <!--  Form Related -->
    <script src="js/icheck.js"></script>
    <!-- Custom Checkbox + Radio -->
    <!--Media Player-->
    <script src="js/media-player.min.js"></script>
    <!-- USA Map for jVectorMap -->
    <!-- UX -->
    <script src="js/scroll.min.js"></script>
    <!-- Custom Scrollbar -->

    <!-- Other -->
    <script src="js/calendar.min.js"></script>
    <!-- Calendar -->
    <script src="js/feeds.min.js"></script>
    <!-- News Feeds -->

    <!-- All JS functions -->
    <script src="js/functions.js"></script>
    <script src="js/echarts/echarts.min.js"></script>
    <script src="js/echarts.js"></script>

<!-- 省\市\机房下拉菜单-->
<script type="text/javascript">

    //读取cookie中已存的机房配置
    var opinion1 = $.cookie('province_name');
    $('#province_code').append("<option value='" + opinion1 + "' selected='selected' >" + opinion1 + "</option>");
    getCity();

    /*加载市下拉选*/
    function getCity() {
        var pname = $("#province_code").val();

        //读取cookie中已存的机房配置
        var opinion2 = $.cookie('opinion2');
        var uname = "${username}";

        $("#city_code").empty();
        $("#comproom_code").empty();

        $.ajax({
            type: "post",
            url: "getCityTree",
            data: {
                provinceid: pname,
                uname: uname
            },
            dataType: "json",
            success: function (data) {

                $('#city_code').append("<option value='' selected='selected' >" + '未指定' + "</option>");
                $('#comproom_code').append("<option value='' selected='selected' >" + '未指定' + "</option>");

                var obj = eval("(" + data + ")");
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].cbname == opinion2 || i == 0) {
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
        var opinion3 = $.cookie('opinion3');
        var uname = "${username}";

        $("#comproom_code").empty();

        $.ajax({
            type: "post",
            url: "getCompTree",
            data: {
                cityid: cname,
                uname: uname
            },
            dataType: "json",
            success: function (data) {
                var list = data.allcomputerroom;

                $('#comproom_code').append("<option value='' selected='selected' >" + '未指定' + "</option>");
                for (var i = 0; i < list.length; i++) {
                    if (list[i].rname == opinion3 || i == 0) {
                        $('#comproom_code').append("<option value='" + list[i].rid + "' selected='selected'>" + list[i].rname + "</option>");
                        $('#second-page').css('display', 'block');
                        $('#first-page').css('display', 'none');
                    }
                    else
                        $('#comproom_code').append("<option value='" + list[i].rid + "' >" + list[i].rname + "</option>");
                }
            }
        });
    }

</script>

    <!-- 切换子菜单-->
    <script type="text/javascript">
            $(document).ready(function(){
                $("#subItem1").click(function(){
                    $("#item1").show();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").hide();
                    $("#item5").hide();

                });
                $("#subItem2").click(function(){
                    $("#item1").hide();
                    $("#item2").show();
                    $("#item3").hide();
                    $("#item4").hide();
                    $("#item5").hide();

                });
                $("#subItem3").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").show();
                    $("#item4").hide();
                    $("#item5").hide();

                });
                $("#subItem4").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").show();
                    $("#item5").hide();

                });
                $("#subItem5").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").hide();
                    $("#item5").show();

                });
                $("#subItem1").trigger("click");
            });
    </script>

    <!-- 切换子菜单subItem效果-->
    <script type="text/javascript">
        $(function(){
            $("#ulItem li").click(function() {
                $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式selected
                $(this).addClass('active');                            // 添加当前元素的样式
            });
        });
    </script>

<!-- 动态加载菜单项 -->
<script type="text/javascript">
    var menulist="<%=session.getAttribute("menulist")%>";
    var cbidstr = menulist.split(",");
    var isSystemMng = false;
    var isNewSystemMng = false;
    var ulist = new Array();
    var u2list = new Array();

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

            //对字符串分段处理（2或3段）
            var substr = cbidstr[i].split("/");

            if(substr.length == 2){
                ulist.push(substr[1]);
            }

            else
            {
                ulist.push(substr[1]);
                u2list.push(substr[2]);
            }

            if(!isNewSystemMng)
            {//第一条systemMng的
                isNewSystemMng = true;
                menuname = "系统管理";
                $('#ulbar').append("<li><a href='systemMng.jsp' id='menuurl'>" + menuname + "</a></li>");
            }
            isSystemMng = true;
        }
        if(!isSystemMng) $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'>" + menuname + "</a></li>");
    }

    for(var i = 1; i <= 8; i++){
        var ustr = "item" + i;

        for(var j = 0; j < ulist.length; j++){
            if(ustr == ulist[j]){
                break;
            }
            if(j == ulist.length - 1){
                $("#"+ustr+"").remove();
            }
        }
    }

    for(var i = 1; i <= 9; i++){
        var ustr;
        if(i < 7)
            ustr = "secsubItem" + i;
        else
            ustr = "tridsubItem" + i;

        for(var j = 0; j < u2list.length; j++){
            if(ustr == u2list[j]){
                break;
            }
            if(j == u2list.length - 1){
                $("#"+ustr+"").remove();
            }
        }
    }

</script>

    <!-- 动态加载检测点(设备)列表 -->
    <script type="text/javascript">
        //city 动态改变,computerroom清空
        document.getElementById("comproom_code").addEventListener('change', function () {
            $('#monitorpnt').empty();
        });

        //获取检测点列表
        function getMonitorPoints(){

            var computerroom = $("#comproom_code option:selected").val();
            var mpcname = $("#monitorpnt").val();

            if(!computerroom){
                alert("请先选择机房，再选择检测点");
            }
            else if(!mpcname) { //若没有获取过，获取
                $.ajax({
                    type: "post",
                    url: "getMonitorPoints",
                    data: {
                        computerroom: computerroom
                    },
                    dataType : "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.allmpdata;
                        for (var i = 0; i < rt.length; i++) {
                            if(i == 0)
                                $('#monitorpnt').append("<option value='" + rt[i].did + "' selected='selected'>" + rt[i].name + "</option>");
                            else
                                $('#monitorpnt').append("<option value='" + rt[i].did + "' >" + rt[i].name + "</option>");
                        }
                    }
                });
            }
        }
    </script>

    <%--图表中使用到的变量声明--%> <%--趋势图相关函数 --%>
    <script type="text/javascript">
        // 全局变量、暂存数据的变量、配置项变量
        var qstRecordRmsu1 = [];// 暂存趋势图rmsu1数据
        var qstRecordRmsu2 = []; // 暂存趋势图rmsu2数据
        var qstRecordRmsu3 = []; // 暂存趋势图rmsu3数据
        var qstRecordRmsv1 = [];// 暂存趋势图rmsu1数据
        var qstRecordRmsv2 = []; // 暂存趋势图rmsu2数据
        var qstRecordRmsv3 = []; // 暂存趋势图rmsu3数据
        var qstRecordRmsi1 = []; // 暂存趋势图rmsi1数据
        var qstRecordRmsi2 = []; // 暂存趋势图rmsi2数据
        var qstRecordRmsi3 = []; // 暂存趋势图rmsi3数据
        var qstRecordThdu1 = []; // 暂存趋势图thdu1数据
        var qstRecordThdu2 = []; // 暂存趋势图thdu1数据
        var qstRecordThdu3 = []; // 暂存趋势图thdu1数据
        var qstRecordThdi1 = []; // 暂存趋势图thdi1数据
        var qstRecordThdi2 = []; // 暂存趋势图thdi1数据
        var qstRecordThdi3 = []; // 暂存趋势图thdi1数据
        var qstRecordhz = []; // 暂存趋势图hz数据
        var qstRecordp1 = []; // 暂存趋势图p1数据
        var qstRecordp2 =[]; // 暂存趋势图p2数据
        var qstRecordp3 =[]; // 暂存趋势图p3数据
        var qstRecords1 = []; // 暂存趋势图s1数据
        var qstRecords2 =[]; // 暂存趋势图s2数据
        var qstRecords3 = []; // 暂存趋势图s3数据
        var qstRecordq1 =[]; // 暂存趋势图q1数据
        var qstRecordq2 = []; // 暂存趋势图q2数据
        var qstRecordq3 =[]; // 暂存趋势图q3数据
        var qstRecordpf1 =[]; // 暂存趋势图pf1数据
        var qstRecordpf2 =[]; // 暂存趋势图pf2数据
        var qstRecordpf3 = []; // 暂存趋势图pf3数据
        var qstRecorddpf1 =[]; // 暂存趋势图dpf1数据
        var qstRecorddpf2 = []; // 暂存趋势图dpf2数据
        var qstRecorddpf3 = []; // 暂存趋势图dpf3数据
        var qstRecordtan1 =[]; // 暂存趋势图tan1数据
        var qstRecordtan2 = []; // 暂存趋势图tan2数据
        var qstRecordtan3 = []; // 暂存趋势图tan3数据
        var qstRecordunb = []; // 暂存趋势图unb数据
        var qstRecordpstu1 =[]; // 暂存趋势图pstu1数据
        var qstRecordpstu2 = []; // 暂存趋势图pstu2数据
        var qstRecordpstu3 =[]; // 暂存趋势图pstu3数据
        var qstRecordpltu1 =[]; // 暂存趋势图pltu1数据
        var qstRecordpltu2 =[]; // 暂存趋势图pltu2数据
        var qstRecordpltu3 = []; // 暂存趋势图pltu3数据

        var qstLegend=[
            "rmsU1","rmsU2","rmsU3","rmsV1","rmsV2","rmsV3","rmsI1","rmsI2","rmsI3",
            "thdU1","thdU2","thdU3","thdI1","thdI2","thdI3",
            "hz",
            "W1","W2","W3",
            "s1","s2","s3",
            "q1","q2","q3",
            "pf1","pf2","pf3",
            "dpf1","dpf2","dpf3",
            "tan1","tan2","tan3",
            "unb",
            "pstU1","pstU2","pstU3",
            "pltU1","pltU2","pltU3"
            ];//趋势图图例
        var gaugePointerColor = ["#ffff00", "#00ff00", "#ff0000"]; // 三相不平衡度表的指针颜色
        var sxbphdlegend = ["U1", "U2", "U3", "V1", "V2", "V3", "A1", "A2", "A3"]; // 三相不平衡度表的图例
        var maxAmplitude = 400; // 三相不平衡度表中幅值的最大值，用来计算指针长度
        var dataSxbphd = null; // 暂存三相不平衡度表中的数据
        var markPoint={//趋势图最大值、最小值标注
            label: {formatter: '{a}{b}:{c}'},
            data: []
        };
        var markLine={//趋势图平均值标注
            label: {formatter: '{a}{b}:{c}'},
            data: []
        };

        // 各个图的配置项
        var option1 = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                show: false,
                data: qstLegend
            },
            // 数据窗口缩放
            dataZoom: [
                {
                    type: 'slider',
                    show: true,
                    xAxisIndex: [0],
                    start: 0,
                    end: 100
                },
                {
                    type: 'slider',
                    show: true,
                    yAxisIndex: [0],
                    start: 0,
                    end: 100
                },
                {
                    type: 'inside',
                    xAxisIndex: [0],
                    start: 0,
                    end: 100
                },
                {
                    type: 'inside',
                    yAxisIndex: [0],
                    start: 0,
                    end: 100
                }
            ],
            xAxis: {
                type: 'time',
                splitLine: {
                    show: false
                }
            },
            yAxis: {
                type: 'value',
                scale: true,
                boundaryGap: ['10%', '10%'],
                splitLine: {
                    show: false
                }
            },
            series: [
                // RMS
                {
                    name: "rmsU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsU1"},data: qstRecordRmsu1
                },
                {
                    name: "rmsU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsU2"},data: qstRecordRmsu2
                },
                {
                    name: "rmsU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsU3"},data: qstRecordRmsu3
                },
                {
                    name: "rmsV1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsV1"},data: qstRecordRmsv1
                },
                {
                    name: "rmsV2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsV2"},data: qstRecordRmsv2
                },
                {
                    name: "rmsV3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsV3"},data: qstRecordRmsv3
                },
                {
                    name: "rmsI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsI1"},data: qstRecordRmsi1
                },
                {
                    name: "rmsI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsI2"},data: qstRecordRmsi2
                },
                {
                    name: "rmsI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsI3"},data: qstRecordRmsi3
                },
                // THD
                {
                    name: "thdU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdU1"},data: qstRecordThdu1
                },
                {
                    name: "thdU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdU2"},data: qstRecordThdu2
                },
                {
                    name: "thdU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdU3"},data: qstRecordThdu3
                },
                {
                    name: "thdI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdI1"},data: qstRecordThdi1
                },
                {
                    name: "thdI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdI2"},data: qstRecordThdi2
                },
                {
                    name: "thdI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdI3"},data: qstRecordThdi3
                },
                // Hz
                {
                    name: "hz", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "hz"},data: qstRecordhz
                },
                // W
                {
                    name: "W1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "W1"},data: qstRecordp1
                },
                {
                    name: "W2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "W2"},data: qstRecordp2
                },
                {
                    name: "W3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "W3"},data: qstRecordp3
                },
                // VA
                {
                    name: "s1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "s1"},data: qstRecords1
                },
                {
                    name: "s2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "s2"},data: qstRecords2
                },
                {
                    name: "s3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "s3"},data: qstRecords3
                },
                // Var
                {
                    name: "q1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "q1"},data: qstRecordq1
                },
                {
                    name: "q2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "q2"},data: qstRecordq2
                },
                {
                    name: "q3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "q3"},data: qstRecordq3
                },
                // PF
                {
                    name: "pf1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pf1"},data: qstRecordpf1
                },
                {
                    name: "pf2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pf2"},data: qstRecordpf2
                },
                {
                    name: "pf3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pf3"},data: qstRecordpf3
                },
                // unb
                {
                    name: "unb", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "unb"},data: qstRecordunb
                },
                // Pst
                {
                    name: "pstU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pstU1"},data: qstRecordpstu1
                },
                {
                    name: "pstU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pstU2"},data: qstRecordpstu2
                },
                {
                    name: "pstU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pstU3"},data: qstRecordpstu3
                },
                // Plt
                {
                    name: "pltU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pltU1"},data: qstRecordpltu1
                },
                {
                    name: "pltU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pltU2"},data: qstRecordpltu2
                },
                {
                    name: "pltU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pltU3"},data: qstRecordpltu3
                }
            ]
        };
        var option2 = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['U1', 'U2', 'U3', 'U4', 'I1', 'I2', 'I3', 'I4']
            },
            toolbox: {
                show: true,
                feature: {
                    dataZoom: {
                        yAxisIndex: 'none'
                    },
                    dataView: {readOnly: false},
                    magicType: {type: ['bar','line']},
                    restore: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
                    20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
                    37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49]
            },
            yAxis: {
                type: 'value',
                scale: true,
                axisLabel: {
                    formatter: '{value}%'
                }
            }
        };
        var option3 = {
            //提示框
            tooltip: {
                formatter: "{a}:{c}"
            },
            //图例
            legend: {
                show: false,
                data: sxbphdlegend
            },
            series: [
                {name: "U1", type: "gauge", min: 0, max: 240, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    axisLabel: {show: false},
                    itemStyle: {color: gaugePointerColor[0]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "U2", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[1]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "U3", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[2]},
                    title: {show: false},
                    detail: {show: false}
                },
                {
                    name: "V1", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[0]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "V2", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[1]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "V3", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[2]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "A1", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[0]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "A2", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}
                    },
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[1]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "A3", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[2]},
                    title: {show: false},
                    detail: {show: false}
                }
            ]
        };
        var option4 = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    label: {
                        backgroundColor: '#283b56'
                    }
                }
            },
            legend: {
                data:['U1', 'U2', 'U3', 'U4', 'I1', 'I2', 'I3', 'I4']
            },
            dataZoom: {
                show: false,
                start: 0,
                end: 100
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: (function (){
                        var now = new Date();
                        var res = [];
                        var len = 10;
                        while (len--) {
                            res.unshift(now.toLocaleTimeString().replace(/^\D*/,''));
                            now = new Date(now - 2000);
                        }
                        return res;
                    })()
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    scale: true,
                    max: 300,
                    min: -300,
                    boundaryGap: [0.2, 0.2]
                }
            ],
            series: [
                {
                    name:'U1',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'U2',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'U3',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'U4',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I1',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I2',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I3',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I4',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                }
            ]
        };

        // echarts图表容器
        var eventChart1 = echarts.init(document.getElementById('item1-graph'));
        var eventChart2 = echarts.init(document.getElementById('item2'));
        var eventChart3 = echarts.init(document.getElementById('item3-graph'));
        var eventChart4 = echarts.init(document.getElementById('item4-graph'));

        //事件绑定函数
        function eventBanding(){
            // 三相不平衡度表右侧按钮事件绑定
            $("#item3-sidebar ol li button").each(function () {
                $(this).click(function () {
                    $("#item3-sidebar ol li button").removeClass("active");
                    $(this).addClass("active");
                    for (var i = 0; i < sxbphdlegend.length; i++) {
                        if (sxbphdlegend[i].indexOf(this.value) >= 0) {
                            // 显示对应的系列
                            eventChart3.dispatchAction({
                                type: "legendSelect",
                                name: sxbphdlegend[i]
                            });
                        }
                        else {
                            // 隐藏其他系列
                            eventChart3.dispatchAction({
                                type: "legendUnSelect",
                                name: sxbphdlegend[i]
                            });
                        }
                    }
                    // 更新图左侧文字
                    updateSxdyt2(dataSxbphd);
                });
            });
            // 绑定趋势图上方button点击事件
            $("#item1-params-list ol li button").click(function(){
                var self=this;
                $("#item1-params-list ol li button").removeClass("active");
                $(this).addClass("active");
                qstLegend.forEach(function(item){
                    if(0===item.indexOf(self.value)){
                        eventChart1.dispatchAction({
                            type: "legendSelect",
                            name: item
                        });
                    }
                    else{
                        eventChart1.dispatchAction({
                            type: "legendUnSelect",
                            name: item
                        });
                    }
                });

                //单位的变化
                if(self.value == 'rms'){
                    $("#item1-sidebar ol li button").each(function () {
                        $(this).click(function () {
                           if(this.value == 'U' || this.value == 'V')
                                $("#units-label").text('单位(V)');
                            else if(this.value == 'I')
                                $("#units-label").text('单位(A)');
                            else
                                $("#units-label").text('单位()');
                        });
                    });
                } else if(self.value == 'thd'){
                    $("#units-label").text('单位(%)');
                } else if(self.value == 'W'){
                    $("#units-label").text('单位(kV)');
                } else if(self.value == 's'){
                    $("#units-label").text('单位(kVA)');
                } else if(self.value == 'q'){
                    $("#units-label").text('单位(kVar)');
                } else if(self.value == 'pf'){
                    $("#units-label").text('单位()');
                } else if(self.value == 'unb'){
                    $("#units-label").text('单位(%)');
                } else if(self.value == 'pst'){
                    $("#units-label").text('单位(V)');
                } else if(self.value == 'plt'){
                    $("#units-label").text('单位(V)');
                } else if(self.value == 'hz'){
                    $("#units-label").text('单位(Hz)');
                }

            });
            $("#item1-params-text ol li button").click(function () {
                $(this).toggleClass("active");
                if($(this).hasClass("active")){
                    switch(this.value){
                        case 'max':markPoint.data.unshift({name:'最大值',type: 'max'});break;//最大值标注配置项添加在数组头
                        case 'min':markPoint.data.push({name:'最小值',type: 'min'});break;//最小值标注配置项添加在数组尾
                        case 'average':markLine.data.push({name:'平均值',type: 'average'});break;//平均值标注配置项添加
                        default: break;
                    }
                }
                else{
                    switch(this.value){
                        case 'max':markPoint.data.shift();break;//移除最大值标注配置项
                        case 'min':markPoint.data.pop();break;//移除最小值标注配置项
                        case 'average':markLine.data.pop();break;//移除平均值标注配置项
                        default: break;
                    }
                }
                eventChart1.setOption(option1);
            });
            // 绑定趋势图 右侧U\V\A button选择栏事件
            $("#item1-sidebar ol li button").each(function () {
                $(this).click(function () {
                    var currentLegend,self=this;
                    $("#item1-sidebar ol li button").removeClass("active");
                    $(this).addClass("active");
                    $('#item1-params-list ol li button').each(function(){
                        if($(this).hasClass("active")){
                            currentLegend=this.value;
                            return false;
                        }
                    });

                    qstLegend.forEach(function(item){
                        if(0===item.indexOf(currentLegend) && item.indexOf(self.value)>=0){
                            eventChart1.dispatchAction({
                                type: "legendSelect",
                                name: item
                            });
                        }
                        else{
                            eventChart1.dispatchAction({
                                type: "legendUnSelect",
                                name: item
                            });
                        }
                    });
                });
            });
            $("#item1-params-list ol li button.active").trigger("click");//默认显示rms数据
            $("#item1-sidebar ol li button.active").trigger("click");
        }

        // 获取趋势图数据
        function getDataQst(did) {
            if(did != null && did != ""){
                $.ajax({
                    type: "post",
                    url: "getQst",
                    data: {did: did},
                    dataType: "json",
                    success: function (data) {
                        addData(JSON.parse(data));
                        updateQst();
                    }
                });
            }
        }

        // 更新趋势图
        function updateQst() {
            eventChart1.setOption({
                series: [
                    {data: qstRecordRmsu1},
                    {data: qstRecordRmsu2},
                    {data: qstRecordRmsu3},
                    {data: qstRecordRmsv1},
                    {data: qstRecordRmsv2},
                    {data: qstRecordRmsv3},
                    {data: qstRecordRmsi1},
                    {data: qstRecordRmsi2},
                    {data: qstRecordRmsi3},
                    {data: qstRecordThdu1},
                    {data: qstRecordThdu2},
                    {data: qstRecordThdu3},
                    {data: qstRecordThdi1},
                    {data: qstRecordThdi2},
                    {data: qstRecordThdi3},
                    {data: qstRecordhz},
                    {data: qstRecordp1},
                    {data: qstRecordp2},
                    {data: qstRecordp3},
                    {data: qstRecords1},
                    {data: qstRecords2},
                    {data: qstRecords3},
                    {data: qstRecordq1},
                    {data: qstRecordq2},
                    {data: qstRecordq3},
                    {data: qstRecordpf1},
                    {data: qstRecordpf2},
                    {data: qstRecordpf3},
                    {data: qstRecordunb},
                    {data: qstRecordpstu1},
                    {data: qstRecordpstu2},
                    {data: qstRecordpstu3},
                    {data: qstRecordpltu1},
                    {data: qstRecordpltu2},
                    {data: qstRecordpltu3}
                ]
            });
        }

        // 添加数据
        function addData(newRecord) {
            // 构造1条记录
            var time = formatDateTime(newRecord["allHZ"][0]["time"]);
            // RMS
            var rmsU1 = newRecord["allRMS"][0]["u1"].toFixed(2);
            var rmsU2 = newRecord["allRMS"][0]["u2"].toFixed(2);
            var rmsU3 = newRecord["allRMS"][0]["u3"].toFixed(2);
            var rmsI1 = newRecord["allRMS"][0]["i1"].toFixed(2);
            var rmsI2 = newRecord["allRMS"][0]["i2"].toFixed(2);
            var rmsI3 = newRecord["allRMS"][0]["i3"].toFixed(2);
            // THD
            var thdU1 = newRecord["allTHD"][0]["u1"].toFixed(2);
            var thdU2 = newRecord["allTHD"][0]["u2"].toFixed(2);
            var thdU3 = newRecord["allTHD"][0]["u3"].toFixed(2);
            var thdI1 = newRecord["allTHD"][0]["i1"].toFixed(2);
            var thdI2 = newRecord["allTHD"][0]["i2"].toFixed(2);
            var thdI3 = newRecord["allTHD"][0]["i3"].toFixed(2);
            // Hz
            var hz = newRecord["allHZ"][0]["hz"].toFixed(2);
            // W
            var p1 = newRecord["allW"][0]["p1"].toFixed(2);
            var p2 = newRecord["allW"][0]["p2"].toFixed(2);
            var p3 = newRecord["allW"][0]["p3"].toFixed(2);
            // VA
            var s1 = newRecord["allVA"][0]["s1"].toFixed(2);
            var s2 = newRecord["allVA"][0]["s2"].toFixed(2);
            var s3 = newRecord["allVA"][0]["s3"].toFixed(2);
            // Var
            var q1 = newRecord["allVAR"][0]["q1"].toFixed(2);
            var q2 = newRecord["allVAR"][0]["q2"].toFixed(2);
            var q3 = newRecord["allVAR"][0]["q3"].toFixed(2);
            // PF
            var pf1 = newRecord["allPF"][0]["pf1"].toFixed(2);
            var pf2 = newRecord["allPF"][0]["pf2"].toFixed(2);
            var pf3 = newRecord["allPF"][0]["pf3"].toFixed(2);
            // unb
            var unb = newRecord["allUNB"][0]["uunb"].toFixed(2);
            // Pst
            var pstU1 = newRecord["allPST"][0]["pstU1"].toFixed(2);
            var pstU2 = newRecord["allPST"][0]["pstU2"].toFixed(2);
            var pstU3 = newRecord["allPST"][0]["pstU3"].toFixed(2);
            // Plt
            var pltU1 = newRecord["allPLT"][0]["pltU1"].toFixed(2);
            var pltU2 = newRecord["allPLT"][0]["pltU2"].toFixed(2);
            var pltU3 =  newRecord["allPLT"][0]["pltU3"].toFixed(2);

            if(qstRecordRmsu1.length >= 720) {  //页面最多放每720条数据
                qstRecordRmsu1.shift();
                qstRecordRmsu2.shift();
                qstRecordRmsu3.shift();

                qstRecordRmsv1.shift();
                qstRecordRmsv2.shift();
                qstRecordRmsv3.shift();

                qstRecordRmsi1.shift();
                qstRecordRmsi2.shift();
                qstRecordRmsi3.shift();

                qstRecordThdu1.shift();
                qstRecordThdu2.shift();
                qstRecordThdu3.shift();

                qstRecordThdi1.shift();
                qstRecordThdi2.shift();
                qstRecordThdi3.shift();

                qstRecordhz.shift();

                qstRecordp1.shift();
                qstRecordp2.shift();
                qstRecordp3.shift();

                qstRecords1.shift();
                qstRecords2.shift();
                qstRecords3.shift();

                qstRecordq1.shift();
                qstRecordq2.shift();
                qstRecordq3.shift();

                qstRecordpf1.shift();
                qstRecordpf2.shift();
                qstRecordpf3.shift();

                qstRecordunb.shift();

                qstRecordpstu1.shift();
                qstRecordpstu2.shift();
                qstRecordpstu3.shift();

                qstRecordpltu1.shift();
                qstRecordpltu2.shift();
                qstRecordpltu3.shift();
            }

            qstRecordRmsu1.push( {name: time, value:[time, rmsU1]} );
            qstRecordRmsu2.push( {name: time, value:[time, rmsU2]} );
            qstRecordRmsu3.push( {name: time, value:[time, rmsU3]} );

            qstRecordRmsv1.push( {name: time, value:[time, Math.sqrt(3) * rmsU1]} );
            qstRecordRmsv2.push( {name: time, value:[time, Math.sqrt(3) * rmsU2]} );
            qstRecordRmsv3.push( {name: time, value:[time, Math.sqrt(3) * rmsU3]} );

            qstRecordRmsi1.push( {name: time, value:[time, rmsI1]} );
            qstRecordRmsi2.push( {name: time, value:[time, rmsI2]} );
            qstRecordRmsi3.push( {name: time, value:[time, rmsI3]} );

            qstRecordThdu1.push( {name: time, value:[time, thdU1]} );
            qstRecordThdu2.push( {name: time, value:[time, thdU2]} );
            qstRecordThdu3.push( {name: time, value:[time, thdU3]} );

            qstRecordThdi1.push( {name: time, value:[time, thdI1]} );
            qstRecordThdi2.push( {name: time, value:[time, thdI2]} );
            qstRecordThdi3.push( {name: time, value:[time, thdI3]} );

            qstRecordhz.push( {name: time, value:[time, hz]} );

            qstRecordp1.push( {name: time, value:[time, p1]} );
            qstRecordp2.push( {name: time, value:[time, p2]} );
            qstRecordp3.push( {name: time, value:[time, p3]} );

            qstRecords1.push( {name: time, value:[time, s1]} );
            qstRecords2.push( {name: time, value:[time, s2]} );
            qstRecords3.push( {name: time, value:[time, s3]} );

            qstRecordq1.push( {name: time, value:[time, q1]} );
            qstRecordq2.push( {name: time, value:[time, q2]} );
            qstRecordq3.push( {name: time, value:[time, q3]} );

            qstRecordpf1.push( {name: time, value:[time, pf1]} );
            qstRecordpf2.push( {name: time, value:[time, pf2]} );
            qstRecordpf3.push( {name: time, value:[time, pf3]} );

            qstRecordunb.push( {name: time, value:[time, unb]} );

            qstRecordpstu1.push( {name: time, value:[time, pstU1]} );
            qstRecordpstu2.push( {name: time, value:[time, pstU2]} );
            qstRecordpstu3.push( {name: time, value:[time, pstU3]} );

            qstRecordpltu1.push( {name: time, value:[time, pltU1]} );
            qstRecordpltu2.push( {name: time, value:[time, pltU2]} );
            qstRecordpltu3.push( {name: time, value:[time, pltU3]} );
        }


        <%--在线监测模块各个图表初始化--%>
        function getNowFormatDate() {
            var date = new Date();
            var seperator1 = "-";
            var seperator2 = ":";
            var month = date.getMonth() + 1;
            var strDate = date.getDate();
            if (month >= 1 && month <= 9) {
                month = "0" + month;
            }
            if (strDate >= 0 && strDate <= 9) {
                strDate = "0" + strDate;
            }
            var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
            return currentdate;
        }

        function formatDateTime(time) {

            var unixtime = time;
            var unixTimestamp = new Date(unixtime * 1);
            var Y = unixTimestamp.getFullYear();
            var M = unixTimestamp.getMonth() + 1; //((unixTimestamp.getMonth() + 1) > 10 ? (unixTimestamp.getMonth() + 1) : '0' + (unixTimestamp.getMonth() + 1));
            var D = (unixTimestamp.getDate() > 10 ? unixTimestamp.getDate() : '0' + unixTimestamp.getDate());
            var Hour = unixTimestamp.getHours();
            var Minute = unixTimestamp.getMinutes();
            var Second = unixTimestamp.getSeconds();

            if (M >= 1 && M <= 9) {
                M = "0" + M;
            }
            if (D >= 0 && D <= 9) {
                D = "0" + D;
            }
            if (Hour >= 0 && Hour <= 9) {
                Hour = "0" + Hour;
            }
            if (Minute >= 0 && Minute <= 9) {
                Minute = "0" + Minute;
            }
            if (Second >= 0 && Second <= 9) {
                Second = "0" + Second;
            }

            return  Y + '-' + M + '-' + D + " " + Hour + ":" + Minute + ":" + Second;
        }

        function chartsInit(){
            // 初始化图表
            eventChart1.setOption(option1);
            eventChart2.setOption(option2);
            eventChart3.setOption(option3);
            eventChart4.setOption(option4);

            eventBanding();

            // 更新时间 每1s
            setInterval(function () {
                $("#item3-realtime span").html(getNowFormatDate());
            },1000);
        }

        chartsInit();

        var qstinterval = 5000;  //qst默认刷新频率为5s

        $.ajax({
            type: "post",
            url: "getQSTinterval",
            success: function (data) {
                qstinterval = data.qstinterval;
            }
        });

        setInterval(function () {
            getDataQst($("#monitorpnt").val());
            getDataXb($("#monitorpnt").val());
            getDataSxdy($("#monitorpnt").val());
            getDataParams($("#monitorpnt").val());
            getOnlineWave($("#monitorpnt").val());
        }, qstinterval);

    </script>

    <%--谐波图相关函数 --%>
    <script type="text/javascript">
        // 获取谐波数据
        function getDataXb(did) {
            if(did != null && did != "") {
                $.ajax({
                    type: "post",
                    url: "getXB",
                    data: {
                        did: did
                    },
                    dataType: "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var ndata = obj.nowpowerxb;

                        updateXbt(ndata);
                    }
                });
            }
        }

        // 更新谐波图
        function updateXbt(obj) {

            var series=["u1Xb","u2Xb","u3Xb","u4Xb","i1Xb","i2Xb","i3Xb","i4Xb"];
            var res=[];//二维数组

            for(var i = 0; i < series.length; i++){
                var temp=[];    //一维数组

                var basic = parseFloat(obj["u1Xb1"]);

                if(i == 0) temp.push(parseFloat(obj["thdu1"] * 100) / basic);
                if(i == 1) temp.push(parseFloat(obj["thdu2"] * 100) / basic);
                if(i == 2) temp.push(parseFloat(obj["thdu3"] * 100) / basic);
                if(i == 3) temp.push(parseFloat(obj["thdu4"] * 100) / basic);
                if(i == 4) temp.push(parseFloat(obj["thdi1"] * 100) / basic);
                if(i == 5) temp.push(parseFloat(obj["thdi2"] * 100) / basic);
                if(i == 6) temp.push(parseFloat(obj["thdi3"] * 100) / basic);
                if(i == 7) temp.push(parseFloat(obj["thdi4"] * 100) / basic);

                for(var j = 1;j <= 50; j++){
                    var jindx = series[i] + j;

                    if(j == 1){
                        temp.push(100); //obj[jindx]
                    }
                    else {
                        temp.push(10000 * parseFloat(obj[jindx]/ basic));
                    }
                }
                res.push(temp);
            }
            eventChart2.setOption({
                series: [{name: "U1", type: 'bar', data: res[0]},
                    {name: "U2", type: 'bar', data: res[1]},
                    {name: "U3", type: 'bar', data: res[2]},
                    {name: "U4", type: 'bar', data: res[3]},
                    {name: "I1", type: 'bar', data: res[4]},
                    {name: "I2", type: 'bar', data: res[5]},
                    {name: "I3", type: 'bar', data: res[6]},
                    {name: "I4", type: 'bar', data: res[7]}
                ]
            });
        }
    </script>

    <%--三相不平衡度表相关函数 --%>
    <script type="text/javascript">
        // 获取三相电压、电流数据
        function getDataSxdy(did) {
            if(did != null && did != "") {
                $.ajax({
                    type: "post",
                    url: "getSXDY",
                    data: {did: did},
                    dataType: "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        dataSxbphd = obj.nowpowersxdy;
                        updateSxdyt(dataSxbphd);
                        // 设置显示的系列
                        $("#item3-sidebar ol li button.active").trigger("click");
                    }
                });
            }
        }

        // 更新三相电压、电流图
        function updateSxdyt(data) {
            // 更新图左侧文字
            updateSxdyt2(data);
            // 计算指针长度，并用数组存起来
            var pointerLength = [];
            pointerLength.push(floatToPercent(data["u1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["u2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["u3"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["v1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["v2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["v3"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["i1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["i2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["i3"] / maxAmplitude));

            // 更新图
            eventChart3.setOption({
                series: [
                    {
                        name: "U1",
                        pointer: {length: pointerLength[0]},
                        data: [{value: (360 + data["angleU1"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#FFFF00'
                            }
                        }
                    },
                    {
                        name: "U2",
                        pointer: {length: pointerLength[1]},
                        data: [{value: (360 + data["angleU2"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#00FF00'
                            }
                        }
                    },
                    {
                        name: "U3",
                        pointer: {length: pointerLength[2]},
                        data: [{value: (360 + data["angleU3"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#FF0000'
                            }
                        }
                    },
                    {
                        name: "V1",
                        pointer: {length: pointerLength[3]},
                        data: [{value: (360 + data["angleV1"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#FFFF00'
                            }
                        }
                    },
                    {
                        name: "V2",
                        pointer: {length: pointerLength[4]},
                        data: [{value: (360 + data["angleV2"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#00FF00'
                            }
                        }
                    },
                    {
                        name: "V3",
                        pointer: {length: pointerLength[5]},
                        data: [{value: (360 + data["angleV3"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#FF0000'
                            }
                        }
                    },
                    {
                        name: "A1",
                        pointer: {length: pointerLength[6]},
                        data: [{value: (360 + data["angleI1"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#FFFF00'
                            }
                        }
                    },
                    {
                        name: "A2",
                        pointer: {length: pointerLength[7]},
                        data: [{value: (360 + 360 + data["angleI2"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#00FF00'
                            }
                        }
                    },
                    {
                        name: "A3",
                        pointer: {length: pointerLength[8]},
                        data: [{value: (360 + data["angleI3"])%360}],
                        itemStyle:{
                            normal:{
                                color:'#FF0000'
                            }
                        }
                    }
                ]
            });
        }
        // 更新三相电压、电流图左侧显示的文字
        function updateSxdyt2(data) {
            // 获取被选中按钮的value值
            var value = $("#item3-sidebar ol li button.active").attr("value");

            switch (value) {
                case "U" : {
                    // 更新幅值
                    $("#item3-text-name1").html("U1");
                    $("#item3-text-value1").html(data["u1"].toFixed(2));
                    $("#item3-text-label1").html("V");
                    $("#item3-text-name2").html("U2");
                    $("#item3-text-value2").html(data["u2"].toFixed(2));
                    $("#item3-text-label2").html("V");
                    $("#item3-text-name3").html("U3");
                    $("#item3-text-value3").html(data["u3"].toFixed(2));
                    $("#item3-text-label3").html("V");

                    // 更新unb
                    $("#item3-text-nameunb").html("Uunb");
                    $("#item3-text-valueunb").html(data["uunb"].toFixed(2));

                    // 更新相位差
                    $("#item3-text ol.diff").show();

                    $("#item3-text-diff1").html(data["angleU1"].toFixed(2));
                    $("#item3-text-diff2").html(data["angleU2"].toFixed(2));
                    $("#item3-text-diff3").html(data["angleU3"].toFixed(2));

                    break;
                }
                case "V" : {
                    // 更新幅值
                    $("#item3-text-name1").html("V1");
                    $("#item3-text-value1").html(data["v1"].toFixed(2));
                    $("#item3-text-label1").html("V");
                    $("#item3-text-name2").html("V2");
                    $("#item3-text-value2").html(data["v2"].toFixed(2));
                    $("#item3-text-label2").html("V");
                    $("#item3-text-name3").html("V3");
                    $("#item3-text-value3").html(data["v3"].toFixed(2));
                    $("#item3-text-label3").html("V");

                    // 更新unb
                    $("#item3-text-nameunb").html("Vunb");
                    $("#item3-text-valueunb").html(data["vunb"].toFixed(2));

                    // 更新相位差
                    $("#item3-text ol.diff").show();

                    $("#item3-text-diff1").html(data["angleV1"].toFixed(2));
                    $("#item3-text-diff2").html(data["angleV2"].toFixed(2));
                    $("#item3-text-diff3").html(data["angleV3"].toFixed(2));

                    break;
                }
                case "A" : {
                    // 更新幅值
                    $("#item3-text-name1").html("I1");
                    $("#item3-text-value1").html(data["i1"].toFixed(2));
                    $("#item3-text-label1").html("A");
                    $("#item3-text-name2").html("I2");
                    $("#item3-text-value2").html(data["i2"].toFixed(2));
                    $("#item3-text-label2").html("A");
                    $("#item3-text-name3").html("I3");
                    $("#item3-text-value3").html(data["i3"].toFixed(2));
                    $("#item3-text-label3").html("A");

                    // 更新unb
                    $("#item3-text-nameunb").html("Aunb");
                    $("#item3-text-valueunb").html(data["aunb"].toFixed(2));

                    // 更新相位差
                    $("#item3-text ol.diff").show();

                    $("#item3-text-diff1").html(data["angleI1"].toFixed(2));
                    $("#item3-text-diff2").html(data["angleI2"].toFixed(2));
                    $("#item3-text-diff3").html(data["angleI3"].toFixed(2));

                    break;
                }
                /*case "1" : {
                    // 隐藏相位差
                    $("#item3-text ol.diff").hide();
                    break;
                }
                case "2" : {
                    // 隐藏相位差
                    $("#item3-text ol.diff").hide();
                    $("#item3-text-diff1").html((data["angle" + value + "2"] - data["angle" + value + "1"]).toFixed(2));
                    $("#item3-text-diff2").html((data["angle" + value + "3"] - data["angle" + value + "2"]).toFixed(2));
                    $("#item3-text-diff3").html((data["angle" + value + "1"] - data["angle" + value + "3"]).toFixed(2));
                    break;
                }
                case "1" :
                case "2" :
                case "3" : {
                    // 更新幅值
                    $("#item3-text-name1").html("U" + value);
                    $("#item3-text-value1").html(data["u" + value].toFixed(2));
                    $("#item3-text-name2").html("V" + value);
                    $("#item3-text-value2").html(data["v" + value].toFixed(2));
                    $("#item3-text-name3").html("A" + value);
                    $("#item3-text-value3").html(data["i" + value].toFixed(2));

                    $("#item3-text-value3").html(data["a" + value].toFixed(2));
                    // 隐藏相位差
                    $("#item3-text ol.diff").hide();
                    break;
                }*/
                default : {
                }
            }
        }
        // 浮点数转成百分比，保留一位小数，返回字符串
        function floatToPercent(num) {
            return (new Number(num) * 100).toFixed(1) + "%";
        }
    </script>

    <%--参数值表格相关函数--%>
    <script type="text/javascript">
        // 获取参数值
        function getDataParams(did) {
            if(did != null && did != "") {
                $.ajax({
                    type: "post",
                    url: "getParameter",
                    data: {did: did},
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt1 = obj.nowpowerparm;
                        var rt2 = obj.nowpoweruunb;

                        updateParams(rt1, rt2);
                    }
                });
            }
        }
        // 更新参数值表格
        function updateParams(data, data2) {

            $("#params-basic").html(
                "<caption>基本参数</caption>"+
                "<tr><th>U1</th><td>"+data["u1"].toFixed(2)+"</td></tr>"+
                "<tr><th>U2</th><td>"+data["u2"].toFixed(2)+"</td></tr>"+
                "<tr><th>U3</th><td>"+data["u3"].toFixed(2)+"</td></tr>"+
                "<tr><th>U4</th><td>"+data["u4"].toFixed(2)+"</td></tr>"+
                "<tr><th>I1</th><td>"+data["i1"].toFixed(2)+"</td></tr>"+
                "<tr><th>I2</th><td>"+data["i2"].toFixed(2)+"</td></tr>"+
                "<tr><th>I3</th><td>"+data["i3"].toFixed(2)+"</td></tr>"+
                "<tr><th>I4</th><td>"+data["i4"].toFixed(2)+"</td></tr>"
            );
            $("#params-power").html(
                "<caption>功率参数</caption>"+
                "<tr><th></th><th>相1</th><th>相2</th><th>相3</th><th>总和</th></tr>"+
                "<tr><th>P(KW)</th><td>"+data["p1"].toFixed(2)+"</td><td>"+data["p2"].toFixed(2)+"</td><td>"+data["p3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["p1"])+parseFloat(data["p2"])+parseFloat(data["p3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>Q(KVar)</th><td>"+data["q1"].toFixed(2)+"</td><td>"+data["q2"].toFixed(2)+"</td><td>"+data["q3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["q1"])+parseFloat(data["q2"])+parseFloat(data["q3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>S(KVA)</th><td>"+data["s1"].toFixed(2)+"</td><td>"+data["s2"].toFixed(2)+"</td><td>"+data["s3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["s1"])+parseFloat(data["s2"])+parseFloat(data["s3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>PF</th><td>"+data["pf1"].toFixed(2)+"</td><td>"+data["pf2"].toFixed(2)+"</td><td>"+data["pf3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["pf1"])+parseFloat(data["pf2"])+parseFloat(data["pf3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>Cos PHI</th><td>"+data["cosPhi1"].toFixed(2)+"</td><td>"+data["cosPhi2"].toFixed(2)+"</td><td>"+data["cosPhi3"].toFixed(2)+"</td><td></td></tr>"
            );
            $("#params-unb").html(
                "<caption>&nbsp;</caption>"+
                "<tr><th>不平衡度</th><td>"+data2.toFixed(2)+"</td></tr>"+
                "<tr><th>频率</th><td>"+data["hz"].toFixed(2)+"</td></tr>"
            );
            $("#params-shanbian").html(
                "<caption>闪变</caption>"+
                "<tr><th></th><th>U1</th><th>U2</th><th>U3</th></tr>"+
                "<tr><th>|f|</th><td>"+data["iflU1"].toFixed(2)+"</td><td>"+data["iflU2"].toFixed(2)+"</td><td>"+data["iflU3"].toFixed(2)+"</td></tr>"+
                "<tr><th>Pst</th><td>"+data["pstU1"].toFixed(2)+"</td><td>"+data["pstU2"].toFixed(2)+"</td><td>"+data["pstU3"].toFixed(2)+"</td></tr>"+
                "<tr><th>Plt</th><td>"+data["pltU1"].toFixed(2)+"</td><td>"+data["pltU2"].toFixed(2)+"</td><td>"+data["pltU3"].toFixed(2)+"</td></tr>"
            );
        }
    </script>

    <%--实时图形--%>
    <script type="text/javascript">

        function getOnlineWave(did){

            var data0 = 0;
            var data1 = 0;
            var data2 = 0;
            var data3 = 0;
            var data4 = 0;
            var data5 = 0;
            var data6 = 0;
            var data7 = 0;
            if(did != null && did != "") {
                $.ajax({
                    type: "post",
                    url: "getXBwave",
                    data: {
                        did: did
                    },
                    dataType: "json",
                    success: function (data) {
                        var obj = JSON.parse(data);

                        data0 = obj.nowpowerwave['u1'];
                        data1 = obj.nowpowerwave['u2'];
                        data2 = obj.nowpowerwave['u3'];
                        data3 = obj.nowpowerwave['u4'];
                        data4 = obj.nowpowerwave['i1'];
                        data5 = obj.nowpowerwave['i2'];
                        data6 = obj.nowpowerwave['i3'];
                        data7 = obj.nowpowerwave['i4'];

                        axisData = (new Date()).toLocaleTimeString().replace(/^\D*/, '');

                        var odata0 = option4.series[0].data;
                        var odata1 = option4.series[1].data;
                        var odata2 = option4.series[2].data;
                        var odata3 = option4.series[3].data;
                        var odata4 = option4.series[4].data;
                        var odata5 = option4.series[5].data;
                        var odata6 = option4.series[6].data;
                        var odata7 = option4.series[7].data;

                        odata0.shift();
                        odata0.push(data0);
                        odata1.shift();
                        odata1.push(data1);
                        odata2.shift();
                        odata2.push(data2);
                        odata3.shift();
                        odata3.push(data3);
                        odata4.shift();
                        odata4.push(data4);
                        odata5.shift();
                        odata5.push(data5);
                        odata6.shift();
                        odata6.push(data6);
                        odata7.shift();
                        odata7.push(data7);

                        option4.xAxis[0].data.shift();
                        option4.xAxis[0].data.push(axisData);

                        eventChart4.setOption(option4);
                    }
                });
            }
        }

    </script>

</body>

</html>