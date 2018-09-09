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
    <link rel="stylesheet" href="css/bootstrap-3.3.4.css" type="text/css" media="screen">
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
    <link href="css/jstree-default/style.css" rel="stylesheet"/>

    <!-- bootstrap datepicker时间选择控件 -->
    <link href="bootstrap-timepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- jquery -->
    <script type="text/javascript" src="bootstrap-timepicker/js/jquery-1.8.3.min.js" charset="UTF-8"></script>


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
                            <li class="active"  style="width:15%">
                                <a data-toggle="tab" id="subItem1">•事件分析</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem2">•能效分析</a>
                            </li>
                        </ul>
                    </div>

                    <div id = "item1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">

                        <button type="button" class="btn btn-sm btn-alt" onClick="getDeviceEvent()" >设备事件</button>
                        <button type="button" class="btn btn-sm btn-alt" onClick="getPowerEvent()" >电能质量事件</button>
                        <button type="button" class="btn btn-sm btn-alt" onClick="getEvironmentEvent()" >环境事件</button>

                        <div class="block-area">
                            <div class="row">
                                <div class="col-md-10">

                                    <table id="event-table-head1">
                                        <thead>
                                        <tr>
                                            <th><img src="/img/setting.png" alt="" onClick="settingIcon()" ></th>
                                            <th><img src="/img/refresh.png" alt="" onClick="refreshIcon()" ></th>
                                            <th><button type="button" class="btn btn-sm btn-alt" onClick="exportTable()" >导出</button></th>
                                            <th><button type="button" class="btn btn-sm btn-alt" onClick="printTable()" >打印</button></th>
                                        </tr>
                                        </thead>
                                    </table>

                                    <!--startprint-->
                                    <div class="row-fluid">

                                    <div class="col-md-7">
                                        <div class="tile">
                                            <h2 class="tile-title">
                                                <table id="event-table-body">
                                                    <tr>
                                                        <th><div style="padding-left:60px;">事件名称</div></th>
                                                        <th><div style="padding-left:60px;">位置</div></th>
                                                        <th><div style="padding-left:60px;">事件类型</div></th>
                                                        <th><div style="padding-left:60px;">事件描述</div></th>
                                                        <th><div style="padding-left:60px;">事件发生时间</div></th>
                                                    </tr>
                                                </table>
                                            </h2>
                                        </div>
                                    </div>
                                    <!--endprint-->

                                    <div class="col-md-4">

                                        <ul class="nav nav-tabs" id="seculItem">
                                            <li class="active" style="width:15%">
                                                <a data-toggle="tab" id="leftsubItem1">•时间地点</a>
                                            </li>
                                            <li style="width:15%">
                                                <a data-toggle="tab" id="leftsubItem2">•列</a>
                                            </li>
                                            <li style="width:15%">
                                                <a data-toggle="tab" id="leftsubItem3">•图形</a>
                                            </li>
                                        </ul>

                                        <div id="leftItem1" style="width: 100%;">
                                            <table>
                                                <tr><td>日期时间</td></tr>
                                                <tr><td><input id="radio-last-day-event" type="radio" name="event-data-peroid" value="lastone">观看最后的事件</td></tr>
                                                <tr><td><input id="radio-from-to-event" type="radio" name="event-data-peroid" value="fromto">从
                                                    <div class="form-group">
                                                        <div class="input-group date form_datetime col-md-5" data-date="2018-07-16T05:25:07Z" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                            <input id="firstDate" class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                                        </div>
                                                        <input type="hidden" id="dtp_input1" value="" /><br/>
                                                    </div>
                                                </td></tr>
                                                <tr><td>到
                                                    <div class="form-group">
                                                        <div class="input-group date form_datetime col-md-5" data-date="2019-09-16T05:25:07Z" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                            <input id="lastDate" class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                                        </div>
                                                        <input type="hidden" id="dtp_input2" value="" /><br/>
                                                    </div>
                                                </td></tr>


                                                <tr><td>时间段控制</td></tr>
                                              <%--  <tr><td><input id="radio-diy-event" type="radio">定制</td></tr>--%>
                                                <tr><td><input id="radio-day-event" type="radio" name="event-data-peroid" value="day">天</td></tr>
                                                <tr><td><input id="radio-week-event" type="radio" name="event-data-peroid" value="week">周</td></tr>
                                                <tr><td><input id="radio-month-event" type="radio" name="event-data-peroid" value="month">月</td></tr>

                                                <tr>
                                                    <td><button id="today-button" type="button" class="btn btn-sm btn-alt" onclick="getTodayEvent()">今天</button></td>
                                                    <td><button id="data-button" type="button" class="btn btn-sm btn-alt" onclick="getDataEvent()">Data?</button></td>
                                                </tr>
                                                <tr><td><button id="latestweek-button" type="button" class="btn btn-sm btn-alt" onclick="getLatestWeekEvent()">最新的week</button></td></tr>

                                                <tr><td>测量地点</td></tr>

                                                <tr>
                                                    <td><button id="add-button" type="button" class="btn btn-sm btn-alt"  onclick="addMonitorPoint()">添加</button></td>
                                                    <td><button id="delete-button" type="button" class="btn btn-sm btn-alt"  onclick="deleteMonitorPoint()">删除</button></td>
                                                </tr>

                                                <tr><td>自动更新间隔
                                                    <select class="form-control location-select-item" id="auto-update-interval">
                                                        <option value="null">无</option>
                                                        <option value="1">1分</option>
                                                        <option value="10">10分</option>
                                                        <option value="60">60分</option>
                                                    </select>
                                                </td></tr>
                                            </table>
                                        </div>

                                        <div id="leftItem2" style="width: 100%;">
                                            <table>
                                                <tr>
                                                    <td>可见的列</td>
                                                </tr>
                                                <tr>
                                                    <table>
                                                        <tr><td>名字</td><td>宽度</td></tr>
                                                        <tr><td>测量名称</td><td>100</td></tr>
                                                    </table>
                                                </tr>
                                                <tr>
                                                    <img src="/img/uparray.png" alt="" onClick="upcol()" >
                                                    <img src="/img/deletearray.png" alt="" onClick="deletecol()" >
                                                    <img src="/img/downarray.png" alt="" onClick="downcol()" >
                                                </tr>

                                                <tr>
                                                    <td>可用的列</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <select class="form-control location-select-item" id="useful-col">
                                                            <option value="1">测量名称</option>
                                                            <option value="2">时间</option>
                                                            <option value="3">测量名称</option>
                                                            <option value="4">类型</option>
                                                            <option value="5">触发相位</option>
                                                            <option value="6">时间长短</option>
                                                            <option value="7">深度</option>
                                                            <option value="8">方向</option>
                                                            <option value="9">触发相位数</option>
                                                            <option value="10">评论</option>
                                                            <option value="11">签名</option>
                                                            <option value="12">触发水平</option>
                                                            <option value="13">中有波形数据</option>
                                                        </select>
                                                    </td>
                                                    <td><button id="add-col-button" type="button" class="btn btn-sm btn-alt" onclick="getTodayEvent()">添加</button></td>
                                                </tr>
                                            </table>

                                        </div>

                                        <div id="leftItem3" style="width: 100%;">
                                            浪涌塌陷曲线
                                            U电压

                                            I电流
                                        </div>

                                    </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        能效分析
                    </div>

                    <!-- settingmodel DIV-->
                    <div class="setting-class" id="setting-modal">
                        <div id="jstree"></div>
                        <button onclick="AllSelected()" type="button" class="btn btn-sm btn-alt">全选</button>
                        <button onclick="AllDisSelected()" type="button" class="btn btn-sm btn-alt">全不选</button>
                        <button onclick="HideDisSelected()" type="button" class="btn btn-sm btn-alt">隐藏未选中</button>
                        <button onclick="AllShow()" type="button" class="btn btn-sm btn-alt">全部显示</button>
                        <button onclick="OK()" type="button" class="btn btn-sm btn-alt">确定</button>
                        <button onclick="cancle()" type="button" class="btn btn-sm btn-alt">取消</button>
                    </div>
                    <!-- settingmodel DIV END-->

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

    <script src="js/jstree.js"></script>

    <!-- 时间选择器-->

    <script type="text/javascript" src="bootstrap-timepicker/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap-timepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="bootstrap-timepicker/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript">
        $('.form_datetime').datetimepicker({
            //language:  'fr',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        });

        $("#firstDate").change(function() {
            $('.firstDate').datetimepicker('setStartDate', $(this).val());
        });
        $("#lastDate").change(function() {
            $('.lastDate').datetimepicker('setEndDate', $(this).val());
        });
    </script>

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
                    var list = data.allcomputerroom;

                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < list.length; i++) {
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

    <!-- 切换子菜单-->
    <script type="text/javascript">
        $("#item1").show();
        $("#item2").hide();

        $("#leftItem1").show();
        $("#leftItem2").hide();
        $("#leftItem3").hide();

        $(document).ready(function() {

            $("#subItem1").click(function () {
                $("#item1").show();
                $("#item2").hide();

                $(document).ready(function () {
                    $("#leftsubItem1").click(function () {
                        $("#leftItem1").show();
                        $("#leftItem2").hide();
                        $("#leftItem3").hide();
                    });
                    $("#leftsubItem2").click(function () {
                        $("#leftItem1").hide();
                        $("#leftItem2").show();
                        $("#leftItem3").hide();
                    });
                    $("#leftsubItem3").click(function () {
                        $("#leftItem1").hide();
                        $("#leftItem2").hide();
                        $("#leftItem3").show();
                    });
                });
            });
            $("#subItem2").click(function () {
                $("#item1").hide();
                $("#item2").show();
            });
            $("#subItem1").click();
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

    <!-- 设备事件-->
    <script type="text/javascript">
        function getDeviceEvent(){}
            /*var edate = $("input[name='event-data-peroid']:checked").val();
        function getDeviceEvent(){

            var edate = $("input[name='event-data-peroid']:checked").val();

            var rid = "1";
            var stime ;//"2018-08-22 08:00:00";
            var etime ;//"2018-08-29 08:00:00";
            var nowtime = getNowFormatDate();

            if(edate == "lastone"){
                stime = " ";
                etime = " ";
            }
            else  if(edate == "fromto"){
                stime = $("#firstDate").val();
                etime = $("#lastDate").val();
            }
            else  if(edate == "day"){

                //昨天的时间
                var now = new Date();
                var date = new Date(now.getTime() - 1 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }
            else  if(edate == "week"){

                // 获取一星期前的时间：
                var now = new Date();
                var date = new Date(now.getTime() - 7 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }
            else  if(edate == "month"){

                // 获取一星期前的时间：
                var now = new Date();
                var date = new Date(now.getTime() - 30 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }


            $.ajax({
                type: "post",
                url: "getDeviceEvent",
                data: {
                    stime: stime,
                    etime: etime,
                    rid: rid
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['alldelist'];
                    var table = $("#event-table-body");
                    table.empty();
                    table.append('<tr><td style="padding-left:60px;">事件名称</td><td style="padding-left:60px;">位置</td><td style="padding-left:60px;">事件类型</td><td style="padding-left:60px;">事件描述</td><td style="padding-left:60px;">事件发生时间</td></tr>');

                    for (var i = 0; i < list.length; i++) {
                        var name = list[i].type;
                        var location = list[i].mpid;
                        var type = list[i].subtype;
                        var description = list[i].discription;
                        var time = list[i].time;

                        table.append('<tr>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + location + '</td>' +
                            '<td style="padding-left:60px;">' + type + '</td><td style="padding-left:60px;">' + description + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + '</td></tr>');
                    }
                }
            });
        }*/
        }
    </script>

    <!-- 电能事件-->
    <script type="text/javascript">
        function getPowerEvent(){
            var edate = $("input[name='event-data-peroid']:checked").val();

            var rid = "1";
            var stime ;//"2018-08-22 08:00:00";
            var etime ;//"2018-08-29 08:00:00";
            var nowtime = getNowFormatDate();

            if(edate == "lastone"){
                stime = " ";
                etime = " ";
            }
            else  if(edate == "fromto"){
                stime = $("#firstDate").val();
                etime = $("#lastDate").val();
            }
            else  if(edate == "day"){

                //昨天的时间
                var now = new Date();
                var date = new Date(now.getTime() - 1 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }
            else  if(edate == "week"){

                // 获取一星期前的时间：
                var now = new Date();
                var date = new Date(now.getTime() - 7 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }
            else  if(edate == "month"){

                // 获取一星期前的时间：
                var now = new Date();
                var date = new Date(now.getTime() - 30 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }

            $.ajax({
                type: "post",
                url: "getPowerEvent",
                data: {
                    stime: stime,
                    etime: etime,
                    rid: rid
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var table = $("#event-table-body");
                    table.empty();
                    table.append('<tr><td style="padding-left:60px;">事件名称</td><td style="padding-left:60px;">位置</td><td style="padding-left:60px;">事件类型</td><td style="padding-left:60px;">事件描述</td><td style="padding-left:60px;">事件发生时间</td></tr>');

                    for (var i = 0; i < list.length; i++) {
                        var name = list[i].type;
                        var location = list[i].mpid;
                        var type = list[i].subtype;
                        var description = list[i].discription;
                        var time = list[i].time;

                        table.append('<tr>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + location + '</td>' +
                            '<td style="padding-left:60px;">' + type + '</td><td style="padding-left:60px;">' + description + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + '</td></tr>');
                    }
                }
            });
        }
    </script>

    <!-- 环境事件-->
    <script type="text/javascript">
        function getEvironmentEvent(){
          /*  var edate = $("input[name='event-data-peroid']:checked").val();
            var edate = $("input[name='event-data-peroid']:checked").val();

            var rid = "1";
            var stime ;//"2018-08-22 08:00:00";
            var etime ;//"2018-08-29 08:00:00";
            var nowtime = getNowFormatDate();

            if(edate == "lastone"){
                stime = " ";
                etime = " ";
            }
            else  if(edate == "fromto"){
                stime = $("#firstDate").val();
                etime = $("#lastDate").val();
            }
            else  if(edate == "day"){

                //昨天的时间
                var now = new Date();
                var date = new Date(now.getTime() - 1 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }
            else  if(edate == "week"){

                // 获取一星期前的时间：
                var now = new Date();
                var date = new Date(now.getTime() - 7 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }
            else  if(edate == "month"){

                // 获取一星期前的时间：
                var now = new Date();
                var date = new Date(now.getTime() - 30 * 24 * 3600 * 1000);
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                var starttime = year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second;

                stime = starttime;
                etime = nowtime;
            }


            $.ajax({
                type: "post",
                url: "getEnvironmentEvent",
                data: {
                    stime: stime,
                    etime: etime,
                    rid: rid
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['alleelist'];
                    var table = $("#event-table-body");
                    table.empty();
                    table.append('<tr><td style="padding-left:60px;">事件名称</td><td style="padding-left:60px;">位置</td><td style="padding-left:60px;">事件类型</td><td style="padding-left:60px;">事件描述</td><td style="padding-left:60px;">事件发生时间</td></tr>');

                    for (var i = 0; i < list.length; i++) {
                        var name = list[i].type;
                        var location = list[i].mpid;
                        var type = list[i].subtype;
                        var description = list[i].discription;
                        var time = list[i].time;

                        table.append('<tr>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + location + '</td>' +
                            '<td style="padding-left:60px;">' + type + '</td><td style="padding-left:60px;">' + description + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + '</td></tr>');
                    }
                }
            });
        }
    </script>

    <!-- 日期选择-->
    <script type="text/javascript">
        //获得今天的事件
        function getTodayEvent(){
            alert("today");

        }

        //获得Data？的事件
        function getDataEvent(){
            alert("data?");
        }

        //获得最近一周的事件
        function getLatestWeekEvent(){
            alert("LatestWeek");
        }

    </script>

    <!-- 观测地点-->
    <script type="text/javascript">
        //添加监测点
        function addMonitorPoint(){
            alert("addMonitorPoint");
        }

        //删除检测点
        function deleteMonitorPoint(){
            alert("deleteMonitorPoint");
        }

    </script>

    <!-- 自动更新-->
    <script type="text/javascript">

    </script>

    <!-- 右侧界面 第二个子菜单 列 -->
    <script type="text/javascript">
        function upcol(){
            alert("up");
        }
        function downcol(){
            alert("down");
        }
        function deletecol(){
            alert("del");
        }
    </script>

    <!-- 设置icon-->
    <script type="text/javascript">
        function settingIcon(){

            $('#setting-modal').css('display', 'block');

            $('#jstree').jstree({
                "core": {
                    "themes": {
                        "responsive": false
                    },
                    "check_callback": true,
                    'data': function (obj, callback) {
                        var jsonstr = "[]";
                        var jsonarray = eval('(' + jsonstr + ')');
                        $.ajax({
                            url: "getPermissionTree",
                            dataType: "json",
                            async: false,
                            success: function (result) {
                                var arrays = result.allptree;
                                for (var i = 0; i < arrays.length; i++) {
                                    var arr = {
                                        "id": arrays[i].pid,
                                        "parent": arrays[i].parentpid == "0" ? "#" : arrays[i].parentpid,
                                        "text": arrays[i].permissionname
                                    }
                                    jsonarray.push(arr);
                                }
                            },
                            error: function (result) {
                                alert("error" + result);
                            }
                        });
                        callback.call(this, jsonarray);
                    },
                },
                "plugins": ["checkbox"]
            })
        }

        function AllSelected() {
            $('#jstree').jstree('select_all');
        }

        function AllDisSelected() {
            $('#jstree').jstree('deselect_all');
        }

        function HideDisSelected() {

        }

        function AllShow() {

        }

        function OK() {
            $('#setting-modal').css('display', 'none');
        }

        function cancle() {
            $('#setting-modal').css('display', 'none');
        }

    </script>

    <!-- 刷新icon-->
    <script type="text/javascript">
        function refreshIcon(){
            $("#event-table-body").empty();
            $("#event-table-body").append('<tr><td style="padding-left:60px;">事件名称</td><td style="padding-left:60px;">位置</td><td style="padding-left:60px;">事件类型</td><td style="padding-left:60px;">事件描述</td><td style="padding-left:60px;">事件发生时间</td></tr>');
        }
    </script>

    <!-- 导出-->
    <script type="text/javascript">
        function exportTable(){
            var tableid = "event-table-body";
            exportToExcel(tableid);
        }

        var idTmr;
        function getExplorer() {
            var explorer = window.navigator.userAgent ;
            //ie
            if (explorer.indexOf("MSIE") >= 0) {
                return 'ie';
            }
            //firefox
            else if (explorer.indexOf("Firefox") >= 0) {
                return 'Firefox';
            }
            //Chrome
            else if(explorer.indexOf("Chrome") >= 0){
                return 'Chrome';
            }
            //Opera
            else if(explorer.indexOf("Opera") >= 0){
                return 'Opera';
            }
            //Safari
            else if(explorer.indexOf("Safari") >= 0){
                return 'Safari';
            }
        }

        function exportToExcel(tableid ) {//整个表格拷贝到EXCEL中
            if(getExplorer()=='ie'){
                var curTbl = document.getElementById(tableid);
                var oXL = new ActiveXObject("Excel.Application");

                //创建AX对象excel
                var oWB = oXL.Workbooks.Add();
                //获取workbook对象
                var xlsheet = oWB.Worksheets(1);
                //激活当前sheet
                var sel = document.body.createTextRange();
                sel.moveToElementText(curTbl);
                //把表格中的内容移到TextRange中
                sel.select;
                //全选TextRange中内容
                sel.execCommand("Copy");
                //复制TextRange中内容
                xlsheet.Paste();
                //粘贴到活动的EXCEL中
                oXL.Visible = true;
                //设置excel可见属性

                try {
                    var fname = oXL.Application.GetSaveAsFilename("Excel.xls", "Excel Spreadsheets (*.xls), *.xls");
                } catch (e) {
                    print("Nested catch caught " + e);
                } finally {
                    oWB.SaveAs(fname);
                    oWB.Close(savechanges = false);
                    //xls.visible = false;
                    oXL.Quit();
                    oXL = null;
                    //结束excel进程，退出完成
                    //window.setInterval("Cleanup();",1);
                    idTmr = window.setInterval("Cleanup();", 1);
                }
            }else{
                tableToExcel(tableid)
            }
        }

        function Cleanup() {
            window.clearInterval(idTmr);
            CollectGarbage();
        }

        var tableToExcel = (function() {
            var uri = 'data:application/vnd.ms-excel;base64,',
                template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" '
                    +'xmlns:x="urn:schemas-microsoft-com:office:excel" '
                    +'xmlns="http://www.w3.org/TR/REC-html40">'
                    +'<head>'
                    +'<!--[if gte mso 9]>'
                    +'<xml>'
                    +'<x:ExcelWorkbook>'
                    +'<x:ExcelWorksheets>'
                    +'<x:ExcelWorksheet>'
                    +'<x:Name>{worksheet}</x:Name>'
                    +'<x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions>'
                    +'</x:ExcelWorksheet>'
                    +'</x:ExcelWorksheets>'
                    +'</x:ExcelWorkbook>'
                    +'</xml>'
                    +'<![endif]-->'
                    +'</head>'
                    +'<body><table>{table}</table></body>'
                    +'</html>',

                base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) },
                format = function(s, c) {
                    return s.replace(/{(\w+)}/g,
                        function(m, p) { return c[p]; }) }

            return function(table, name) {
                if (!table.nodeType) table = document.getElementById(table)
                var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
                window.location.href = uri + base64(format(template, ctx))
            }
        })()
    </script>

    <!-- 打印-->
    <script type="text/javascript">
        function printTable(){
            window.document.title = "";
            window.document.URL = "";

            bdhtml = window.document.body.innerHTML;
            sprnstr = "<!--startprint-->";
            eprnstr = "<!--endprint-->";
            prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
            prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
            window.document.body.innerHTML = prnhtml;
            window.print();
            setTimeout(location.reload(), 3000);
        }
    </script>

    <!-- 获取当前日期时间-->
    <script type="text/javascript">
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
    </script>

</body>

</html>