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
    <link href="css/mycss.css" rel="stylesheet">

</head>
<style type="text/css">
    .r_out {
        width: 120px;
        height: 120px;
        border: 2px solid #d9d9d9;
        background: #fff;
        box-shadow: 3px 3px 5px #bfbfbf;
        -webkit-box-shadow: 3px 3px 5px #bfbfbf;
        -moz-box-shadow: 3px 3px 5px #bfbfbf;
        -ms-box-shadow: 3px 3px 5px #bfbfbf;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        -ms_border-radius: 50%;
        display: inline-block;
        margin-right: 90px;
        position: relative;
    }

    .r_out p {
        position: absolute;
        /**bottom:-50px;*/
        color: #fff;
        text-align: center;
        margin: 0 auto;
        width: 100%;
        font-size: 14px;
        line-height: 1.5;
        font-weight: bold;
    }

    .r_in {
        width: 120px;
        height: 120px;
        border: 10px solid #fff;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        -moz-border-radius: 50%;
        -ms_border-radius: 50%;
        overflow: hidden;
        position: relative;
    }

    .r_c {
        width: 120px;
        height: 120px;
        position: absolute;
        bottom: 0;
        left: 0;
        height: 0;
    }

    .c1 {
        background: #fbad4c;
    }

    .c2 {
        background: #fff143;
    }

    .c3 {
        background: #c9dd22;
    }

    .c4 {
        background: #00e079;
    }

    .c5 {
        background: #0eb83a;
    }

    .r_num {
        color: #404040;
        font-size: 23px;
        line-height: 1.5;
        font-weight: bold;
        position: absolute;
        top: 50%;
        margin-top: -25px;
        text-align: center;
        width: 100%;
    }

    #triangle-right {
        width: 0;
        height: 0;
        border-top: 15px solid transparent;
        border-left: 15px solid #DB241C;
        border-bottom: 15px solid transparent;
    }

    .alert-lost {
        padding: 5px;
        margin-top: 10px;
        margin-bottom: -8px;
        font-size: 14px;
    }
</style>

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

            <!-- Breadcrumb -->

            <!-- Main Widgets -->

            <div class="block-area">
                <div class="row">

                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem2">•事件分析</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem3">•能效分析</a>
                            </li>
                        </ul>
                    </div>

                    <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        事件分析
                        <button type="button" class="btn btn-sm btn-alt" onClick="getDeviceEvent()" >测试"设备事件"</button>
                        <button type="button" class="btn btn-sm btn-alt" onClick="getPowerEvent()" >测试"电能质量事件"</button>
                        <button type="button" class="btn btn-sm btn-alt" onClick="getEvironmentEvent()" >测试"环境事件"</button>

                        <div class="block-area">
                            <div class="row">
                                <div class="col-md-10">

                                    <table id="event-table-head1">
                                        <thead>
                                        <tr>
                                            <th><img src="/img/setting.jpg" alt=""></th>
                                            <th><img src="/img/refresh.jpg" alt=""></th>
                                            <th><button type="button" class="btn btn-sm btn-alt" onClick="exportTable()" >导出</button></th>
                                            <th><button type="button" class="btn btn-sm btn-alt" onClick="printTable()" >打印</button></th>
                                        </tr>
                                        </thead>
                                    </table>

                                    <div class="tile">
                                        <h2 class="tile-title">
                                            <table id="event-table-head2">
                                                <thead>
                                                <tr>
                                                    <th><div style="padding-left:40px;">事件名称</div></th>
                                                    <th><div style="padding-left:40px;">位置</div></th>
                                                    <th><div style="padding-left:40px;">事件类型</div></th>
                                                    <th><div style="padding-left:40px;">事件描述</div></th>
                                                    <th><div style="padding-left:40px;">事件发生时间</div></th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </h2>

                                        <table id="event-table-1"></table>
                                        <table id="event-table-2"></table>
                                        <table id="event-table-3"></table>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>

                    <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        能效分析
                        <div class="col-md-12">
                            <!-- Main Chart -->
                            <div class="tile" style="height: 350px">
                                <h2 class="tile-title" style="font-size: 20px">能耗统计</h2>
                                <div class="tile-config dropdown">
                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                    <ul class="dropdown-menu pull-right text-right">
                                        <li>
                                            <a class="tile-info-toggle" href="">Chart Information</a>
                                        </li>
                                        <li>
                                            <a href="">Refresh</a>
                                        </li>
                                        <li>
                                            <a href="">Settings</a>
                                        </li>
                                    </ul>
                                </div>
                                <ul class="nav nav-tabs col-md-12" style="margin: 0px;padding: 0px">
                                    <li class=" col-md-3" style="margin: 0px;padding: 0px">
                                        <a data-toggle="tab">●办公楼</a>
                                    </li>
                                    <li class="col-md-3" style="margin: 0px;padding: 0px">
                                        <a data-toggle="tab">●机房</a>
                                    </li>
                                    <li class="col-md-2" style="margin: 0px;padding: 0px">
                                        <a data-toggle="tab">●基站</a>
                                    </li>
                                    <li class="active col-md-2" style="margin: 0px;padding: 0px">
                                        <a data-toggle="tab">●营业厅</a>
                                    </li>
                                </ul>
                                <div class="col-md-12" style="margin: 0px;padding: 0px">
                                    <div class="col-md-1" style="margin: 0px;padding: 0px">
                                        <ul class="nav nav-tabs col-md-12" style="margin: 0px;padding: 0px;height: 283px">
                                            <li class="active col-md-12" style="margin: 0px;padding: 0px">
                                                <a data-toggle="tab">能耗统计</a>
                                            </li>
                                            <li class="col-md-12" style="margin: 0px;padding: 0px">
                                                <a data-toggle="tab">费用统计</a>
                                            </li>
                                            <li class="col-md-12" style="margin: 0px;padding: 0px">
                                                <a data-toggle="tab">节能减排</a>
                                            </li>
                                            <li class="col-md-12" style="margin: 0px;padding: 0px">
                                                <a data-toggle="tab">对标统计</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-8" style=" height: 270px;">
                                        <div class="row " style="margin-top:15px;">
                                            <div class='col-md-4 hide'>
                                                <div class='col-md-4'>
                                                    <button class="btn btn-default">机构:</button>
                                                </div>
                                                <div class='col-md-8'>
                                                    <input id='123' class="form-control" />
                                                </div>
                                            </div>
                                            <div class='col-md-6'>
                                                <div class='col-md-4'>
                                                    <button class="btn btn-default pull-right">站房:</button>
                                                </div>
                                                <div class='col-md-8'>
                                                    <select class="select">
                                                        <option>基站A</option>
                                                        <option>基站B</option>
                                                        <option>基站C</option>
                                                        <option>基站D</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class='col-md-5'>
                                                <div class='col-md-5'>
                                                    <button class="btn btn-default pull-right">加入对比时间:</button>
                                                </div>
                                                <div class='col-md-7'>
                                                    <input id='consumptionDate' class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                        <div id="consumptiondiv" class="col-md-12" style=" height: 250px;"></div>
                                    </div>
                                    <div class="col-md-3">
                                        <label style="height: 30px"></label>
                                        <h3>单位面积总能耗</h3>
                                        <span>分时间尺度展示当前建筑单位面积总能耗。同</span>
                                        <span>时通过下拉时间列表自由比对历史单位面积总</span>
                                        <span>能耗值。</span>
                                        <br>
                                        <div class="col-md-6">
                                            <span style="font-size: 23px">0.65</span>
                                            <span>kwh/(m²天)</span>
                                            <br>
                                            <span>本月平均单位面积总能耗</span>
                                        </div>
                                        <div class="col-md-6">
                                            <span style="font-size: 23px">↑10</span>
                                            <span>%</span>
                                            <br>
                                            <span>与同类建筑相比</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--  Recent Postings -->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="tile">
                                        <h2 class="tile-title" style="font-size: 20px">建筑系统能效指标</h2>
                                        <div class="col-md-4" style="padding-left: 0px;">
                                            <div class="tile" style="height: 480px">
                                                <h3 class="tile-title" style="font-size: 17px">人均空调系统能耗</h3>
                                                <div class="tile-config dropdown">
                                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                                    <ul class="dropdown-menu animated pull-right text-right">
                                                        <li>
                                                            <a href="">Refresh</a>
                                                        </li>
                                                        <li>
                                                            <a href="">Settings</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="p-10">
                                                    <span class="col-md-11" style="padding-left: 20px">分时间尺度的展示当前却水泵用电量，同时通过下拉时间列表自由对比历史冷却水泵用电量数据。</span>
                                                    <div id="conditionerdiv" style="width: 100%; height: 300px;"></div>
                                                    <div class="col-md-12">
                                                        <ul class="nav nav-tabs" style="margin: 0px;padding: 0px;">
                                                            <li class="active col-md-3" style="margin: 0px;padding: 0px">
                                                                <a data-toggle="tab">日视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">周视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">月视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">年视图</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <input id='conditionerDate' type="text" style="margin-top: 10px; width: 200px;display: inline!important;" class="form-control"
                                                        />
                                                        <input type="button" class="btn btn-default" value="加入对比时间">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Tasks to do -->
                                        <div class="col-md-4">
                                            <div class="tile" style="height: 480px">
                                                <h2 class="tile-title" style="font-size: 17px">照明系统能效比</h2>
                                                <div class="tile-config dropdown">
                                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                                    <ul class="dropdown-menu pull-right text-right">
                                                    </ul>
                                                </div>
                                                <div class="p-10">
                                                    <span class="col-md-11" style="padding-left: 20px">分时间尺度的展示当前建筑空调系统用电，同时通过下拉时间列表自由对比历史空调用电数据。</span>
                                                    <div id="line-chart" class="main-chart" style="height: 300px;margin-top: 59px;"></div>
                                                    <div class="col-md-12">
                                                        <ul class="nav nav-tabs" style="margin: 0px;padding: 0px;">
                                                            <li class="active col-md-3" style="margin: 0px;padding: 0px">
                                                                <a data-toggle="tab">日视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">周视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">月视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">年视图</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <input id='lineDate' type="text" style="margin-top: 10px; width: 200px;display: inline!important;" class="form-control" />
                                                        <input type="button" class="btn btn-default" value="加入对比时间">
                                                    </div>
                                                    <!--<div class="col-md-12" style="text-align: right;">-->
                                                    <!--<a><span style="font-style:italic;">查看冷机制冷量</span></a>-->
                                                    <!--</div>-->
                                                </div>

                                            </div>
                                        </div>

                                        <!-- Tasks to do -->
                                        <div class="col-md-4" style="padding-right: 0px">
                                            <div class="tile" style="height: 480px">
                                                <h2 class="tile-title" style="font-size: 17px">空调系统能效比</h2>
                                                <div class="tile-config dropdown">
                                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                                    <ul class="dropdown-menu pull-right text-right">
                                                        <li id="todo-add">
                                                            <a href="">Add New</a>
                                                        </li>
                                                        <li id="todo-refresh">
                                                            <a href="">Refresh</a>
                                                        </li>
                                                        <li id="todo-clear">
                                                            <a href="">Clear All</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="p-10">
                                                    <span class="col-md-11" style="padding-left: 20px">分时间尺度的展示当前数据中心用电，同时通过下拉时间列表自由对比历史数据中心用电数据。</span>
                                                    <div id="EERdiv" style="width: 100%; height: 300px;"></div>
                                                    <div class="col-md-12">
                                                        <ul class="nav nav-tabs" style="margin: 0px;padding: 0px;">
                                                            <li class="col-md-3" style="margin: 0px;padding: 0px">
                                                                <a data-toggle="tab">日视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">周视图</a>
                                                            </li>
                                                            <li class="active col-md-3">
                                                                <a data-toggle="tab">月视图</a>
                                                            </li>
                                                            <li class="col-md-3">
                                                                <a data-toggle="tab">年视图</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <input id='EERDate' type="text" style="margin-top: 10px; width: 200px;display: inline!important;" class="form-control" />
                                                        <input type="button" class="btn btn-default" value="加入对比时间">
                                                    </div>
                                                    <!--<div class="col-md-12">-->
                                                    <!--<div class="col-md-5">-->
                                                    <!--<a><span style="font-style:italic;">查看建筑用电分析</span></a>-->
                                                    <!--</div>-->
                                                    <!--<div class="col-md-7">-->
                                                    <!--<a><span style="font-style:italic;">查看单位建筑面积总能耗</span></a>-->
                                                    <!--</div>-->
                                                    <!--</div>-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="clearfix"></div>
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
    <!--Media Player-->
    <script src="js/media-player.min.js"></script>
    <!-- USA Map for jVectorMap -->
    <!-- Map -->
    <script src="js/maps/jvectormap.min.js"></script>
    <!-- jVectorMap main library -->
    <script src="js/maps/usa.js"></script>
    <!-- USA Map for jVectorMap -->

    <!--  Form Related -->
    <script src="js/icheck.js"></script>
    <!-- Custom Checkbox + Radio -->

    <!-- UX -->
    <script src="js/scroll.min.js"></script>
    <!-- Custom Scrollbar -->
    <script src="js/select.min.js"></script>
    <!-- Custom Select -->
    <!-- Other -->
    <script src="js/calendar.min.js"></script>
    <!-- Calendar -->
    <script src="assets/amcharts/amcharts.js" type="text/javascript"></script>
    <script src="assets/amcharts/serial.js" type="text/javascript"></script>
    <script src="js/jquery.datetimepicker.js" type="text/javascript"></script>
    <!--  		 <script src="js/feeds.min.js"></script> News Feeds -->
    <!-- All JS functions -->
    <script src="js/functions.js"></script>
    <script src="js/echarts.js"></script>

    <!-- 省\市\机房下拉菜单-->
    <script type="text/javascript">
        var provinceid="<%=session.getAttribute("probank")%>";

        if(provinceid){//第一次进入这个页面，没有获取过
            $("#province_code").empty();
            $('#province_code').append("<option value='" + provinceid + "' >" + provinceid + "</option>");
        }
        else{
        }

        /*加载市下拉选*/
        function getCity() {
            var pname = $("#province_code").val();
            $("#city_code").empty();
            $("#comproom_code").empty();

            $.ajax({
                type: "post",
                url: "getCityTree",
                data: {provinceid: pname},
                dataType : "json",
                success: function (data) {
                    alert("33");
                    $('#city_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    //alert(obj[0].cbname);
                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#city_code').append("<option value='" + obj[i].cbname + "' >" + obj[i].cbname + "</option>");
                    }

                },
                error: function () {
                    alert("加载市失败");
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
                },
                error: function () {
                    alert("加载机房失败");
                }
            });
        }
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

    <!-- 切换子菜单-->
    <script type="text/javascript">
       // $("#item1").show();
        $("#item2").show();
        $("#item3").hide();
        $(document).ready(function() {
           /* $("#subItem1").click(function () {
               // $("#item1").show();
                $("#item2").hide();
                $("#item3").hide();
            });*/
            $("#subItem2").click(function () {
              //  $("#item1").hide();
                $("#item2").show();
                $("#item3").hide();
            });
            $("#subItem3").click(function () {
             //   $("#item1").hide();
                $("#item2").hide();
                $("#item3").show();
            });
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

    <!-- 测试 设备事件-->
    <script type="text/javascript">
        function getDeviceEvent(){

        }
    </script>

    <!-- 测试 电能事件-->
    <script type="text/javascript">
        function getPowerEvent(){

            alert("电能事件");

            var monitorpoint = 1;
            var stime = "2018-01-01";
            var etime = "2018-09-01";

            $.ajax({
                type: "post",
                url: "getPowerEvent",
                data: {
                    monitorpoint: monitorpoint,
                    starttime: stime,
                    endtime: etime
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    var obj = JSON.parse(data);
                    /*  var rt = obj.allmpdata;
                      for (var i = 0; i < rt.length; i++) {
                          $('#monitorpnt').append("<option value='" + rt[i].mpid + "' >" + rt[i].name + "</option>");
                      }*/

                },
                error: function () {
                    alert("加载事件失败");
                }
            });

        }
    </script>

    <!-- 测试 环境事件-->
    <script type="text/javascript">
        function getEvironmentEvent(){

        }
    </script>

    <!-- 导出-->
    <script type="text/javascript">
        function exportTable(){

        }
    </script>

    <!-- 打印-->
    <script type="text/javascript">
        function printTable(){

        }
    </script>

</body>

</html>