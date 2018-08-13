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

</head>

<body id="skin-blur-blue">
    <header id="header" class="media">
        <a href="" id="menu-toggle"></a>
        <a class="logo pull-left" href="province.jsp">IDP数据中心动力管控系统</a>

        <div class="media-body">
            <div class="media" id="top-menu">
                <div class="pull-left location-select">
                    <select class="form-control location-select-item" id="province_code" name="province_code" onchange="getCity()">
                        <option value="">请选择</option>
                    </select>

                    <select class="form-control location-select-item" id="city_code" name="city_code" onchange="getComproom()">
                        <option value="">请选择</option>
                    </select>

                    <select class="form-control location-select-item" id="comproom_code" name="comproom_code">
                        <option value="">请选择</option>
                    </select>
                </div>
                <div class="pull-right">欢迎用户${username}登录</div>
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

        <!-- Content -->
        <section id="content" class="container">

            <!-- Main Widgets -->
            <div class="block-area">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li class="active" style="width:25%">
                                <a data-toggle="tab" id="subItem1">•趋势图</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem2">•谐波</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem3">•三相电压不平衡度</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem4">•参数值</a>
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
                                <div id="item1-params-list" class="row">
                                    <div class="col-md-7">
                                        <ol>
                                            <li><input type="radio" name="params" id="item1-rms">RMS</li>
                                            <li><input type="radio" name="params" id="item1-thd">THD</li>
                                            <li><input type="radio" name="params" id="item1-cf">CF</li>
                                            <li><input type="radio" name="params" id="item1-hz">Hz</li>
                                            <li><input type="radio" name="params" id="item1-w">W</li>
                                            <li><input type="radio" name="params" id="item1-va">VA</li>
                                            <li><input type="radio" name="params" id="item1-var">Var</li>
                                            <li><input type="radio" name="params" id="item1-pf">PF</li>
                                        </ol>
                                    </div>
                                    <div class="col-md-5">
                                        <ol>
                                            <li><input type="radio" name="params" id="item1-unb">unb%</li>
                                            <li><input type="radio" name="params" id="item1-pst">Pst</li>
                                            <li><input type="radio" name="params" id="item1-plt">Plt</li>
                                            <li><input type="radio" name="params" id="item1-Vh">Vh</li>
                                            <li><input type="radio" name="params" id="item1-Ah">Ah</li>
                                        </ol>
                                    </div>
                                </div>
                                <div class="row">
                                    <div id="item1-params-text" class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-12">
                                                A1RMS<input type="checkbox">AVG=0 MIN=0 MAX=0
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                A2RMS<input type="checkbox">AVG=0 MIN=0 MAX=0
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                A3RMS<input type="checkbox">AVG=0 MIN=0 MAX=0
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div id="item1-graph" class="col-md-12" style="height: 550px;"></div>
                                </div>
                            </div>
                            <div id="item1-sidebar" class="col-md-1">
                                <ol>
                                    <li>
                                        <button class="btn btn-default">3U</button>
                                    </li>
                                    <li>
                                        <button class="btn btn-default">3V</button>
                                    </li>
                                    <li>
                                        <button class="btn btn-default">3A</button>
                                    </li>
                                    <li>
                                        <button class="btn btn-default">L1</button>
                                    </li>
                                    <li>
                                        <button class="btn btn-default">L2</button>
                                    </li>
                                    <li>
                                        <button class="btn btn-default">L3</button>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div id = "item2" class="col-md-12" style="height: 600px;">
                    </div>
                    <div id = "item3" class="col-md-12" style="height: 600px;">
                        <div class="row">
                            <div id="item3-text" class="col-md-2" style="height: 580px;" >
                                <ol class="value">
                                    <li>|<span id="item3-text-name1">A1</span>|&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-value1">222.2</span><span>A</span></li>
                                    <li>|<span id="item3-text-name2">A2</span>|&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-value2">222.2</span><span>A</span></li>
                                    <li>|<span id="item3-text-name3">A3</span>|&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-value3">222.2</span><span>A</span></li>
                                </ol>
                                <ol class="diff">
                                    <li>&Phi;<sub>12</sub>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-diff1">126</span><sup>&nbsp;o</sup></li>
                                    <li>&Phi;<sub>23</sub>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-diff2">126</span><sup>&nbsp;o</sup></li>
                                    <li>&Phi;<sub>31</sub>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-diff3">126</span><sup>&nbsp;o</sup></li>
                                </ol>
                            </div>
                            <div id="item3-graph" class="col-md-8" style="height: 580px;"></div>
                            <div id="item3-sidebar" class="col-md-2" style="height: 580px;">
                                <ol class="symbol">
                                    <li style="border: 2px solid #f00;">1</li>
                                    <li style="border: 2px solid #00f;">2</li>
                                    <li style="border: 2px solid #ff0;">3</li>
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
                        <div class="row">
                            <div id="item3-realtime" class="col-md-12">
                                <span>2013/07/11--14:40</span>
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
                </div>
            </div>

        </section>
    </section>

    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <script src="js/jquery-3.3.1.js"></script>

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
        /*加载省下拉选*/
        var provinceid="<%=session.getAttribute("probank")%>";
        if(provinceid){
            $('#province_code').append("<option value='" + provinceid + "' >" + provinceid + "</option>");
        }

        /*加载市下拉选*/
        function getCity() {
            var pname="<%=session.getAttribute("probank")%>";

            $("#city_code").empty();
            $("#comproom_code").empty();

            $.ajax({
                type: "post",
                url: "getCityTree",
                data: {provinceid: pname},
                dataType : "json",
                success: function (data) {

                    $('#city_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#city_code').append("<option value='" + obj[i].cbname + "' >" + obj[i].cbname + "</option>");
                    }
                }
            });
        }

        /*加载机房下拉选*/
        function getComproom() {
            var cname = $("#city_code").val();

            $("#comproom_code").empty();

            $.ajax({
                type: "post",
                url: "getCompTree",
                data: {cityid: cname},
                dataType : "json",
                success: function (data) {

                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
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
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataQst(mpcname);

                });
                $("#subItem2").click(function(){
                    $("#item1").hide();
                    $("#item2").show();
                    $("#item3").hide();
                    $("#item4").hide();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataXb(mpcname);

                });
                $("#subItem3").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").show();
                    $("#item4").hide();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataSxdy(mpcname);

                });
                $("#subItem4").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").show();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataParams(mpcname);

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

        //处理第一个和最后一个
        cbidstr[0] = cbidstr[0].substring(1);
        cbidstr[0] = " " + cbidstr[0];

        var idx = cbidstr.length - 1;
        var len = cbidstr[idx].length;
        cbidstr[idx] = cbidstr[idx].substring(0, len - 1);

        for(var i = 0; i < cbidstr.length; i++){

            var menuname = "";
            if(cbidstr[i] == ' province.jsp')
                menuname = "集中监控";

            else if(cbidstr[i] == ' efficiencyDevice.jsp')
                menuname = "动力设施";

            else if(cbidstr[i] == ' onlineDetect.jsp')
                menuname = "在线监测";

            else if(cbidstr[i] == ' efficiencyAnalysis.jsp')
                menuname = "动力分析";

            else if(cbidstr[i] == ' efficiencyAssessment.jsp')
                menuname = "动力评估";

            else if(cbidstr[i] == ' reportChart.jsp')
                menuname = "报表功能";

            else if(cbidstr[i] == ' history.jsp') //userMng.jsp'
                menuname = "历史曲线";

            else if(cbidstr[i] == ' systemMng.jsp')
                menuname = "系统管理";

            $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
        }
    </script>

    <!-- 动态加载检测点列表 -->
    <script type="text/javascript">
        //获取检测点列表
        function getMonitorPoints(){

            var computerroom = 1;
            var mpcname = $("#monitorpnt").val();

            if(!mpcname) { //若没有获取过，获取
                $.ajax({
                    type: "post",
                    url: "getMonitorPoints",
                    data: {computerroom: computerroom},
                    dataType : "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.allmpdata;
                        for (var i = 0; i < rt.length; i++) {
                            $('#monitorpnt').append("<option value='" + rt[i].mpid + "' >" + rt[i].name + "</option>");
                        }
                    },
                    error: function () {
                        alert("加载监测点失败");
                    }
                });
            }
        }
    </script>

    <%--图表中使用到的变量声明--%>
    <script type="text/javascript">
        // 全局变量、暂存数据的变量、配置项变量
        var qstRecords = []; // 暂存趋势图数据
        var gaugePointerColor = ["#ff0000", "#0000ff", "#ffff00"]; // 三相不平衡度表的指针颜色
        var sxbphdlegend = ["U1", "U2", "U3", "V1", "V2", "V3", "A1", "A2", "A3"]; // 三相不平衡度表的图例
        var maxAmplitude = 400; // 三相不平衡度表中幅值的最大值，用来计算指针长度
        var dataSxbphd = null; // 暂存三相不平衡度表中的数据
        // 各个图的配置项
        var option1 = {
            legend: {
                show: false
            },
            xAxis: {
                type: 'time',
                splitLine: {
                    show: false
                }
            },
            yAxis: {
                type: 'value',
                boundaryGap: [0, '100%'],
                splitLine: {
                    show: false
                }
            },
            series: [
                // RMS
                {
                    name: "rmsU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "rmsU1"}
                },
                {
                    name: "rmsU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "rmsU3"}
                },
                {
                    name: "rmsU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "rmsU3"}
                },
                {
                    name: "rmsI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "rmsI1"}
                },
                {
                    name: "rmsI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "rmsI2"}
                },
                {
                    name: "rmsI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "rmsI3"}
                },
                // THD
                {
                    name: "thdU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "thdU1"}
                },
                {
                    name: "thdU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "thdU3"}
                },
                {
                    name: "thdU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "thdU3"}
                },
                {
                    name: "thdI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "thdI1"}
                },
                {
                    name: "thdI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "thdI2"}
                },
                {
                    name: "thdI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "thdI3"}
                },
                // CF
                {
                    name: "cfU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "cfU1"}
                },
                {
                    name: "cfU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "cfU3"}
                },
                {
                    name: "cfU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "cfU3"}
                },
                {
                    name: "cfI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "cfI1"}
                },
                {
                    name: "cfI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "cfI2"}
                },
                {
                    name: "cfI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "cfI3"}
                },
                // Hz
                {
                    name: "hz", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "hz"}
                },
                // W
                {
                    name: "p1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "p1"}
                },
                {
                    name: "p2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "p2"}
                },
                {
                    name: "p3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "p3"}
                },
                // VA
                {
                    name: "s1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "s1"}
                },
                {
                    name: "s2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "s2"}
                },
                {
                    name: "s3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "s3"}
                },
                // Var
                {
                    name: "q1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "q1"}
                },
                {
                    name: "q2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "q2"}
                },
                {
                    name: "q3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "q3"}
                },
                // PF
                {
                    name: "pf1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pf1"}
                },
                {
                    name: "pf2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pf2"}
                },
                {
                    name: "pf3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pf3"}
                },
                // DPF
                {
                    name: "dpf1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "dpf1"}
                },
                {
                    name: "dpf2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "dpf2"}
                },
                {
                    name: "dpf3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "dpf3"}
                },
                // Tan
                {
                    name: "tan1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "tan1"}
                },
                {
                    name: "tan2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "tan2"}
                },
                {
                    name: "tan3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "tan3"}
                },
                // unb
                {
                    name: "unb", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "unb"}
                },
                // Pst
                {
                    name: "pstU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pstU1"}
                },
                {
                    name: "pstU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pstU2"}
                },
                {
                    name: "pstU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pstU3"}
                },
                // Plt
                {
                    name: "pltU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pltU1"}
                },
                {
                    name: "pltU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pltU2"}
                },
                {
                    name: "pltU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    encode: {x: "time", y: "pltU3"}
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
                    magicType: {type: ['line', 'bar']},
                    restore: {},
                    // saveAsImage: {}
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
                axisLabel: {
                    formatter: '{value}'
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
                {
                    name: "U1",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: ""
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[0]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[0]}]
                },
                {
                    name: "U2",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[1]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[1]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[1]}]
                },
                {
                    name: "U3",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[2]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[2]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[2]}]
                },
                {
                    name: "V1",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[3]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[0]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[3]}]
                },
                {
                    name: "V2",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[4]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[1]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[4]}]
                },
                {
                    name: "V3",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[5]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[2]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[5]}]
                },
                {
                    name: "A1",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[6]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[0]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[6]}]
                },
                {
                    name: "A2",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[7]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[1]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[7]}]
                },
                {
                    name: "A3",
                    type: "gauge",
                    min: 0,
                    max: 360,
                    startAngle: 0,
                    endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {
                        show: true,
                        length: "10%",
                        lineStyle: {
                            width: 4
                        }
                    },
                    //仪表盘轴线
                    axisLine: {
                        show: true,
                        lineStyle: {
                            color: [[0.5, "#ccc"], [1, "#ccc"]],
                            width: 10
                        }
                    },
                    //刻度线
                    axisTick: {
                        show: true,
                        splitNumber: 2,
                        length: "5%",
                        lineStyle: {
                            width: 2
                        }
                    },
                    //刻度标签
                    axisLabel: {
                        show: false,
                    },
                    //指针
                    // pointer: {
                    //     length: pointerLength[8]
                    // },
                    //指针样式
                    itemStyle: {
                        color: gaugePointerColor[2]
                    },
                    title: {
                        show: false
                    },
                    detail: {
                        show: false
                    }
                    // data:[{value: pointerAngle[8]}]
                }
            ]
        };
        // echarts图表容器
        var eventChart1 = echarts.init(document.getElementById('item1-graph'));
        var eventChart2 = echarts.init(document.getElementById('item2'));
        var eventChart3 = echarts.init(document.getElementById('item3-graph'));
    </script>

    <%--趋势图相关函数 --%>
    <script type="text/javascript">
        // 获取趋势图数据
        function getDataQst(mpid) {
            $.ajax({
                type: "post",
                url: "getQst",
                data: {monitorpointid: mpid},
                dataType: "json",
                success: function (data) {
                    addData(qstRecords, JSON.parse(data));
                    updateQst(qstRecords);
                },
                error: function () {
                    alert("获取Qst数据失败");
                }
            });
        }
        // 更新趋势图
        function updateQst(data) {
            window.console.log(data);
            eventChart1.setOption({
                dataset: {
                    source: data
                }
            });
        }
        // 添加数据
        function addData(qstRecords, newRecord) {
            window.console.log(qstRecords);
            if (qstRecords.length > (60 * 12)) {
                qstRecords.shift();
            }
            // 构造一条记录
            var oneRecord = {
                time: newRecord["allHZ"][0]["time"],
                // RMS
                rmsU1: newRecord["allRMS"][0]["u1Xb"],
                rmsU2: newRecord["allRMS"][0]["u2Xb"],
                rmsU3: newRecord["allRMS"][0]["u3Xb"],
                rmsI1: newRecord["allRMS"][0]["i1Xb"],
                rmsI2: newRecord["allRMS"][0]["i2Xb"],
                rmsI3: newRecord["allRMS"][0]["i3Xb"],
                // THD
                thdU1: newRecord["allTHD"][0]["u1Xb"],
                thdU2: newRecord["allTHD"][0]["u2Xb"],
                thdU3: newRecord["allTHD"][0]["u3Xb"],
                thdI1: newRecord["allTHD"][0]["i1Xb"],
                thdI2: newRecord["allTHD"][0]["i2Xb"],
                thdI3: newRecord["allTHD"][0]["i3Xb"],
                // CF
                cfU1: newRecord["allCF"][0]["u1Xb"],
                cfU2: newRecord["allCF"][0]["u2Xb"],
                cfU3: newRecord["allCF"][0]["u3Xb"],
                cfI1: newRecord["allCF"][0]["i1Xb"],
                cfI2: newRecord["allCF"][0]["i2Xb"],
                cfI3: newRecord["allCF"][0]["i3Xb"],
                // Hz
                hz: newRecord["allHZ"][0]["hz"],
                // W
                p1: newRecord["allW"][0]["p1"],
                p2: newRecord["allW"][0]["p2"],
                p3: newRecord["allW"][0]["p3"],
                // VA
                s1: newRecord["allVA"][0]["s1"],
                s2: newRecord["allVA"][0]["s2"],
                s3: newRecord["allVA"][0]["s3"],
                // Var
                q1: newRecord["allVAR"][0]["q1"],
                q2: newRecord["allVAR"][0]["q2"],
                q3: newRecord["allVAR"][0]["q3"],
                // PF
                pf1: newRecord["allPF"][0]["pf1"],
                pf2: newRecord["allPF"][0]["pf2"],
                pf3: newRecord["allPF"][0]["pf3"],
                // DPF
                dpf1: newRecord["allDPF"][0]["cosPhi1"],
                dpf2: newRecord["allDPF"][0]["cosPhi2"],
                dpf3: newRecord["allDPF"][0]["cosPhi3"],
                // Tan
                tan1: newRecord["allTAN"][0],
                tan2: newRecord["allTAN"][1],
                tan3: newRecord["allTAN"][2],
                // unb
                unb: newRecord["allUNB"][0]["unb"],
                // Pst
                pstU1: newRecord["allPST"][0]["pstU1"],
                pstU2: newRecord["allPST"][0]["pstU2"],
                pstU3: newRecord["allPST"][0]["pstU3"],
                // Plt
                pltU1: newRecord["allPLT"][0]["pltU1"],
                pltU2: newRecord["allPLT"][0]["pltU2"],
                pltU3: newRecord["allPLT"][0]["pltU3"]
                // vh
                // Ah
            };
            qstRecords.push(oneRecord);
        }
    </script>

    <%--谐波图相关函数 --%>
    <script type="text/javascript">
        // 获取谐波数据
        function getDataXb(mpid) {
            $.ajax({
                type: "post",
                url: "getXB",
                data: {
                    monitorpointid: mpid,
                },
                dataType: "json",
                success: function (data) {
                    updateXbt(data);
                },
                error: function(){
                    alert("获取谐波数据失败");
                }
            });
        }
        // 更新谐波图
        function updateXbt(data) {
            var obj=JSON.parse(data);
            var series=["u1Xb","u2Xb","u3Xb","u4Xb","i1Xb","i2Xb","i3Xb","i4Xb"];
            var res=[];//二维数组
            for(var i=0;i<series.length;i++){
                var temp=[];    //一维数组
                for(var j=0;j<obj.length;j++){
                    temp.push(parseFloat(obj[j][series[i]]));
                }
                res.push(temp);
            }
            eventChart2.setOption({
                series: [
                    {
                        name: "U1",
                        type: 'line',
                        data: res[0]
                    },
                    {
                        name: "U2",
                        type: 'line',
                        data: res[1]
                    },
                    {
                        name: "U3",
                        type: 'line',
                        data: res[2]
                    },
                    {
                        name: "U4",
                        type: 'line',
                        data: res[3]
                    },
                    {
                        name: "I1",
                        type: 'line',
                        data: res[4]
                    },
                    {
                        name: "I2",
                        type: 'line',
                        data: res[5]
                    },
                    {
                        name: "I3",
                        type: 'line',
                        data: res[6]
                    },
                    {
                        name: "I4",
                        type: 'line',
                        data: res[7]
                    }
                ]
            });
        }
    </script>

    <%--三相不平衡度表相关函数 --%>
    <script type="text/javascript">
        // 获取三相电压、电流数据
        function getDataSxdy(mpid) {
            $.ajax({
                type: "post",
                url: "getSXDY",
                data: {monitorpointid: mpid},
                dataType: "json",
                success: function (data) {
                    // 数据先暂存起来
                    dataSxbphd = JSON.parse(data);
                    updateSxdyt(dataSxbphd);
                    // 设置显示的系列
                    $("#item3-sidebar ol li button.active").trigger("click");
                },
                error: function () {
                    alert("获取三相电压数据失败");
                }
            });
        }
        // 更新三相电压、电流图
        function updateSxdyt(data) {
            // 更新图左侧文字
            updateSxdyt2(data);
            // 计算指针长度，并用数组存起来
            var pointerLength = [];
            pointerLength.push(floatToPercent(data[0]["u1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["u2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["u3"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["v1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["v2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["v3"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["a1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["a2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["a3"] / maxAmplitude));
            // 更新图
            eventChart3.setOption({
                series: [
                    {
                        name: "U1",
                        pointer: {length: pointerLength[0]},
                        data: [{value: data[0]["angleU1"]}]
                    },
                    {
                        name: "U2",
                        pointer: {length: pointerLength[1]},
                        data: [{value: data[0]["angleU2"]}]
                    },
                    {
                        name: "U3",
                        pointer: {length: pointerLength[2]},
                        data: [{value: data[0]["angleU3"]}]
                    },
                    {
                        name: "V1",
                        pointer: {length: pointerLength[3]},
                        data: [{value: data[0]["angleV1"]}]
                    },
                    {
                        name: "V2",
                        pointer: {length: pointerLength[4]},
                        data: [{value: data[0]["angleV2"]}]
                    },
                    {
                        name: "V3",
                        pointer: {length: pointerLength[5]},
                        data: [{value: data[0]["angleV3"]}]
                    },
                    {
                        name: "A1",
                        pointer: {length: pointerLength[6]},
                        data: [{value: data[0]["angleA1"]}]
                    },
                    {
                        name: "A2",
                        pointer: {length: pointerLength[7]},
                        data: [{value: data[0]["angleA2"]}]
                    },
                    {
                        name: "A3",
                        pointer: {length: pointerLength[8]},
                        data: [{value: data[0]["angleA3"]}]
                    }
                ]
            });
            // 更新时间
            $("#item3-realtime span").html(dateFormat(new Date(data[0]["time"]), "yyyy-mm-dd  hh:MM:ss"));

        }
        // 更新三相电压、电流图左侧显示的文字
        function updateSxdyt2(data) {
            // 获取被选中按钮的value值
            var value = $("#item3-sidebar ol li button.active").attr("value");
            // console.log(value);
            switch (value) {
                case "U" :
                case "V" :
                case "A" : {
                    // 更新幅值
                    $("#item3-text-name1").html(value + "1");
                    $("#item3-text-value1").html(data[0][value.toLowerCase() + "1"]);
                    $("#item3-text-name2").html(value + "2");
                    $("#item3-text-value2").html(data[0][value.toLowerCase() + "2"]);
                    $("#item3-text-name3").html(value + "3");
                    $("#item3-text-value3").html(data[0][value.toLowerCase() + "3"]);
                    // 更新相位差
                    $("#item3-text ol.diff").show();
                    $("#item3-text-diff1").html(data[0]["angle" + value + "2"] - data[0]["angle" + value + "1"]);
                    $("#item3-text-diff2").html(data[0]["angle" + value + "3"] - data[0]["angle" + value + "2"]);
                    $("#item3-text-diff3").html(data[0]["angle" + value + "1"] - data[0]["angle" + value + "3"]);
                    break;
                }
                case "1" :
                case "2" :
                case "3" : {
                    // 更新幅值
                    $("#item3-text-name1").html("U" + value);
                    $("#item3-text-value1").html(data[0]["u" + value]);
                    $("#item3-text-name2").html("V" + value);
                    $("#item3-text-value2").html(data[0]["v" + value]);
                    $("#item3-text-name3").html("A" + value);
                    $("#item3-text-value3").html(data[0]["a" + value]);
                    // 隐藏相位差
                    $("#item3-text ol.diff").hide();
                    break;
                }
                default : {

                }
            }
        }
        // 浮点数转成百分比，保留一位小数，返回字符串
        function floatToPercent(num) {
            return (new Number(num) * 100).toFixed(1) + "%";
        }
        // 日期格式化
        function dateFormat(date, fmt) {
            var o = {
                "m+": date.getMonth() + 1, //月份
                "d+": date.getDate(), //日
                "h+": date.getHours(), //小时
                "M+": date.getMinutes(), //分
                "s+": date.getSeconds() //秒
            };
            if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (date.getFullYear() + "").substr(4 - RegExp.$1.length));
            for (var k in o)
                if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            return fmt;
        }
    </script>

    <%--参数值表格相关函数--%>
    <script type="text/javascript">
        // 获取参数值
        function getDataParams(mpid) {
            $.ajax({
                type: "post",
                url: "getParameter",
                data: {monitorpointid: mpid},
                success: function(data){
                    updateParams((JSON.parse(data))[0]);
                },
                error: function(){
                    alert("获取参数值失败")
                }
            })
        }
        // 更新参数值表格
        function updateParams(data) {
            $("#params-basic").html(
                "<caption>基本参数</caption>"+
                "<tr><th>U1</th><td>"+data["u1"]+"</td></tr>"+
                "<tr><th>U2</th><td>"+data["u2"]+"</td></tr>"+
                "<tr><th>U3</th><td>"+data["u3"]+"</td></tr>"+
                "<tr><th>U4</th><td>"+data["u4"]+"</td></tr>"+
                "<tr><th>I1</th><td>"+data["i1"]+"</td></tr>"+
                "<tr><th>I2</th><td>"+data["i2"]+"</td></tr>"+
                "<tr><th>I3</th><td>"+data["i3"]+"</td></tr>"+
                "<tr><th>I4</th><td>"+data["i4"]+"</td></tr>"
            );
            $("#params-power").html(
                "<caption>功率参数</caption>"+
                "<tr><th></th><th>相1</th><th>相2</th><th>相3</th><th>总和</th></tr>"+
                "<tr><th>P(W)</th><td>"+data["p1"]+"</td><td>"+data["p2"]+"</td><td>"+data["p3"]+"</td><td>"+Number(parseInt(data["p1"])+parseInt(data["p2"])+parseInt(data["p3"]))+"</td></tr>"+
                "<tr><th>Q(Var)</th><td>"+data["q1"]+"</td><td>"+data["q2"]+"</td><td>"+data["q3"]+"</td><td>"+Number(parseInt(data["q1"])+parseInt(data["q2"])+parseInt(data["q3"]))+"</td></tr>"+
                "<tr><th>S(VA)</th><td>"+data["s1"]+"</td><td>"+data["s2"]+"</td><td>"+data["s3"]+"</td><td>"+Number(parseInt(data["s1"])+parseInt(data["s2"])+parseInt(data["s3"]))+"</td></tr>"+
                "<tr><th>PF</th><td>"+data["pf1"]+"</td><td>"+data["pf2"]+"</td><td>"+data["pf3"]+"</td><td>"+Number(parseInt(data["pf1"])+parseInt(data["pf2"])+parseInt(data["pf3"]))+"</td></tr>"+
                "<tr><th>Cos PHI</th><td>"+data["cosPhi1"]+"</td><td>"+data["cosPhi2"]+"</td><td>"+data["cosPhi3"]+"</td><td></td></tr>"
            );
            $("#params-unb").html(
                "<caption>&nbsp;</caption>"+
                "<tr><th>不平衡度</th><td>"+data["unb"]+"</td></tr>"+
                "<tr><th>频率</th><td>"+data["hz"]+"</td></tr>"
            );
            $("#params-shanbian").html(
                "<caption>闪变</caption>"+
                "<tr><th></th><th>U1</th><th>U2</th><th>U3</th></tr>"+
                "<tr><th>|f|</th><td>"+data["iflU1"]+"</td><td>"+data["iflU2"]+"</td><td>"+data["iflU3"]+"</td></tr>"+
                "<tr><th>Pst</th><td>"+data["pstU1"]+"</td><td>"+data["pstU2"]+"</td><td>"+data["pstU3"]+"</td></tr>"+
                "<tr><th>Plt</th><td>"+data["pltU1"]+"</td><td>"+data["pltU2"]+"</td><td>"+data["pltU3"]+"</td></tr>"
            );
            $("#params-shunbian").html("<tr><th>瞬变</th><td>"+data["shunbian"]+"</td></tr>");
            $("#params-lytx").html("<tr><th>浪涌/塌陷</th><td>"+data["lytx"]+"</td></tr>");
        }
    </script>

    <%--在线监测模块各个图表初始化--%>
    <script type="text/javascript">
        function chartsInit(){
            // 初始化图表
            eventChart1.setOption(option1);
            eventChart2.setOption(option2);
            eventChart3.setOption(option3);
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
            // 按指定时间间隔更新图表
            // setInterval(function () {
            //     getDataQst($("#monitorpnt").val());
            //     getDataXb($("#monitorpnt").val());
            //     getDataSxdy($("#monitorpnt").val());
            //     getDataParams($("#monitorpnt").val());
            // },5000);

            //默认检测点初始值为1
            $("select#monitorpnt").val("电能监测点1");
            getDataQst(1);
            getDataXb(1);
            getDataSxdy(1);
            getDataParams(1);
        }
        chartsInit();
    </script>

    <%--选择监测点时，从后台读取相应数据--%>
    <script type="text/javascript">
    $("select#monitorpnt").change(function(){
       var mpcname = $("#monitorpnt").val();

       if(mpcname) {
           if ($("#subItem1").is(":visible"))
               getDataQst(mpcname);
           else if ($("#subItem2").is(":visible"))
               getDataXb(mpcname);
           else if ($("#subItem3").is(":visible"))
               getDataSxdy(mpcname);
           else if ($("#subItem4").is(":visible"))
               getDataParams(mpcname);
       }
    });
    </script>


</body>

</html>