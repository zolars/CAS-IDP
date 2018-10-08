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

    <!-- js-->
    <script src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="bootstrap-timepicker/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script src="js/jquery.cookie.js"></script>

    <!-- datatables plugsin css and js-->
    <link href="css/datatables.min.css" rel="stylesheet"/>
    <script src="js/datatables.min.js"></script>

    <link rel="stylesheet" href="css/header.css">
    <style>
        .datetimepicker {
            background: black!important;
        }
        .time-pick-container {
            height: 34px;

        }
        .time-pick-container .iradio_minimal {
            top: 10px!important;
        }
        .time-picker-radio {
            padding-top: 8px;
        }
        .time-pick-text {
            display: inline-block;
            vertical-align: middle;
            height: 34px;
            line-height: 34px;
            margin: 0 5px;
        }
        .time-pick-outer {
            width: 200px;
            height: 34px;
            display: inline-block;
            vertical-align: middle;
        }
        .table-container {
            height: 230px;
            overflow: scroll;
        }
        .col-active {
            background: black;
        }
    </style>

</head>

<body id="skin-blur-blue">

<!--登陆认证拦截-->
<%
    String userid = (String)session.getAttribute("userid");
    if(userid == null) {
%>
<script>
    var eventtypetable = null;
    alert('您还未登录或您的认证已过期, 请先登陆.');
    window.location.href = 'http://localhost:8082/index.jsp';
</script>

<%
    }
%>

<header id="header" class="media">
    <div class="header-left">
        <a href="" id="menu-toggle"></a>
        <%-- <a class="logo pull-left" href="province.jsp">IDP数据中心</a>--%>
        <img src="/img/index/logo.jpg" alt="">
    </div>
    <div class="header-right">
        <div class="media" id="top-menu">
            <div class="pull-left location-select">
                <select class="form-control location-select-item" id="province_code" name="province_code"
                        onchange="getCity()">
                    <option value="">请选择</option>
                </select>

                <script>
                    $("#province_code").change(function(){
                        var options = $("#province_code option:selected");
                        $. cookie('opinion1', options.text(), {expires: 1, path: '/'});
                    })
                </script>

                <select class="form-control location-select-item" id="city_code" name="city_code"
                        onchange="getComproom()">
                    <option value="">请选择</option>
                </select>

                <script>
                    $("#city_code").change(function(){
                        var options = $("#city_code option:selected");
                        $. cookie('opinion2', options.text(), {expires: 1, path: '/'});
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

                <div id = "item1" class="col-md-12 col-xs-6" style="height: 600px;">
                    <div class="block-area">
                        <div class="row">
                            <div class="col-md-12">
                                <table id="event-table-head1">
                                    <thead>
                                    <tr>
                                        <th><img src="/img/setting.png" alt="" onClick="settingIcon()"></th>
                                        <th><img src="/img/refresh.png" alt="" onClick="refreshIcon()"></th>
                                        <th><button type="button" class="btn-sm btn-primary" onClick="exportTable()" >导出</button></th>
                                        <th><button type="button" class="btn-sm btn-warning" onClick="printTable()" >打印</button></th>
                                    </tr>
                                    </thead>
                                </table>
                                <div class="row-fluid">
                                    <div class="col-md-7">
                                         <ul class="nav nav-tabs" id="detailItem">
                                             <li class="active"  style="width:33.333%">
                                                 <a data-toggle="tab" id="detailItem1">•电能质量事件</a>
                                             </li>
                                             <li style="width:33.333%">
                                                 <a data-toggle="tab" id="detailItem2">•环境事件</a>
                                             </li>
                                             <li style="width:33.333%">
                                                 <a data-toggle="tab" id="detailItem3">•设备事件</a>
                                             </li>
                                         </ul>
                                     </div>

                                    <div class="col-md-7">

                                        <!--startprint-->

                                        <div id="eventdiv1" style="display: block">
                                            <div class="table-container">
                                                <table border="1" class="display" id="device-event" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:60px;"></th>
                                                        <th style="width:60px;">事件名称</th>
                                                        <th style="width:60px;">位置</th>
                                                        <th style="width:60px;">事件类型</th>
                                                        <th style="width:60px;">事件描述</th>
                                                        <th style="width:60px;">事件发生时间</th>
                                                        <th style="width:60px;">签名</th>
                                                        <th style="width:60px;">注释</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="device-event-tbody">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="table-container">
                                                <table border="1" class="display" id="power-event" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:60px;"></th>
                                                        <th style="width:60px;">事件名称</th>
                                                        <th style="width:60px;">位置</th>
                                                        <th style="width:60px;">事件类型</th>
                                                        <th style="width:60px;">事件描述</th>
                                                        <th style="width:60px;">事件发生时间</th>
                                                        <th style="width:60px;">签名</th>
                                                        <th style="width:60px;">注释</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="power-event-tbody">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="table-container">
                                                <table border="1" class="display" id="environment-event" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:60px;"></th>
                                                        <th style="width:60px;">事件名称</th>
                                                        <th style="width:60px;">位置</th>
                                                        <th style="width:60px;">事件类型</th>
                                                        <th style="width:60px;">事件描述</th>
                                                        <th style="width:60px;">事件发生时间</th>
                                                        <th style="width:60px;">签名</th>
                                                        <th style="width:60px;">注释</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="environment-event-tbody">
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>

                                        <!-- 电能详细事件-->
                                        <div id="eventdiv2" style="display: none">

                                            <ul class="nav nav-tabs" id="secItem" name="secItem">
                                                <li class="active" style="width:20%">
                                                    <a data-toggle="tab" id="secItem1">•浪涌塌陷</a>
                                                </li>
                                                <li style="width:20%">
                                                    <a data-toggle="tab" id="secItem2">谐波</a>
                                                </li>
                                                <li style="width:20%">
                                                    <a data-toggle="tab" id="secItem3">•三相不平衡度</a>
                                                </li>
                                                <li style="width:20%">
                                                    <a data-toggle="tab" id="secItem4">•瞬变</a>
                                                </li>
                                                <li style="width:20%">
                                                    <a data-toggle="tab" id="secItem5">•闪变</a>
                                                </li>
                                            </ul>

                                            <div id="power-event-detail-1-div" style="width:100%;">
                                                <table class="display" border="1px" id="power-event-detail-1" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>测量名称</th>
                                                        <th>类型</th>
                                                        <th>时间</th>
                                                        <th>时间长短</th>
                                                        <th>深度（与标准的偏差）</th>
                                                        <th>评论</th>
                                                        <th>签名</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="power-event-detail-tbody-1">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-2-div" style="width:100%;display: none;">
                                                <table class="display" border="1px" id="power-event-detail-2" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>测量名称</th>
                                                        <th>类型</th>
                                                        <th>时间</th>
                                                        <th>时间长短</th>
                                                        <th>深度（与标准的偏差）</th>
                                                        <th>评论</th>
                                                        <th>签名</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="power-event-detail-tbody-2">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-3-div" style="width:100%;display: none;">
                                                <table class="display" border="1px" id="power-event-detail-3" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>测量名称</th>
                                                        <th>类型</th>
                                                        <th>时间</th>
                                                        <th>时间长短</th>
                                                        <th>深度（与标准的偏差）</th>
                                                        <th>评论</th>
                                                        <th>签名</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="power-event-detail-tbody-3">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-4-div" style="width:100%;display: none;">
                                                <table class="display" border="1px" id="power-event-detail-4" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>测量名称</th>
                                                        <th>类型</th>
                                                        <th>时间</th>
                                                        <th>时间长短</th>
                                                        <th>深度（与标准的偏差）</th>
                                                        <th>评论</th>
                                                        <th>签名</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="power-event-detail-tbody-4">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-5-div" style="width:100%;display: none;">
                                                <table class="display" border="1px" id="power-event-detail-5" style="width:100%;">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>测量名称</th>
                                                        <th>类型</th>
                                                        <th>时间</th>
                                                        <th>时间长短</th>
                                                        <th>深度（与标准的偏差）</th>
                                                        <th>评论</th>
                                                        <th>签名</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="power-event-detail-tbody-5">
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>

                                        <!-- 温湿度详细事件-->
                                        <div id="eventdiv3" style="display: none">

                                            <ul class="nav nav-tabs" id="triItem" name="triItem">
                                                <li class="active"  style="width:15%">
                                                    <a data-toggle="tab" id="triItem1">•温度</a>
                                                </li>
                                                <li style="width:15%">
                                                    <a data-toggle="tab" id="triItem2">•湿度</a>
                                                </li>
                                            </ul>

                                            <table class="display" id="evironment-event-detail-1" style="width:100%;">
                                                <thead>
                                                <tr>
                                                    <th>测量名称</th>
                                                    <th>时间</th>
                                                    <th>类型</th>
                                                    <th>时间长短</th>
                                                    <th>深度（与标准的偏差）</th>
                                                    <th>方向</th>
                                                    <th>确认</th>
                                                </tr>
                                                </thead>
                                                <tbody id="evironment-event-detail-tbody-1">
                                                </tbody>
                                            </table>

                                            <table class="display" id="evironment-event-detail-2" style="width:100%;display: none;">
                                                <thead>
                                                <tr>
                                                    <th>测量名称</th>
                                                    <th>时间</th>
                                                    <th>类型</th>
                                                    <th>时间长短</th>
                                                    <th>深度（与标准的偏差）</th>
                                                    <th>方向</th>
                                                    <th>确认</th>
                                                </tr>
                                                </thead>
                                                <tbody id="evironment-event-detail-tbody-2">
                                                </tbody>
                                            </table>

                                        </div>

                                        <!-- 设备详细事件-->
                                        <div id="eventdiv4" style="display: none">

                                            <ul class="nav nav-tabs" id="fourItem" name="fourItem">
                                                <li class="active"  style="width:15%">
                                                    <a data-toggle="tab" id="fourItem1">•治理</a>
                                                </li>
                                            </ul>

                                            <table class="display" id="device-event-detail-1" style="width:100%;">
                                                <thead>
                                                <tr>
                                                    <th>测量名称</th>
                                                    <th>时间</th>
                                                    <th>类型</th>
                                                    <th>时间长短</th>
                                                    <th>深度（与标准的偏差）</th>
                                                    <th>方向</th>
                                                    <th>确认</th>
                                                </tr>
                                                </thead>
                                                <tbody id="device-event-detail-tbody-1">
                                                </tbody>
                                            </table>

                                        </div>

                                        <!--endprint-->
                                    </div>

                                    <div class="col-md-5">

                                        <ul class="nav nav-tabs" id="seculItem">
                                            <li class="active" style="width:50%">
                                                <a data-toggle="tab" id="leftsubItem1">•时间地点</a>
                                            </li>
                                            <li style="width:50%">
                                                <a data-toggle="tab" id="leftsubItem2">•列</a>
                                            </li>
                                        </ul>

                                        <div id="leftItem1" style="width: 100%;">
                                            <div>日期时间</div>
                                            <div><input id="radio-last-day-event" type="radio" name="event-data-peroid" value="lastone">观看最后的事件</div>
                                            <div class="time-pick-container">
                                                <input id="radio-from-to-event" class="time-picker-radio" type="radio" name="event-data-peroid" value="fromto"><div class="time-pick-text">从</div>
                                                <div class="time-pick-outer">
                                                    <div class="input-group date form_datetime col-md-5" data-date="2018-07-16T05:25:07Z" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                        <input id="firstDate" class="form-control" size="16" type="text" value="" readonly>
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                                    </div>
                                                    <input type="hidden" id="dtp_input1" value="" /><br/>
                                                </div><div class="time-pick-text">到</div><div class="time-pick-outer">
                                                    <div class="input-group date form_datetime col-md-5" data-date="2019-09-16T05:25:07Z" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                        <input id="lastDate" class="form-control" size="16" type="text" value="" readonly>
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                                    </div>
                                                    <input type="hidden" id="dtp_input2" value="" /><br/>
                                                </div>
                                            </div>
                                            <div><input id="radio-day-event" type="radio"  name="event-data-peroid" value="day">天</div>
                                            <div><input id="radio-week-event" type="radio"  name="event-data-peroid" value="week">周</div>
                                            <div><input id="radio-month-event" type="radio"  name="event-data-peroid" value="month">月</div>
                                            <table><tr><th>测量地点</th><th></th></tr></table>
                                            <table class="display" id="place-event" border="1" style="width: 100%">
                                            </table>
                                            <div>
                                                <button id="add-button" type="button" class="btn-sm btn-success" onclick="addMonitorPoint()">添加</button>
                                                <button id="delete-button" type="button" class="btn-sm btn-danger" onclick="deleteMonitorPoint()">删除</button>
                                            </div>
                                            <div>
                                                <span>自动更新间隔</span>
                                                <select style="display: inline-block" class="form-control location-select-item" id="auto-update-interval">
                                                    <option value="">无</option>
                                                    <option value="60000">1分</option>
                                                    <option value="600000">10分</option>
                                                    <option value="3600000">60分</option>
                                                </select>
                                            </div>

                                            <div><button id="data-button" type="button" class="btn-sm btn-default" onclick="getAllEvent()">查询</button></div>

                                        </div>

                                        <div id="leftItem2" style="width: 100%;">
                                            <table>
                                                <tr>
                                                    <td>可见的列</td>
                                                </tr>
                                                <tr>
                                                    <table class="display" id="colume-table" border="1px" width="160px">
                                                        <thead>
                                                             <tr><td>名字</td><td>宽度</td></tr>
                                                        </thead>
                                                        <tbody></tbody>

                                                    </table>
                                                </tr>
                                                <tr>
                                                    <td><img src="/img/uparray.png" onClick="upcol()"></td>
                                                    <td><img src="/img/deletearray.png" onClick="deletecol()"></td>
                                                    <td><img src="/img/downarray.png" onClick="downcol()"></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span>可用的列</span>
                                                        <select style="display: inline-block" class="form-control location-select-item" id="useful-col">

                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <button style="display: block;" id="add-col-button" type="button" class="btn-success btn-sm" onclick="addColumnItem()">添加</button>
                                                </tr>
                                            </table>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id = "item2" class="col-md-12 col-xs-6" style="height: 600px;">
                    能效分析
                </div>

                <!-- settingmodel DIV-->
                <div class="setting-class" id="setting-modal">
                    <div id="jstree"></div>
                    <button onclick="AllSelected()" type="button" class="btn btn-sm btn-alt">全选</button>
                    <button onclick="AllDisSelected()" type="button" class="btn btn-sm btn-alt">全不选</button>
                    <button onclick="OK()" type="button" class="btn btn-sm btn-alt">确定</button>
                    <button onclick="cancle()" type="button" class="btn btn-sm btn-alt">取消</button>
                </div>
                <!-- settingmodel DIV END-->

                <!-- addEventMonitorPoint DIV-->
                <div class="setting-class" id="addEventMonitorPoint-modal" style="display: none;">
                    <div id="citybank-jstree"></div>
                    <button onclick="addCityBankAsMonitorPoint()" type="button" class="btn btn-sm btn-alt">确定</button>
                    <button onclick="cancleCityBankAsMonitorPoint()" type="button" class="btn btn-sm btn-alt">取消</button>
                </div>
                <!-- addEventMonitorPoint DIV END-->

                <!-- clickEventRow DIV-->
                <div class="clickEventRow-class" id="clickEventRow-modal" style="display: none;">
                    <button onclick="confirmEvent()" type="button" class="btn-default btn-sm" style="width: 80px;">确        认</button>
                    <button id="deleteItem" type="button" class="btn-warning btn-sm" style="width: 80px;">删除事件</button>
                </div>
                <!-- clickEventRow DIV END-->

                <!-- conformEventRow DIV-->
                <div class="conformEventRow-class" id="conformEventRow-modal" style="display: none;">
                    <table>
                        <tr>
                            <td>通过签名来确认事件</td>
                        </tr>
                        <tr>
                            <td> 签名：</td>
                        </tr>
                        <tr>
                            <td><input type="text" id="signature" class="form-control add-roles-input"></td>
                        </tr>
                        <tr>
                            <td> 注释：</td>
                        </tr>
                        <tr>
                            <td><input type="text" id="annotation" class="form-control add-roles-input"></td>
                        </tr>
                        <tr></tr><tr></tr>
                        <tr>
                            <td><button onclick="confirmOKEvent()" type="button" class="btn btn-sm btn-alt">确认</button></td>
                            <td><button onclick="cancleOKEvent()" type="button" class="btn btn-sm btn-alt">取消</button></td>
                        </tr>
                    </table>
                </div>
                <!-- conformEventRow DIV END-->

                <!-- some hidden div-->
                <div id="select-teid" style="display: none"></div>
                <!-- some hidden div END-->
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
        });

        $("#subItem2").click(function () {
            $("#item1").hide();
            $("#item2").show();
        });

        $("#subItem1").click();

        $("#detailItem1").click(function () {
            $("#eventdiv1").hide();
            $("#eventdiv2").show();
            $("#eventdiv3").hide();
            $("#eventdiv4").hide();
            getPowerEvent();
        });
        $("#detailItem2").click(function () {
            $("#eventdiv1").hide();
            $("#eventdiv2").hide();
            $("#eventdiv3").show();
            $("#eventdiv4").hide();
            getEvironmentEvent();
        });
        $("#detailItem3").click(function () {
            $("#eventdiv1").hide();
            $("#eventdiv2").hide();
            $("#eventdiv3").hide();
            $("#eventdiv4").show();
            getDeviceEvent();
        });

        $("#leftsubItem1").click(function () {
            $("#leftItem1").show();
            $("#leftItem2").hide();
        });
        $("#leftsubItem2").click(function () {
            $("#leftItem1").hide();
            $("#leftItem2").show();
        });

        var col1 = $. cookie('row1-name');
        var col2 = $. cookie('row2-name');
        var col3 = $. cookie('row3-name');
        var col4 = $. cookie('row4-name');
        var col5 = $. cookie('row5-name');
        var col6 = $. cookie('row6-name');
        var col7 = $. cookie('row7-name');
        var col8 = $. cookie('row8-name');
        var col9 = $. cookie('row9-name');
        var col10 = $. cookie('row10-name');

        //第二页电能质量事件，根据点击的电能质量类型，获取相应的事件，并渲染
        $("#secItem1").click(function () {
            $("#power-event-detail-1-div").css('display', 'block');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'none');
        });
        $("#secItem2").click(function () {
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'block');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'none');
        });
        $("#secItem3").click(function () {
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'block');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'none');
        });
        $("#secItem4").click(function () {
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'block');
            $("#power-event-detail-5-div").css('display', 'none');
        });
        $("#secItem5").click(function () {
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'block');
        });

        $("#triItem1").click(function () {
            $("#evironment-event-detail-1").css('display', 'block');
            $("#evironment-event-detail-2").css('display', 'none');
        });
        $("#triItem2").click(function () {
            $("#evironment-event-detail-1").css('display', 'none');
            $("#evironment-event-detail-2").css('display', 'block');

        });

        $("#secItem1").click();
        $("#triItem1").click();
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

<!-- （详细）设备事件-点击进入第二个页面-->
<script type="text/javascript">
    function getDeviceEvent(){



    }
</script>

<!-- （详细）电能事件-点击进入第二个页面-->
<script type="text/javascript">
    function getPowerEvent(){
        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'block');
        $('#eventdiv3').css('display', 'none');
        $('#eventdiv4').css('display', 'none');

        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-peroid']:checked").val();
        var nodeset = [], nodes2;

        var nodes = $("#citybank-jstree").jstree("get_checked"); //使用get_checked方法

        if(nodes) {
            nodes2 = nodes.toString();
            nodeset = nodes2.split(",");
            for (var i = 0 ;i < nodeset.length; i++)
            {
                cbname.push(nodeset[i].split(":")[0]);
            }
        }

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

        //读取设置中的优先级cookie
        var priortylist = $.cookie('priortylist');

        if(stime == null || etime == null){
            alert("请选择日期时间");
        }
        else if(cbname == "[object Object]"){
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            $.ajax({
                type: "post",
                url: "getDetailPowerEventlytx",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#power-event-detail-tbody-1")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");

                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var type = liststr[2];
                        var time = liststr[3];
                        var duration = liststr[5];
                        var discription = liststr[6];
                        var annotation = liststr[7];
                        var signature = liststr[8];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + type + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + duration + '</td>' +
                            '<td style="padding-left:60px;">' + discription + '</td><td style="padding-left:60px;">' + annotation + '</td>' +
                            '<td style="padding-left:60px;">' + signature + '</td></tr>');
                    }
                }
            });

            $.ajax({
                type: "post",
                url: "getDetailPowerEventxb",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#power-event-detail-tbody-2")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");

                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var type = liststr[2];
                        var time = liststr[3];
                        var duration = liststr[5];
                        var discription = liststr[6];
                        var annotation = liststr[7];
                        var signature = liststr[8];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + type + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + duration + '</td>' +
                            '<td style="padding-left:60px;">' + discription + '</td><td style="padding-left:60px;">' + annotation + '</td>' +
                            '<td style="padding-left:60px;">' + signature + '</td></tr>');
                    }
                }
            });

            $.ajax({
                type: "post",
                url: "getDetailPowerEventsxbph",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#power-event-detail-tbody-3")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");

                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var type = liststr[2];
                        var time = liststr[3];
                        var duration = liststr[5];
                        var discription = liststr[6];
                        var annotation = liststr[7];
                        var signature = liststr[8];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + type + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + duration + '</td>' +
                            '<td style="padding-left:60px;">' + discription + '</td><td style="padding-left:60px;">' + annotation + '</td>' +
                            '<td style="padding-left:60px;">' + signature + '</td></tr>');
                    }
                }
            });

            $.ajax({
                type: "post",
                url: "getDetailPowerEventshunbian",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#power-event-detail-tbody-4")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");

                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var type = liststr[2];
                        var time = liststr[3];
                        var duration = liststr[5];
                        var discription = liststr[6];
                        var annotation = liststr[7];
                        var signature = liststr[8];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + type + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + duration + '</td>' +
                            '<td style="padding-left:60px;">' + discription + '</td><td style="padding-left:60px;">' + annotation + '</td>' +
                            '<td style="padding-left:60px;">' + signature + '</td></tr>');
                    }
                }
            });

            $.ajax({
                type: "post",
                url: "getDetailPowerEventshanbian",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#power-event-detail-tbody-5")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");

                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var type = liststr[2];
                        var time = liststr[3];
                        var duration = liststr[5];
                        var discription = liststr[6];
                        var annotation = liststr[7];
                        var signature = liststr[8];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + type + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + duration + '</td>' +
                            '<td style="padding-left:60px;">' + discription + '</td><td style="padding-left:60px;">' + annotation + '</td>' +
                            '<td style="padding-left:60px;">' + signature + '</td></tr>');
                    }
                }
            });
        }
    }
</script>

<!-- （详细）环境事件-点击进入第二个页面-->
<script type="text/javascript">
    function getEvironmentEvent(){
        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'block');
        $('#eventdiv4').css('display', 'none');

        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-peroid']:checked").val();
        var nodeset = [], nodes2;

        var nodes = $("#citybank-jstree").jstree("get_checked"); //使用get_checked方法

        if(nodes) {
            nodes2 = nodes.toString();
            nodeset = nodes2.split(",");
            for (var i = 0 ;i < nodeset.length; i++)
            {
                cbname.push(nodeset[i].split(":")[0]);
            }
        }

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

        //读取设置中的优先级cookie
        var priortylist = $.cookie('priortylist');

        if(stime == null || etime == null){
            alert("请选择日期时间");
        }
        else if(cbname == "[object Object]"){
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            $.ajax({
                type: "post",
                url: "getDetailEvironmentEventtemp",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var table = $("#evironment-event-detail-1");
                    var tbody = $("#evironment-event-detail-tbody-1")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");
                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var location = liststr[2];
                        var type = liststr[3];
                        var description = liststr[4];
                        var rawtime = liststr[5].split("]");
                        var time = rawtime[0];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + location + '</td>' +
                            '<td style="padding-left:60px;">' + type + '</td><td style="padding-left:60px;">' + description + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + '</td></tr>');
                    }
                }
            });

            $.ajax({
                type: "post",
                url: "getDetailEvironmentEventwet",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType: "json",
                success: function (data) {

                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var table = $("#evironment-event-detail-2");
                    var tbody = $("#evironment-event-detail-tbody-2")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");
                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var location = liststr[2];
                        var type = liststr[3];
                        var description = liststr[4];
                        var rawtime = liststr[5].split("]");
                        var time = rawtime[0];

                        tbody.innerHTML += ('<tr>' + '<td style="padding-left:60px;" style="display: none">' + teid[1] + '</td>' +
                            '<td style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + location + '</td>' +
                            '<td style="padding-left:60px;">' + type + '</td><td style="padding-left:60px;">' + description + '</td>' +
                            '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + '</td></tr>');
                    }
                }
            });
        }

    }
</script>

<!-- 查询事件-->
<script type="text/javascript">
    //unix时间转常用时间格式
    function formatTime (time) {
        var unixtime = time;
        var unixTimestamp = new Date(unixtime * 1);
        var Y = unixTimestamp.getFullYear();
        var M = ((unixTimestamp.getMonth() + 1) > 10 ? (unixTimestamp.getMonth() + 1) : '0' + (unixTimestamp.getMonth() + 1));
        var D = (unixTimestamp.getDate() > 10 ? unixTimestamp.getDate() : '0' + unixTimestamp.getDate());
        var toDay = Y + '-' + M + '-' + D;
        return toDay;
    }

    //获取当前日期时间
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

    //根据时间、检测点、设置获得所有事件
    function getAllEvent() {

        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-peroid']:checked").val();
        var nodeset = [], nodes2;

        var nodes = $("#citybank-jstree").jstree("get_checked"); //使用get_checked方法

        if(nodes) {
            nodes2 = nodes.toString();
            nodeset = nodes2.split(",");
            for (var i = 0 ;i < nodeset.length; i++)
            {
                cbname.push(nodeset[i].split(":")[0]);
            }
        }

        if (edate == "lastone") {
            stime = " ";
            etime = " ";
        }
        else if (edate == "fromto") {
            stime = $("#firstDate").val();
            etime = $("#lastDate").val();
        }
        else if (edate == "day") {
            //昨天的时间
            var now = new Date();
            var date = new Date(now.getTime() - 1 * 24 * 3600 * 1000);
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            var hour = date.getHours();
            var minute = date.getMinutes();
            var second = date.getSeconds();
            var starttime = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;

            stime = starttime;
            etime = nowtime;
        }
        else if (edate == "week") {
            // 获取一星期前的时间：
            var now = new Date();
            var date = new Date(now.getTime() - 7 * 24 * 3600 * 1000);
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            var hour = date.getHours();
            var minute = date.getMinutes();
            var second = date.getSeconds();
            var starttime = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;

            stime = starttime;
            etime = nowtime;
        }
        else if (edate == "month") {
            // 获取一月前的时间：
            var now = new Date();
            var date = new Date(now.getTime() - 30 * 24 * 3600 * 1000);
            var year = date.getFullYear();
            var month = date.getMonth() + 1;
            var day = date.getDate();
            var hour = date.getHours();
            var minute = date.getMinutes();
            var second = date.getSeconds();
            var starttime = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;

            stime = starttime;
            etime = nowtime;
        }

        //读取设置中的优先级cookie
        var priortylist = $.cookie('priortylist');

        if(stime == null || etime == null){
            alert("请选择日期时间");
        }
        else if(cbname == "[object Object]"){
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else{
            //获取所有电能事件
            $.ajax({
            type: "post",
            url: "getPowerEvent",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname.toString(),
                priortylist: priortylist
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
                var tbody = $("#power-event-tbody")[0];
                tbody.innerHTML = "";

                for (var i = 0; i < list.length; i++) {
                    var liststr = list[i].split(",");
                    var teid = liststr[0].split("[");
                    var name = liststr[1];
                    var location = liststr[2];
                    var type = liststr[3];
                    var description = liststr[4];
                    var rawtime = liststr[5].split("]");
                    var time = rawtime[0];
                    var signature = liststr[7];
                    var annotationstr = liststr[8];
                    var annotation = annotationstr.split("]");

                    if(signature == " null")
                        signature = "";
                    if(annotation[0] == " null")
                        annotation[0] = "";

                    tbody.innerHTML += ('<tr id=' + teid[1] +  '>' + '<td name="teid" id="teid" style="width:20px;" value='+ teid[1]+'>' + teid[1] + '</td>' +
                        '<td id="name" style="width:60px;">' + name + '</td>' +
                        '<td style="width:60px;">' + location + '</td>' +
                        '<td style="width:60px;">' + type + '</td>' +
                        '<td style="width:60px;">' + description + '</td>' +
                        '<td style="width:60px;">' + time + '</td>' +
                        '<td style="width:60px;">' + signature + '</td>' +
                        '<td style="width:60px;">' + annotation[0] + '</td></tr>');
                }
            }
            });

            //获取所有设备事件
            $.ajax({
                type: "post",
                url: "getCtrlEvent",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#device-event-tbody")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");
                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var location = liststr[2];
                        var type = liststr[3];
                        var description = liststr[4];
                        var rawtime = liststr[5].split("]");
                        var time = rawtime[0];
                        var signature = liststr[7];
                        var annotation = liststr[8];
                       // var annotation = annotationstr.split("]");

                        if(signature == undefined)
                            signature = "";
                        if(annotation == undefined)
                            annotation = "";

                        tbody.innerHTML += ('<tr>' + '<td name="teid" id="teid" style="width:20px;" value='+ teid[1]+'>' + teid[1] + '</td>' +
                            '<td id="name" style="width:60px;">' + name + '</td>' +
                            '<td style="width:60px;">' + location + '</td>' +
                            '<td style="width:60px;">' + type + '</td>' +
                            '<td style="width:60px;">' + description + '</td>' +
                            '<td style="width:60px;">' + time + '</td>' +
                            '<td style="width:60px;">' + signature + '</td>' +
                            '<td style="width:60px;">' + annotation + '</td></tr>');
                    }
                }
            });

            //获取所有环境事件
            $.ajax({
                type: "post",
                url: "getEnvironmentEvent",
                data: {
                    stime: stime,
                    etime: etime,
                    cbname: cbname.toString(),
                    priortylist: priortylist
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj['allpelist'];
                    var tbody = $("#environment-event-tbody")[0];
                    tbody.innerHTML = "";

                    for (var i = 0; i < list.length; i++) {
                        var liststr = list[i].split(",");
                        var teid = liststr[0].split("[");
                        var name = liststr[1];
                        var location = liststr[2];
                        var type = liststr[3];
                        var description = liststr[4];
                        var rawtime = liststr[5].split("]");
                        var time = rawtime[0];
                        var signature = liststr[7];
                        var annotationstr = liststr[8];
                        var annotation = annotationstr.split("]");

                        if(signature == " null")
                            signature = "";
                        if(annotation[0] == " null")
                            annotation[0] = "";

                        tbody.innerHTML += ('<tr>' + '<td name="teid" id="teid" style="width:20px;" value='+ teid[1]+'>' + teid[1] + '</td>' +
                            '<td id="name" style="width:60px;">' + name + '</td>' +
                            '<td style="width:60px;">' + location + '</td>' +
                            '<td style="width:60px;">' + type + '</td>' +
                            '<td style="width:60px;">' + description + '</td>' +
                            '<td style="width:60px;">' + time + '</td>' +
                            '<td style="width:60px;">' +signature + '</td>' +
                            '<td style="width:60px;">' + annotation[0] + '</td></tr>');
                    }
                }
            });
        }

    }

</script>

<!-- 观测地点-->
<script type="text/javascript">
    //添加监测点-弹出添加div
    function addMonitorPoint(){

        var pbname = $("#province_code option:selected").val();
        $('#addEventMonitorPoint-modal').css('display', 'block');

        $('#citybank-jstree').jstree({
            "core": {
                "themes": {
                    "responsive": false
                },
                "check_callback": true,
                'data': function (obj, callback) {
                    var jsonstr = "[]";
                    var jsonarray = eval('(' + jsonstr + ')');
                    $.ajax({
                        type: "post",
                        url: "getOnlyCityBankTree",
                        data: {
                            pbname: pbname
                        },
                        dataType: "json",
                        async: false,
                        success: function (data) {

                            var jdata = JSON.parse(data);
                            var arrays = jdata.allcbtree;

                            for (var i = 0; i < arrays.length; i++) {
                                var arr = {
                                    "id": arrays[i].cbid + ":"+ arrays[i].cbname,
                                    "parent": "#",
                                    "text": arrays[i].cbname
                                };
                                jsonarray.push(arr);
                            }
                        }
                    });
                    callback.call(this, jsonarray);
                },
            },
            "plugins": ["checkbox"]
        });
    }

    //添加检测点-确定
    function addCityBankAsMonitorPoint(){

        //取得所有选中的节点，返回节点对象的集合
        var nodes = $("#citybank-jstree").jstree("get_checked"); //使用get_checked方法
        var nodes2 = nodes.toString();
        var nodeset = nodes2.split(",");
        var ptable = $("#place-event");
        ptable.empty();

        for (var i = 0 ;i < nodeset.length; i++)
        {
            var nset = nodeset[i].split(":");
            ptable.append('<tr id="'+nset[0]+'"><td><input id="radio-mpid" name="radio-mpid" type="radio" value="'+nset[0]+'">' + nset[1] + '</td></tr>');
        }

        cancleCityBankAsMonitorPoint();
    }

    //添加检测点-取消
    function cancleCityBankAsMonitorPoint(){
        $('#addEventMonitorPoint-modal').css('display', 'none');
    }

    //删除检测点
    function deleteMonitorPoint(){
        var delmpid = $('input[name="radio-mpid"]:checked');

        delmpid.each(function(){
            $(this).parent().parent().remove();
        });
    }

</script>

<!-- 右侧界面 第二个子菜单 列 -->
<script type="text/javascript">
    var optionDataSource = [{ name: '测量名称', length: '90'}, { name: '时间', length: '110'}, { name: '类型', length: '50'},
        { name: '触发相位', length: '50'}, { name: '时间长短', length: '50'}, { name: '深度', length: '50'}, { name: '方向', length: '50'},
        { name: '评论', length: '50'}, { name: '签名', length: '50'}, { name: '触发水平', length: '50'}, { name: '中有波形数据', length: '50'}];
    optionDataSource.forEach(function(item, index) {
        $("#useful-col").append('<option id=' + index + '>' + item.name + '</option>')
    })

    var visibleColumnData = [];

    $(document).ready(function() {
        var tbody = $("#colume-table").children("tbody");
        if(localStorage.getItem("visibleColumn")) {
            visibleColumnData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        if(visibleColumnData.length > 0) {
            visibleColumnData.forEach(function(item, index) {
                tbody.append('<tr id=' + index + '><td>' + item.name + '</td><td>' + item.length + '</td></tr>' )
            })
        }

        tbody.on('click', 'tr', function () {
            var that = $(this);
            tbody.children('tr').removeClass('col-active');
            if(!that.hasClass('col-active')) {
                that.addClass('col-active')
            }
        })
    });

    function addColumnItem() {
        var index = Number($("#useful-col option:selected").attr("id"));
        visibleColumnData.push(optionDataSource[index]);
        localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
        var tbody = $("#colume-table").children("tbody");
        tbody.append('<tr id=' + (visibleColumnData.length - 1) +'><td>' + optionDataSource[index].name + '</td><td>' + optionDataSource[index].length + '</td></tr>')
    }

    function upcol(){
        var coltable = $("#colume-table");
        var target = coltable.children("tbody").children(".col-active");
        var list = coltable.children("tbody").children('tr');
        if(target.length > 0){
            var thisLocation = list.index( target );
            if( thisLocation < 1 ){
                alert('已移到最顶端了');
            }else {
                target.prev().before(target); //上移动
            }
        }else {
            alert('请选择要上移的列');
        }
    }
    function downcol(){
        var coltable = $("#colume-table");
        var target = coltable.children("tbody").children(".col-active");
        var list = coltable.children("tbody").children('tr');
        if(target.length > 0){
            var thisLocation = list.index( target );
            if( thisLocation >= list.length - 1 ){
                return alert('已移到最底端了');
            }else {
                target.next().after(target); //下移动
            }
        }else {
            return alert('请选择要下移的列');
        }
    }
    function deletecol(){
        var coltable = $("#colume-table");
        var deleteData = coltable.children("tbody").children(".col-active");
        if(!deleteData) {
            return alert('请选择删除的项');
        }
        var daleteIndex = [];
        for(var i = 0; i < deleteData.length; i++) {
            daleteIndex.push(Number(deleteData[i].id));
        }
        visibleColumnData = visibleColumnData.filter(function(item, index) {
            return daleteIndex.indexOf(index) < 0
        });
        localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
        deleteData.remove();
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
                        url: "getSettingTree",
                        dataType: "json",
                        async: false,
                        success: function (result) {
                            var arrays = result.allptree;

                            for (var i = arrays.length -1; i > 0; i--) {
                                var arr = {
                                    "id": arrays[i].cid,
                                    "parent": arrays[i].pid == "0" ? "#" : arrays[i].pid,
                                    "text": arrays[i].description
                                };

                                jsonarray.push(arr);
                            }
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

    //设置按钮界面 OK
    function OK() {

        var priortylist = $('#jstree').jstree().get_checked();
        $. cookie('priortylist', priortylist, {expires: 1, path: '/'});

        //获取树每一行的优先级下拉框，节点id和将下拉框的值传入数据库
        var priortylist = "1,2,3,4,5,6,7,8,9,10";
        var eventtypelist = "1,2,3,4,5,6,7,8,9,10";

        $('#setting-modal').css('display', 'none');
    }

    //设置按钮界面取消
    function cancle() {
        $('#setting-modal').css('display', 'none');
    }

    //点击单条事件-确认
    function confirmEvent(){
        $('#conformEventRow-modal').css('display', 'block');
        $('#clickEventRow-modal').css('display', 'none');
        var sign = "<%=session.getAttribute("username")%>";
        $('#signature').val(sign);
    }

    //点击单条事件-签名确认事件-确认
    function confirmOKEvent(){
        //添加该事件的签名和注释到数据库
        var teid = $('#select-teid').val();
        var sign = $('#signature').val();
        var annot = $('#annotation').val();
        var ettype = eventtypetable;

        $.ajax({
            type: "post",
            url: "addSignatureAndAnnotation",
            dataType: "json",
            data:{
                teid: teid,
                sign: sign,
                annot: annot,
                eventtabletype: ettype
            }
        });
        $('#conformEventRow-modal').css('display', 'none');
    }

    //点击单条事件-签名确认事件-取消
    function cancleOKEvent(){
        $('#conformEventRow-modal').css('display', 'none');
    }

</script>

<!-- 刷新icon-->
<script type="text/javascript">
    function refreshIcon(){
        //刷新事件
        getAllEvent();
    }
</script>

<!-- 导出-->
<script type="text/javascript">

    function exportTable(){

        var tableid1 = "device-event";
        var tableid2 = "power-event";
        var tableid3 = "environment-event";
        setTimeout(exportToExcel(tableid1), 1000);//等待1s后执行exportToExcel函数
        setTimeout(exportToExcel(tableid2), 1000);
        setTimeout(exportToExcel(tableid3), 1000);

        $("#secItem li").each(function(i){
            $(this).click(function(){
                idx = i;
            });
        });
        $("#secItem li")[0].onclick = function(){
            idx = 1;
            var tableid = "power-event-detail-tbody-"+idx;
            console.log("被选中", tableid);
            exportToExcel(tableid);
        };
        $("#secItem li")[1].onclick = function(){
            idx = 2;
            var tableid = "power-event-detail-tbody-"+idx;
            console.log("被选中", tableid);
            exportToExcel(tableid);
        }
        $("#secItem li")[2].onclick = function(){
            idx = 3;
            var tableid = "power-event-detail-tbody-"+idx;
            console.log("被选中", tableid);
            exportToExcel(tableid);
        }
        $("#secItem li")[3].onclick = function(){
            idx = 4;
            var tableid = "power-event-detail-tbody-"+idx;
            console.log("被选中", tableid);
            exportToExcel(tableid);
        }
        $("#secItem li")[4].onclick = function(){
            idx = 5;
            var tableid = "power-event-detail-tbody-"+idx;
            console.log("被选中", tableid);
            exportToExcel(tableid);
        }
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

    function exportToExcel(tableid) {//整个表格拷贝到EXCEL中
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
                alert("Nested catch caught " + e);
            } finally {
                oWB.SaveAs(fname);
                oWB.Close(savechanges = false);
                oXL.Quit();
                oXL = null;
                //结束excel进程，退出完成
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

<!-- -->
<script type="text/javascript">
    //刷新功能
    $("#auto-update-interval").on("change", function () {
        var updateinterval=$('#auto-update-interval').val();
        var timer = null;
        if(updateinterval) {
            timer = setInterval(getAllEvent, updateinterval);
        } else {
            if(timer==null) {
                clearInterval(timer)
            }
        }
    });

    //点击device-event table中的某一行
    $('#device-event tbody').on('click', 'tr', function (){
        $(this).toggleClass('selected');
        selectOneRowEvent(this);
        eventtypetable = "device";
    });

    //点击power-event table中的某一行
    $('#power-event tbody').on('click', 'tr', function (){
        $(this).toggleClass('selected');
        selectOneRowEvent(this);
        eventtypetable = "power";
    });

    //点击environment-event table中的某一行
    $('#environment-event tbody').on('click', 'tr', function (){
        $(this).toggleClass('selected');
        selectOneRowEvent(this);
        eventtypetable = "envrionment";
    });

    //点击table中的某一行
    $('#place-event tbody').on('change', 'tr', function (){
        //alert("mp:"+ this);
    });

    //获取某一行选择的行，将该行的id放入某个隐藏的div中
    function selectOneRowEvent(rowdata){
        $('#clickEventRow-modal').css('display', 'block');
        var row = rowdata;
        var cols = row.childNodes;
        var teid = cols[0].innerText;
        $('#select-teid').val(teid);
    }
    //点击单条事件-删除事件（假删除，只是前端不显示）
    $('#deleteItem').on('click', function () {
        var tbody = $("#power-event-tbody");
        var id = $('#select-teid').val();
        tbody.children("#" + id).remove();
        $('#clickEventRow-modal').css('display', 'none');
    });

</script>

</body>

</html>