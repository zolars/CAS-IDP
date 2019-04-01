<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <title>IDP数据中心动力管控系统</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
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
    <link href="css/buttons.css" rel="stylesheet">

    <!-- bootstrap datepicker时间选择控件 -->
    <link href="bootstrap-timepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- js-->
    <script src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="bootstrap-timepicker/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script src="js/jquery.cookie.js"></script>

    <!-- PNotify -->
    <script type="text/javascript" src="js/pnotify.custom.min.js"></script>
    <link href="css/pnotify.custom.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="bootstrap-table-master/src/bootstrap-table.css">
    <script src="bootstrap-table-master/src/bootstrap-table.js"></script>
    <script src="bootstrap-table-master/src/locale/bootstrap-table-zh-CN.js"></script>

    <link rel="stylesheet" href="css/header.css">
    <style>
        .datetimepicker {
            background: black !important;
        }

        .time-pick-container {
            height: 34px;
        }

        .time-pick-container .iradio_minimal {
            top: 10px !important;
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
            height: 460px;
        }

        .box3 {
            color: white;
            margin-top: 20px;
        }
        .box3 .header {
            width: 100%;
            height: 50px;
        }
        .box3 .container {
            clear: both;
            overflow: hidden;
            padding: 0 130px 0 100px;
            position: relative;
        }
        .box3 .container .left {
            width: 350px;
            height: 400px;
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .box3 .container .center {
            height: 400px;
            width: 60%;
            text-align:center;
        }
        .box3 .container .right {
            width: 680px;
            height: 400px;
            position: absolute;
            top: 0px;
            right: 0px;
        }
        .box3 .footer {
            width: 100%;
            height: 300px;
        }
    </style>

</head>

<body id="skin-blur-blue">

<!--告警弹窗-->
<script type="text/javascript" src = "js/websocketconnect.js"></script>

<!--登陆认证拦截-->
<%
    String userid = (String) session.getAttribute("userid");
    if (userid == null) {
%>
<script>
    var eventtypetable = null;
    alert('您还未登录或您的认证已过期, 请先登陆.');
    window.location.href = <%=basePath%>+'index.jsp';
</script>

<%
    }
%>

<header id="header" class="media">
    <div class="header-left">
        <a href="" id="menu-toggle"></a>
        <img src="img/index/logo.png" alt="" class="header-img">
    </div>
    <div class="header-right">
        <div class="media" id="top-menu">
            <div class="pull-left location-select">
                <select class="form-control location-select-item" id="province_code" name="province_code">
                    <option value="">请选择</option>
                </select>

                <script>
                    $("#province_code").change(function () {
                        var options = $("#province_code option:selected");
                        $.cookie('opinion1', options.text(), {expires: 1, path: '/'});
                        getCity();
                    })
                </script>

                <select class="form-control location-select-item" id="city_code" name="city_code">
                    <option value="">请选择</option>
                </select>

                <script>
                    $("#city_code").change(function () {
                        var options = $("#city_code option:selected");
                        $.cookie('opinion2', options.text(), {expires: 1, path: '/'});
                        getComproom();
                    })
                </script>

                <select class="form-control location-select-item" id="comproom_code" name="comproom_code">
                    <option value="">请选择</option>
                </select>

                <script>
                    $("#comproom_code").change(function () {
                        var options = $("#comproom_code option:selected");
                        $.cookie('opinion3', options.text(), {expires: 1, path: '/'});
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

        <!-- Breadcrumb -->
        <!-- Main Widgets -->
        <div class="block-area">

            <div id="searching" style="display: none;position:absolute;z-index: 999; left:400px;top:200px;"><img src="img/index/loading.gif"></div>


            <div class="row">

                <div class="col-md-12">
                    <ul class="nav nav-tabs" id="ulItem">
                        <li class="active" style="width:50%">
                            <a data-toggle="tab" id="subItem1">事件分析</a>
                        </li>
                        <%--<li style="width:50%">
                            <a data-toggle="tab" id="subItem2">       </a>
                        </li>--%>
                        <li style="width:50%">
                            <a data-toggle="tab" id="subItem3">能效分析</a>
                        </li>
                    </ul>
                </div>

                <div id="item1" class="col-md-12 col-xs-6" style="height: 600px;">
                    <div class="block-area">
                        <div class="row">
                            <div class="col-md-12">
                                <table id="event-table-head1">
                                    <thead>
                                    <tr>
                                      <%--  <th><img src="img/setting.png" alt="" onClick="settingIcon()"></th>--%>
                                        <th><img src="img/refresh.png" alt="" onClick="refreshIcon()"></th>
                                        <th>
                                            <button type="button" class="button-primary button-pill button-small" onClick="exportTable()">
                                                导出
                                            </button>
                                        </th>
                                        <th>
                                            <button type="button" class="button-primary button-pill button-small" onClick="printTable()">打印
                                            </button>
                                        </th>
                                        <th>
                                            <button id="data-button" type="button" class="button-primary button-pill button-small">查询
                                            </button>
                                        </th>
                                    </tr>
                                    </thead>
                                </table>
                                <div class="row-fluid">
                                    <div class="col-md-7">
                                        <ul class="nav nav-tabs" id="detailItem">
                                            <li id="detailItemTab1" style="width:33.333%" class="active">
                                                <a data-toggle="tab" id="detailItem1">•电能质量事件</a>
                                            </li>
                                            <li id="detailItemTab2" style="width:33.333%">
                                                <a data-toggle="tab" id="detailItem2">•环境事件</a>
                                            </li>
                                            <li id="detailItemTab3" style="width:33.333%">
                                                <a data-toggle="tab" id="detailItem3">•设备事件</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="col-md-7">

                                        <!--startprint-->
                                        <!-- 电能详细事件-->
                                        <div id="eventdiv1" style="display:block; background: white; border-radius: 0 0 15px 15px;">
                                            <ul class="nav nav-tabs" id="secItem" name="secItem">
                                                <li class="active" style="width:16.6%" id="powerdetailItem0">
                                                    <a data-toggle="tab" id="secItem0">•全部事件</a>
                                                </li>
                                                <li style="width:16.6%" id="powerdetailItem1">
                                                    <a data-toggle="tab" id="secItem1">•浪涌塌陷</a>
                                                </li>
                                                <li style="width:16.6%" id="powerdetailItem2">
                                                    <a data-toggle="tab" id="secItem2">•谐波</a>
                                                </li>
                                                <li style="width:16.6%" id="powerdetailItem3">
                                                    <a data-toggle="tab" id="secItem3">•三相不平衡度</a>
                                                </li>
                                                <li style="width:16.6%" id="powerdetailItem4">
                                                    <a data-toggle="tab" id="secItem4">•瞬变</a>
                                                </li>
                                                <li style="width:16.6%" id="powerdetailItem5">
                                                    <a data-toggle="tab" id="secItem5">•闪变</a>
                                                </li>
                                            </ul>
                                            <div class="table-container">
                                                <div id="power-event-detail-0-div" style="width:100%;">
                                                    <table class="display" border="1px" id="power-event"
                                                           style="width:100%; color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="power-event-thead"></tr>
                                                        </thead>
                                                        <tbody id="power-event-tbody">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="power-event-detail-1-div" style="width:100%;display: none;">
                                                    <table class="display" border="1px" id="power-event-detail-1"
                                                           style="width:100%;color:black;"  data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="power-event-detail-thead-1-tr"></tr>
                                                        </thead>
                                                        <tbody id="power-event-detail-tbody-1">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="power-event-detail-2-div" style="width:100%;display: none;">
                                                    <table class="display" border="1px" id="power-event-detail-2"
                                                           style="width:100%;color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="power-event-detail-thead-2-tr"></tr>
                                                        </thead>
                                                        <tbody id="power-event-detail-tbody-2">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="power-event-detail-3-div" style="width:100%;display: none;">
                                                    <table class="display" border="1px" id="power-event-detail-3"
                                                           style="width:100%;color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="power-event-detail-thead-3-tr"></tr>
                                                        </thead>
                                                        <tbody id="power-event-detail-tbody-3">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="power-event-detail-4-div" style="width:100%;display: none;">
                                                    <table class="display" border="1px" id="power-event-detail-4"
                                                           style="width:100%;color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="power-event-detail-thead-4-tr"></tr>
                                                        </thead>
                                                        <tbody id="power-event-detail-tbody-4">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="power-event-detail-5-div" style="width:100%;display: none;">
                                                    <table class="display" border="1px" id="power-event-detail-5"
                                                           style="width:100%;color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="power-event-detail-thead-5-tr"></tr>
                                                        </thead>
                                                        <tbody id="power-event-detail-tbody-5">
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- 温湿度详细事件-->
                                        <div id="eventdiv2" style="display: none;background: white; border-radius: 0 0 15px 15px;">
                                            <ul class="nav nav-tabs" id="triItem" name="triItem">
                                                <li class="active" style="width:15%" id="envdetailItem0">
                                                    <a data-toggle="tab" id="triItem0">•全部事件</a>
                                                </li>
                                                <li style="width:15%" id="envdetailItem1">
                                                    <a data-toggle="tab" id="triItem1">•温度</a>
                                                </li>
                                                <li style="width:15%"id="envdetailItem2">
                                                    <a data-toggle="tab" id="triItem2">•湿度</a>
                                                </li>
                                            </ul>
                                            <div class="table-container">
                                                <div id="environment-event-div" style="width:100%;">
                                                    <table class="display" border="1px" id="environment-event"
                                                           style="width:100%;color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="environment-event-tr"></tr>
                                                        </thead>
                                                        <tbody id="environment-event-tbody">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="environment-event-detail-1-div" style="width:100%;">
                                                    <table class="display" border="1px" id="environment-event-detail-1"
                                                           style="width:100%;color:black;">
                                                        <thead>
                                                        <tr id="environment-event-detail-1-tr"></tr>
                                                        </thead>
                                                        <tbody id="environment-event-detail-tbody-1">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="environment-event-detail-2-div" style="width:100%;">
                                                    <table class="display" border="1px" id="environment-event-detail-2"
                                                           style="width:100%;color:black;">
                                                        <thead>
                                                        <tr id="environment-event-detail-2-tr"></tr>
                                                        </thead>
                                                        <tbody id="environment-event-detail-tbody-2">
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- 设备详细事件-->
                                        <div id="eventdiv3" style="display: none;background: white; border-radius: 0 0 15px 15px;">
                                            <ul class="nav nav-tabs" id="fourItem" name="fourItem">
                                                <li class="active" style="width:15%" id="fourItem0">
                                                    <a data-toggle="tab" >•全部事件</a>
                                                </li>
                                                <li style="width:15%" id="ctrldetailItem1">
                                                    <a data-toggle="tab" id="fourItem1" >•治理</a>
                                                </li>
                                            </ul>
                                            <div class="table-container">
                                                <div id="device-event-div" style="width:100%;">
                                                    <table border="1px" class="display" id="device-event"
                                                           style="width:100%;color:black;" data-uniqueId="teid">
                                                        <thead>
                                                        <tr id="device-event-tr"></tr>
                                                        </thead>
                                                        <tbody id="device-event-tbody">
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div id="device-event-detail-1-div" style="width:100%;">
                                                    <table border="1px" class="display" id="device-event-detail-1"
                                                           style="width:100%;color:black;">
                                                        <thead>
                                                        <tr id="device-event-detail-1-tr"></tr>
                                                        </thead>
                                                        <tbody id="device-event-detail-1-tbody">
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!--endprint-->

                                    </div>

                                    <div class="col-md-5">

                                        <ul class="nav nav-tabs" id="seculItem">
                                            <li class="active" style="width:50%">
                                                <a data-toggle="tab" id="rightsubItem1">•时间地点</a>
                                            </li>
                                            <li style="width:50%">
                                                <a data-toggle="tab" id="rightsubItem2">•列</a>
                                            </li>
                                        </ul>

                                        <div id="rightItem1" style="width: 100%;background: white; border-radius: 0 0 15px 15px; color:black;">
                                            <br>
                                            <!--<div>日期时间</div>-->
                                            <div><input id="radio-last-day-event" type="radio" name="event-data-period"
                                                        value="lastone">观看最后的事件
                                            </div>
                                            <div style="background: #0880d7;" class="time-pick-container">
                                                <input id="radio-from-to-event" class="time-picker-radio" type="radio"
                                                       name="event-data-period" value="fromto" checked>
                                                <div class="time-pick-text">从</div>
                                                <div class="time-pick-outer">
                                                    <div class="input-group date form_datetime col-md-5"
                                                         data-date-format="yyyy-mm-dd hh:ii:ss"
                                                         data-link-field="dtp_input1">
                                                        <input id="firstDate" class="form-control" size="16" type="text"
                                                               value="" readonly>
                                                        <span class="input-group-addon"><span
                                                                class="glyphicon glyphicon-th"></span></span>
                                                    </div>
                                                    <input type="hidden" id="dtp_input1" value=""/><br/>
                                                </div>
                                                <div class="time-pick-text">到</div>
                                                <div class="time-pick-outer">
                                                    <div class="input-group date form_datetime col-md-5"
                                                         data-date-format="yyyy-mm-dd hh:ii:ss"
                                                         data-link-field="dtp_input1">
                                                        <input id="lastDate" class="form-control" size="16" type="text"
                                                               value="" readonly>
                                                        <span class="input-group-addon"><span
                                                                class="glyphicon glyphicon-th"></span></span>
                                                    </div>
                                                    <input type="hidden" id="dtp_input2" value=""/><br/>
                                                </div>
                                            </div>
                                            <div style="background: #0880d7;"><input id="radio-day-event" type="radio" name="event-data-period"
                                                                                     value="day">天</div>
                                            <div style="background: #0880d7;"><input id="radio-week-event" type="radio" name="event-data-period"
                                                                                     value="week">周</div>
                                            <div style="background: #0880d7;"><input id="radio-month-event" type="radio" name="event-data-period"
                                                                                     value="month">月</div>
                                            <table>
                                                <tr>
                                                    <th>测量地点</th>
                                                    <th></th>
                                                </tr>
                                            </table>
                                            <table class="display" id="place-event" border="1" style="width: 100%;color:black;">
                                            </table>
                                            <div>
                                                <button id="add-button" type="button" class="button-primary button-pill button-small"
                                                        onclick="addMonitorPoint()">添加
                                                </button>
                                                <button id="delete-button" type="button" class="button-primary button-pill button-small"
                                                        onclick="deleteMonitorPoint()">删除
                                                </button>
                                                <button id="check-all-button" type="button" class="button-primary button-pill button-small"
                                                        onclick="check_all()">全选
                                                </button>
                                            </div>
                                            <div>
                                                <span>自动更新间隔</span>
                                                <select style="display: inline-block"
                                                        class="form-control location-select-item"
                                                        id="auto-update-interval">
                                                    <option value="">无</option>
                                                    <option value="60000">1分</option>
                                                    <option value="600000">10分</option>
                                                    <option value="3600000">60分</option>
                                                </select>
                                            </div>
                                            <div>
                                                <button onclick="confirmEvent()" type="button"
                                                        class="button-primary button-pill button-small" style="width: 120px;">确认事件
                                                </button>
                                                <button onclick="deleteEventOnlyPage()" id="deleteItem" type="button"
                                                        class="button-primary button-pill button-small" style="width: 120px;">删除事件
                                                </button>
                                            </div>

                                        </div>

                                        <div id="rightItem2" style="width: 100%;background: white; border-radius: 0 0 15px 15px; color:black;">
                                            <table>
                                                <br>
                                                <tr>
                                                    <table class="display" id="colume-table" border="1px" width="160px" style="color:black;">
                                                        <thead>
                                                        <tr>
                                                            <td>名字</td><td>宽度</td>
                                                        </tr>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
                                                </tr>
                                                <tr>
                                                    <td><img src="img/uparray.png" onClick="upcol()"></td>
                                                    <td><img src="img/deletearray.png" onClick="deletecol()"></td>
                                                    <td><img src="img/downarray.png" onClick="downcol()"></td>
                                                    <td><br></td>
                                                </tr>
                                                <tr>
                                                    <table class="display">
                                                        <tr>
                                                            <td>
                                                                <select style="display: inline-block"
                                                                        class="form-control location-select-item"
                                                                        id="useful-col">
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <button style="display: block;" id="add-col-button"
                                                                        type="button" class="button-primary button-pill button-small"
                                                                        onclick="addColumnItem()">添加
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="item2" class="col-md-12 col-xs-6" style="height: 600px;;display: none;">222</div>

                <div id="item3" class="col-md-12 col-xs-6" style="height: 600px;display: none;">
                    <div class="box3">
                        <div class="header"> <table>
                            <tr>
                                <td>周期</td>
                                <td><input id="radio-day-assume" type="radio" name="event-data-period" value="day" checked></td>
                                <td>日</td>
                                <td><input id="radio-week-assume" type="radio" name="event-data-period" value="week"></td>
                                <td>周</td>
                                <td><input id="radio-month-assume" type="radio" name="event-data-period" value="month"></td>
                                <td>月</td>
                                <td><input id="radio-from-to-assume" class="time-picker-radio" type="radio" name="event-data-period" value="fromto"></td>
                                <td>自定义</td>
                                <td>&nbsp;&nbsp;</td>
                                <td>时间范围从</td>
                                <td><div class="time-pick-outer">
                                    <div class="input-group date form_datetime col-md-5"
                                         data-date-format="yyyy-mm-dd hh:ii:ss"
                                         data-link-field="dtp_input1">
                                        <input id="fdate" class="form-control" size="16" type="text"
                                               value="" readonly>
                                        <span class="input-group-addon"><span
                                                class="glyphicon glyphicon-th"></span></span>
                                    </div>
                                    <input type="hidden" id="d_input1" value=""/><br/>
                                </div></td>
                                <td>到</td>
                                <td> <div class="time-pick-outer">
                                    <div class="input-group date form_datetime col-md-5"
                                         data-date-format="yyyy-mm-dd hh:ii:ss"
                                         data-link-field="dtp_input1">
                                        <input id="ldate" class="form-control" size="16" type="text"
                                               value="" readonly>
                                        <span class="input-group-addon"><span
                                                class="glyphicon glyphicon-th"></span></span>
                                    </div>
                                    <input type="hidden" id="d_input2" value=""/><br/>
                                </div></td>
                            </tr>
                        </table></div>

                        <div class="container">
                            <div class="center">

                                    耗电量总计<input id="hdlsum" type="text" style="color: #555;">KWh<br/>
                                    电费单价&nbsp;&nbsp;&nbsp;&nbsp;<input id="dfsum" type="text" style="color: #555;">元/度<br/>
                                    总电费&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="summoney" type="text" style="color: #555;">元<br/>

                            </div>
                            <div class="left">
                                <div id='sumassumehist' class="chart-item" style='width: 300px;height: 300px;float: left;'></div>
                            </div>
                            <div class="right">
                                <div id='sumassumecircle' class="chart-item" style='width: 300px;height: 300px;'></div>
                            </div>
                        </div>

                        <div class="footer">
                            <div id='ups3-1' class="chart-item" style='width: 300px;height: 200px;float: left;'></div>
                            <div id='ups3-2' class="chart-item" style='width: 300px;height: 200px;float: left;'></div>
                            <div id='ups3-3' class="chart-item" style='width: 300px;height: 200px;float: left;'></div>
                            <div id='ups3-4' class="chart-item" style='width: 300px;height: 200px;float: left;'></div>
                        </div>
                        <div class="footer">
                            <div id='ups3-1-bottom' style='width: 350px;height: 100px;float: left;'>THDu <input id="thdu-input" type="text" style="color: #555;" value="2.5%"><br/> 评价等级 <input id="thdu-level" type="text" style="background-color: #0000FF;" value="好"></div>
                            <div id='ups3-2-bottom' style='width: 350px;height: 100px;float: left;'>THDi <input id="thdi-input" type="text" style="color: #555;" value="2.2%"><br/> 评价等级 <input id="thdi-level" type="text" style="background-color: #00CC00;" value="优秀"></div>
                            <div id='ups3-3-bottom' style='width: 350px;height: 100px;float: left;'>UPS输入端 <input id="ups-input" type="text" style="color: #555;" value="2.5%"><br/> 评价等级 <input id="ups-level" type="text" style="background-color: #0000FF;" value="好"></div>
                            <div id='ups3-4-bottom' style='width: 350px;height: 100px;float: left;'>整体能效分析 <input id="sum-input" type="text" style="color: #555;" value="1.69"><br/> 评价等级 <input id="sum-level" type="text" style="background-color: #00CC00;" value="优秀"></div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- settingmodel DIV-->
            <div class="setting-class" id="setting-modal">
                <div id="jstree"></div>
                <button onclick="AllSelected()" type="button" class="button-primary button-pill button-small">全选</button>
                <button onclick="AllDisSelected()" type="button" class="button-primary button-pill button-small">全不选</button>
                <button onclick="OK()" type="button" class="button-primary button-pill button-small">确定</button>
                <button onclick="cancle()" type="button" class="button-primary button-pill button-small">取消</button>
            </div>
            <!-- settingmodel DIV END-->

            <!-- addEventMonitorPoint DIV-->
            <div class="setting-class" id="addEventMonitorPoint-modal" style="display: none;">
                <div id="citybank-jstree"></div>
                <button onclick="addCityBankAsMonitorPoint()" type="button" class="button-primary button-pill button-small">确定</button>
                <button onclick="cancleCityBankAsMonitorPoint()" type="button" class="button-primary button-pill button-small">取消
                </button>
            </div>
            <!-- addEventMonitorPoint DIV END-->

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
                        <td><input type="text" id="signature" class="form-control add-roles-input" style="color: white;"></td>
                    </tr>
                    <tr>
                        <td> 注释：</td>
                    </tr>
                    <tr>
                        <td><input type="text" id="annotation" class="form-control add-roles-input" style="color: white;"></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td style="width: 50%;">
                            <button onclick="confirmOKEvent()" type="button" class="button-primary button-pill button-small">确认</button>
                        </td>
                        <td style="width: 50%;">
                            <button onclick="cancleOKEvent()" type="button" class="button-primary button-pill button-small">取消</button>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- conformEventRow DIV END-->

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
        language:  'cn',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $("#firstDate").change(function () {
        $('.firstDate').datetimepicker('setStartDate', $(this).val());
    });
    $("#lastDate").change(function () {
        $('.lastDate').datetimepicker('setEndDate', $(this).val());
    });

    $("#firstDate").val(getFormatDate(-1));
    $("#lastDate").val(getFormatDate(0));

    //获取当前日期前adddaycount天时间
    function getFormatDate(AddDayCount) {
        var dd = new Date();
        dd.setDate(dd.getDate() + AddDayCount);//获取AddDayCount天后的日期
        var y = dd.getFullYear();
        var m = dd.getMonth() + 1;//获取当前月份的日期
        var d = dd.getDate();
        var h = dd.getHours();
        var minute = dd.getMinutes();
        var s = dd.getSeconds();

        var seperator1 = "-";
        var seperator2 = ":";

        var currentdate = y + seperator1 + m + seperator1 + d
            + " " + h + seperator2 + minute
            + seperator2 + s;
        return currentdate;
    }

</script>

<%--<!-- 省\市\机房下拉菜单-->
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

</script>--%>

<!-- 省\市\机房下拉菜单-->
<!--- 2019.03.14 change getCity() option.value from cbname to cbid; change getComproom() ajax getCompTree from name to id -->
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
                        $('#city_code').append("<option value='" + obj[i].cbid + "' selected='selected' >" + obj[i].cbname + "</option>");
                        getComproom();
                    }
                    else
                        $('#city_code').append("<option value='" + obj[i].cbid + "' >" + obj[i].cbname + "</option>");

                }
            }
        });
    }

    /*加载机房下拉选*/
    function getComproom() {
        var cbid = $("#city_code option:selected").val();

        //读取cookie中已存的机房配置
        var opinion3 = $.cookie('opinion3');
        var uname = "${username}";

        $("#comproom_code").empty();

        $.ajax({
            type: "post",
            url: "getCompTree",
            data: {
                cityid: cbid,
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
        else if(cbidstr[i] == " efficiencyInstruction.jsp"){
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
       /* else if(cbidstr[i] == ' efficiencyAssessment.jsp'){
            isSystemMng = false;
            menuname = "动力评估";
        }*/
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

<!-- 切换子菜单-->
<!-- 2019.03.29 cjy: add item3-->
<script type="text/javascript">
    // 刷新右侧菜单
    $("#subItem1").click(function () {
        $("#item1").show();
        $("#item2").hide();
        $("#item3").hide();
    });
    $("#subItem2").click(function () {
        $("#item1").hide();
        $("#item2").show();
        $("#item3").hide();
    });
    $("#subItem3").click(function () {
        $("#item1").hide();
        $("#item2").hide();
        $("#item3").show();
    });
    $("#subItem1").click();

    $("#rightsubItem1").click(function () {
        $("#rightItem1").show();
        $("#rightItem2").hide();
    });
    $("#rightsubItem2").click(function () {
        $("#rightItem1").hide();
        $("#rightItem2").show();
    });
    $("#rightsubItem1").click();


    // 刷新左侧菜单
    $("#detailItem1").click(function () {
        $("#eventdiv1").css('display', 'block');
        $("#eventdiv2").css('display', 'none');
        $("#eventdiv3").css('display', 'none');
    });
    $("#detailItem2").click(function () {
        $("#eventdiv1").css('display', 'none');
        $("#eventdiv2").css('display', 'block');
        $("#eventdiv3").css('display', 'none');
    });
    $("#detailItem3").click(function () {
        $("#eventdiv1").css('display', 'none');
        $("#eventdiv2").css('display', 'none');
        $("#eventdiv3").css('display', 'block');
    });

    $("#detailItem1").click();

    $("#secItem").on('click', 'li',
        function(){
            var id = $(this).attr("id");

            if(id == "powerdetailItem0"){
                getPowerEvent();
            } else if(id == "powerdetailItem1"){
                getDetailPowerEventlytx();
            } else if(id == "powerdetailItem2"){
                getDetailPowerEventxb();
            } else if(id == "powerdetailItem3"){
                getDetailPowerEventsxbph();
            } else if(id == "powerdetailItem4"){
                getDetailPowerEventshunbian();
            } else if(id == "powerdetailItem5"){
                getDetailPowerEventshanbian();
            }
        }
    );

    $("#triItem").on('click', 'li',
        function(){
            var id = $(this).attr("id");

            if(id == "envdetailItem0"){
                getEnvironmentEvent();
            } else if(id == "envdetailItem1"){
                getDetailEnvironmentEventtemp();
            } else if(id == "envdetailItem2"){
                getDetailEnvironmentEventwet();
            }
        }
    );

    $("#fourItem").on('click', 'li',
        function(){
            var id = $(this).attr("id");

            if(id == "fourItem0"){
                getDeviceEvent();
            } else if(id == "ctrldetailItem1"){
                getCtrlEvent();
            }
        }
    );

    $("#detailItem").on('click', 'li',
        function(){
            var id = $(this).attr("id");
            if(id == "detailItemTab1"){
                getPowerEvent();
            } else if(id == "detailItemTab2"){
                getEnvironmentEvent();
            } else if(id == "detailItemTab3"){
                getDeviceEvent();
            }
        }
    );

    <!-- 切换子菜单subItem效果-->
    $(function () {
        $("#ulItem li").click(function () {
            $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式selected
            $(this).addClass('active');                            // 添加当前元素的样式
        });
    });

</script>

<!-- 查询事件-->
<script type="text/javascript">
    // 事件查询按钮
    $("#data-button").click(function () {
        getAllEvent();
    });

    //unix时间转常用时间格式
    function formatTime(time) {
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
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            if ($("#detailItemTab1").hasClass("active")) {
                if($("#powerdetailItem0").hasClass("active")) {
                    getPowerEvent();
                } else if($("#powerdetailItem1").hasClass("active")){
                    getDetailPowerEventlytx();
                } else if($("#powerdetailItem2").hasClass("active")){
                    getDetailPowerEventxb();
                } else if($("#powerdetailItem3").hasClass("active")){
                    getDetailPowerEventsxbph();
                } else if($("#powerdetailItem4").hasClass("active")){
                    getDetailPowerEventshunbian();
                } else if($("#powerdetailItem5").hasClass("active")){
                    getDetailPowerEventshanbian();
                }
            } else if ($("#detailItemTab2").hasClass("active")) {
                if($("#envdetailItem0").hasClass("active")) {
                   // alert("getEnvironmentEvent event");
                    getEnvironmentEvent();
                } else if($("#envdetailItem1").hasClass("active")){
                    getDetailEnvironmentEventtemp();
                } else if($("#envdetailItem2").hasClass("active")){
                    getDetailEnvironmentEventwet();
                }
            } else if ($("#detailItemTab3").hasClass("active")) {
                if($("#fourItem0").hasClass("active")) {
                //    alert("getDeviceEvent event");
                    getDeviceEvent();
                } else if($("#ctrldetailItem1").hasClass("active")){
                    getCtrlEvent();
                }
            }
        }
    }

</script>

<!-- 观测地点-->
<script type="text/javascript">
    //添加监测点-弹出添加div
    function addMonitorPoint() {
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
                                    "id": arrays[i].cbid + ":" + arrays[i].cbname,
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
    addDFCityBankAsMonitorPoint();
    //默认添加市行检测点
    function addDFCityBankAsMonitorPoint() {
        var pbname = $("#province_code option:selected").val();
        $.ajax({
            type: "post",
            url: "getDFMP",
            data: {
                pbname: pbname
            },
            dataType: "json",
            success: function (data) {
                var ptable = $("#place-event");
                ptable.empty();

                var jdata = JSON.parse(data);
                var nodeset = jdata.allcbtree;
                for (var i = 0; i < nodeset.length; i++) {
                    var id = nodeset[i].cbid;
                    var text = nodeset[i].cbname;

                    if(i===0){
                        ptable.append('<tr id="' + id + '"><td><input id="radio-mpid" name="radio-mpid" type="radio" value="' + id + '" checked>' + text + '</td></tr>');
                    } else {
                        ptable.append('<tr id="' + id + '"><td><input id="radio-mpid" name="radio-mpid" type="radio" value="' + id + '">' + text + '</td></tr>');
                    }
                }
            }
        });

        cancleCityBankAsMonitorPoint();
    }

    //添加检测点-确定
    function addCityBankAsMonitorPoint() {
        //取得所有选中的节点，返回节点对象的集合
        var nodes = $("#citybank-jstree").jstree("get_checked"); //使用get_checked方法
        var nodes2 = nodes.toString();
        var nodeset = nodes2.split(",");
        var ptable = $("#place-event");
        for (var i = 0; i < nodeset.length; i++) {
            var nset = nodeset[i].split(":");
            ptable.append('<tr id="' + nset[0] + '"><td><input id="radio-mpid" name="radio-mpid" type="radio" value="' + nset[0] + '" checked>' + nset[1] + '</td></tr>');
        }
        cancleCityBankAsMonitorPoint();
    }

    //添加检测点-取消
    function cancleCityBankAsMonitorPoint() {
        $('#addEventMonitorPoint-modal').css('display', 'none');
    }

    //删除检测点
    function deleteMonitorPoint() {
        var delmpid = $('input[name="radio-mpid"]:checked');
        delmpid.each(function () {
            $(this).parent().parent().remove();
        });
    }
</script>

<!-- 右侧界面 第二个子菜单 列 -->
<script type="text/javascript">
    var optionDataSource = [
        {name: '测量名称', length: '50'},
        {name: '时间', length: '50'},
        {name: '类型', length: '50'},
        {name: '事件描述', length: '120'},
        {name: '位置', length: '50'},
        {name: '触发相位', length: '50'},
        {name: '时间长短', length: '40'},
        {name: '深度', length: '50'},
        {name: '方向', length: '50'},
        {name: '评论', length: '50'},
        {name: '签名', length: '50'},
        {name: '触发水平', length: '50'},
        {name: '中有波形数据', length: '50'},
    ];
    optionDataSource.forEach(function (item, index) {
        $("#useful-col").append('<option id=' + index + '>' + item.name + '</option>')
    });

    if (!localStorage.getItem("visibleColumn")) {
        var visibleColumnData = [
            {name: '位置', length: '50'},
            {name: '测量名称', length: '50'},
            {name: '时间', length: '50'},
            {name: '类型', length: '50'},
            {name: '事件描述', length: '120'},
            {name: '时间长短', length: '40'},
            {name: '评论', length: '50'},
            {name: '签名', length: '50'}
        ];
        localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
    }

    $(document).ready(function () {
        var tbody = $("#colume-table").children("tbody");
        if (localStorage.getItem("visibleColumn")) {
            visibleColumnData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        if (visibleColumnData.length > 0) {
            visibleColumnData.forEach(function (item, index) {
                tbody.append('<tr id=' + index + '><td>' + item.name + '</td><td>' + item.length + '</td></tr>')
            })
        }
        tbody.on('click', 'tr', function () {
            var that = $(this);
            tbody.children('tr').removeClass('col-active');
            if (!that.hasClass('col-active')) {
                that.addClass('col-active')
            }
        })
    });

    function addColumnItem() {
        var index = Number($("#useful-col option:selected").attr("id"));
        visibleColumnData.push(optionDataSource[index]);
        localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
        var tbody = $("#colume-table").children("tbody");
        tbody.append('<tr id=' + (visibleColumnData.length - 1) + '><td>' + optionDataSource[index].name + '</td><td>' + optionDataSource[index].length + '</td></tr>')
    }

    function upcol() {
        var coltable = $("#colume-table");
        var target = coltable.children("tbody").children(".col-active");
        var list = coltable.children("tbody").children('tr');
        var targetId = Number(target[0].id)
        var upperData = visibleColumnData[targetId - 1];
        if (target.length > 0) {
            var thisLocation = list.index(target);
            if (thisLocation < 1) {
                alert('已移到最顶端了');
            } else {
                visibleColumnData[targetId - 1] = visibleColumnData[targetId];
                visibleColumnData[targetId] = upperData;
                localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
                target[0].id = (Number(target[0].id)) - 1 + ''
                target.prev()[0].id = (Number(target.prev()[0].id)) + 1 + ''
                target.prev().before(target); //上移动
            }
        } else {
            alert('请选择要上移的列');
        }
    }

    function downcol() {
        var coltable = $("#colume-table");
        var target = coltable.children("tbody").children(".col-active");
        var list = coltable.children("tbody").children('tr');
        var targetId = Number(target.attr("id"));
        var downData = visibleColumnData[targetId + 1];
        if (target.length > 0) {
            var thisLocation = list.index(target);
            if (thisLocation >= list.length - 1) {
                return alert('已移到最底端了');
            } else {
                visibleColumnData[targetId + 1] = visibleColumnData[targetId];
                visibleColumnData[targetId] = downData;

                localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
                target[0].id = (Number(target.attr("id"))) + 1 + '';
                target.next()[0].id = (Number(target.next()[0].id)) - 1 + '';
                target.next().after(target); //下移动
            }
        } else {
            return alert('请选择要下移的列');
        }
    }

    function deletecol() {
        var coltable = $("#colume-table");
        var deleteData = coltable.children("tbody").children(".col-active");
        if (!deleteData) {
            return alert('请选择删除的项');
        }
        var daleteIndex = [];
        for (var i = 0; i < deleteData.length; i++) {
            daleteIndex.push(Number(deleteData[i].id));
        }
        visibleColumnData = visibleColumnData.filter(function (item, index) {
            return daleteIndex.indexOf(index) < 0
        });
        localStorage.setItem("visibleColumn", JSON.stringify(visibleColumnData));
        deleteData.remove();
    }
</script>

<!-- 设置icon-->
<script type="text/javascript">
   /* function settingIcon() {
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
                            for (var i = arrays.length - 1; i > 0; i--) {
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
        });
        $('#jstree').jstree('select_all');
        var priortylist = $('#jstree').jstree().get_checked();
        $.cookie('priortylist', priortylist, {expires: 1, path: '/'});
    }
*/
    // 默认优先级全选
    var priortylist = [ 3333,2222,1111,350,349,348,347,346,345,344,343,342,341,340,339,338,337,336,335,334,333,332,331,330,329,328,327,326,325,324,323,322,321,320,319,318,317,316,315,314,313,312,311,310,309,308,307,306,305,304,303,302,301,300,299,298,297,296,295,294,293,292,291,290,289,288,287,286,285,284,283,282,281,280,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,264,263,262,261,260,259,258,257,256,255,254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235,234,233,232,231,230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107,106,105,104,103,102,101,100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2];
    $.cookie('priortylist', priortylist, {expires: 1, path: '/'});


    function AllSelected() {
        $('#jstree').jstree('select_all');
    }

    function AllDisSelected() {
        $('#jstree').jstree('deselect_all');
    }

    //设置按钮界面 OK
    function OK() {
        var priortylist = $('#jstree').jstree().get_checked();
        $.cookie('priortylist', priortylist, {expires: 1, path: '/'});
        //获取树每一行的优先级下拉框，节点id和将下拉框的值传入数据库
        var priortylist = "1,2,3,4,5,6,7,8,9,10";
        var eventtypelist = "1,2,3,4,5,6,7,8,9,10";
        $('#setting-modal').css('display', 'none');
    }

    //设置按钮界面取消
    function cancle() {
        $('#setting-modal').css('display', 'none');
    }

    //点击单条事件-确认事件
    function confirmEvent() {

        var teidPower;
        var teidEnvironment;
        var teidCtrl;

        if ($("#detailItemTab1").hasClass("active")) {
            if($("#powerdetailItem0").hasClass("active")) {
                teidPower = $('#power-event').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem1").hasClass("active")){
                teidPower = $('#power-event-detail-1').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem2").hasClass("active")){
                teidPower = $('#power-event-detail-2').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem3").hasClass("active")){
                teidPower = $('#power-event-detail-3').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem4").hasClass("active")){
                teidPower = $('#power-event-detail-4').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem5").hasClass("active")){
                teidPower = $('#power-event-detail-5').bootstrapTable('getAllSelections');
            }
        } else if ($("#detailItemTab2").hasClass("active")) {
            if($("#envdetailItem0").hasClass("active")) {
                teidEnvironment = $('#environment-event').bootstrapTable('getAllSelections');
            } else if($("#envdetailItem1").hasClass("active")){
                teidEnvironment = $('#environment-event-detail-1').bootstrapTable('getAllSelections');
            } else if($("#envdetailItem2").hasClass("active")){
                teidEnvironment = $('#environment-event-detail-2').bootstrapTable('getAllSelections');
            }
        } else if ($("#detailItemTab3").hasClass("active")) {
            if($("#fourItem0").hasClass("active")) {
                teidCtrl = $('#device-event').bootstrapTable('getAllSelections');
            } else if($("#ctrldetailItem1").hasClass("active")){
                teidCtrl = $('#device-event-detail-1').bootstrapTable('getAllSelections');
            }
        }

        if (teidPower != undefined && teidCtrl != undefined && teidEnvironment != undefined) {
            alert("请选择一个要确认的事件");
        } else {
            $('#conformEventRow-modal').css('display', 'block');
            var sign = "<%=session.getAttribute("username")%>";
            $('#signature').val(sign);
        }
    }

    //点击单条事件-签名确认事件-确认
    function confirmOKEvent() {
        //添加该事件的签名和注释到数据库
       /* var teidCtrl = $('#device-event').bootstrapTable('getAllSelections');
        var teidPower = $('#power-event').bootstrapTable('getAllSelections'); //$("input[name='teidPower']:checked").serialize();
        var teidEnvironment = $('#environment-event').bootstrapTable('getAllSelections'); //$('input[name="teidEnvironment"]:checked').serialize();
*/

        var teidPower;
        var teidEnvironment;
        var teidCtrl;

        if ($("#detailItemTab1").hasClass("active")) {
            if($("#powerdetailItem0").hasClass("active")) {
                teidPower = $('#power-event').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem1").hasClass("active")){
                teidPower = $('#power-event-detail-1').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem2").hasClass("active")){
                teidPower = $('#power-event-detail-2').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem3").hasClass("active")){
                teidPower = $('#power-event-detail-3').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem4").hasClass("active")){
                teidPower = $('#power-event-detail-4').bootstrapTable('getAllSelections');
            } else if($("#powerdetailItem5").hasClass("active")){
                teidPower = $('#power-event-detail-5').bootstrapTable('getAllSelections');
            }
        } else if ($("#detailItemTab2").hasClass("active")) {
            if($("#envdetailItem0").hasClass("active")) {
                teidEnvironment = $('#environment-event').bootstrapTable('getAllSelections');
            } else if($("#envdetailItem1").hasClass("active")){
                teidEnvironment = $('#environment-event-detail-1').bootstrapTable('getAllSelections');
            } else if($("#envdetailItem2").hasClass("active")){
                teidEnvironment = $('#environment-event-detail-2').bootstrapTable('getAllSelections');
            }
        } else if ($("#detailItemTab3").hasClass("active")) {
            if($("#fourItem0").hasClass("active")) {
                teidCtrl = $('#device-event').bootstrapTable('getAllSelections');
            } else if($("#ctrldetailItem1").hasClass("active")){
                teidCtrl = $('#device-event-detail-1').bootstrapTable('getAllSelections');
            }
        }

        var sign = $('#signature').val();
        var annot = $('#annotation').val();
        var ettype;

        if ($("#detailItemTab1").hasClass("active")) {
            if (teidPower.length != 0) {
                //teidset = teidPower;
                var teidset = new Array();
                for(var i = 0; i < teidPower.length; i++) {
                    teidset[i] = teidPower[i].teid;
                }
                ettype = "power";

                $.ajax({
                    type: "post",
                    url: "addSignatureAndAnnotation",
                    dataType: "json",
                    data: {
                        teid: teidset.toString(),
                        sign: sign,
                        annot: annot,
                        eventtabletype: ettype
                    }
                });
            }
        } else if ($("#detailItemTab2").hasClass("active")) {
            if (teidEnvironment.length != 0) {
               // teidset = teidEnvironment;
                var teidset = new Array();
                for(var i = 0; i < teidEnvironment.length; i++) {
                    teidset[i] = teidEnvironment[i].teid;
                }
                ettype = "environment";

                $.ajax({
                    type: "post",
                    url: "addSignatureAndAnnotation",
                    dataType: "json",
                    data: {
                        teid: teidset.toString(),
                        sign: sign,
                        annot: annot,
                        eventtabletype: ettype
                    }
                });
            }
        } else if ($("#detailItemTab3").hasClass("active")) {
            if (teidCtrl.length != 0) {
                //teidset = teidCtrl;
                var teidset = new Array();
                for(var i = 0; i < teidCtrl.length; i++) {
                    teidset[i] = teidCtrl[i].teid;
                }
                ettype = "device";

                $.ajax({
                    type: "post",
                    url: "addSignatureAndAnnotation",
                    dataType: "json",
                    data: {
                        teid: teidset.toString(),
                        sign: sign,
                        annot: annot,
                        eventtabletype: ettype
                    }
                });
            }
        }

        $('#conformEventRow-modal').css('display', 'none');
    }

    //点击单条事件-签名确认事件-取消
    function cancleOKEvent() {
        $('#conformEventRow-modal').css('display', 'none');
    }
</script>

<!-- 刷新icon-->
<script type="text/javascript">
    function refreshIcon() {
        //刷新事件
        if ($("#detailItemTab1").hasClass("active")) {
            if($("#powerdetailItem0").hasClass("active")) {
                getPowerEvent();
            } else if($("#powerdetailItem1").hasClass("active")){
                getDetailPowerEventlytx();
            } else if($("#powerdetailItem2").hasClass("active")){
                getDetailPowerEventxb();
            } else if($("#powerdetailItem3").hasClass("active")){
                getDetailPowerEventsxbph();
            } else if($("#powerdetailItem4").hasClass("active")){
                getDetailPowerEventshunbian();
            } else if($("#powerdetailItem5").hasClass("active")){
                getDetailPowerEventshanbian();
            }
        } else if ($("#detailItemTab2").hasClass("active")) {
            if($("#envdetailItem0").hasClass("active")) {
                getEnvironmentEvent();
            } else if($("#envdetailItem1").hasClass("active")){
                getDetailEnvironmentEventtemp();
            } else if($("#envdetailItem2").hasClass("active")){
                getDetailEnvironmentEventwet();
            }
        } else if ($("#detailItemTab3").hasClass("active")) {
            if($("#fourItem0").hasClass("active")) {
                getDeviceEvent();
            } else if($("#ctrldetailItem1").hasClass("active")){
                getCtrlEvent();
            }
        }
    }
</script>

<!-- 导出-->
<script type="text/javascript">

    function exportTable() {
        var type = 0;
        $("#detailItem li").each(function (i) {
            if ($(this).hasClass("active")) {
                type = i;
            }
        });

        if (type == 0) {
            var idx = 0;
            var tableid;
            $("#secItem li").each(function (i) {
                if ($(this).hasClass("active")) {
                    idx = i;
                }
            });
            if(idx == 0)
                tableid = "power-event-tbody";
            else
                tableid = "power-event-detail-tbody-" + idx;
            exportToExcel(tableid);

        } else if (type == 1) {
            var idx = 0;
            var tableid;
            $("#triItem li").each(function (i) {
                if ($(this).hasClass("active")) {
                    idx = i;
                }
            });
            if(idx == 0)
                tableid = "environment-event-tbody";
            else
                tableid = "environment-event-detail-tbody-" + idx;
            exportToExcel(tableid);

        } else if (type == 2) {

            var idx = 0;
            var tableid;
            $("#fourItem li").each(function (i) {
                if ($(this).hasClass("active")) {
                    idx = i;
                }
            });
            if(idx == 0)
                tableid = "device-event-tbody";
            else
                tableid = "device-event-detail-tbody-" + idx;
            exportToExcel(tableid);
        }

    }

    var idTmr;

    function getExplorer() {
        var explorer = window.navigator.userAgent;
        //ie
        if (explorer.indexOf("MSIE") >= 0) {
            return 'ie';
        }
        //firefox
        else if (explorer.indexOf("Firefox") >= 0) {
            return 'Firefox';
        }
        //Chrome
        else if (explorer.indexOf("Chrome") >= 0) {
            return 'Chrome';
        }
        //Opera
        else if (explorer.indexOf("Opera") >= 0) {
            return 'Opera';
        }
        //Safari
        else if (explorer.indexOf("Safari") >= 0) {
            return 'Safari';
        }
    }

    function exportToExcel(tableid) {//整个表格拷贝到EXCEL中
        if (getExplorer() == 'ie') {
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
        } else {
            tableToExcel(tableid)
        }
    }

    function Cleanup() {
        window.clearInterval(idTmr);
        CollectGarbage();
    }

    var tableToExcel = (function () {
        var uri = 'data:application/vnd.ms-excel;base64,',
            template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" '
                + 'xmlns:x="urn:schemas-microsoft-com:office:excel" '
                + 'xmlns="http://www.w3.org/TR/REC-html40">'
                + '<head>'
                + '<!--[if gte mso 9]>'
                + '<xml>'
                + '<x:ExcelWorkbook>'
                + '<x:ExcelWorksheets>'
                + '<x:ExcelWorksheet>'
                + '<x:Name>{worksheet}</x:Name>'
                + '<x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions>'
                + '</x:ExcelWorksheet>'
                + '</x:ExcelWorksheets>'
                + '</x:ExcelWorkbook>'
                + '</xml>'
                + '<![endif]-->'
                + '</head>'
                + '<body><table>{table}</table></body>'
                + '</html>',
            base64 = function (s) {
                return window.btoa(unescape(encodeURIComponent(s)))
            },
            format = function (s, c) {
                return s.replace(/{(\w+)}/g,
                    function (m, p) {
                        return c[p];
                    })
            }
        return function (table, name) {
            if (!table.nodeType) table = document.getElementById(table)
            var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
            window.location.href = uri + base64(format(template, ctx))
        }
    })()
</script>

<!-- 打印-->
<script type="text/javascript">

    // bootstrap table 打印
    function printTable(){
        var printData;

        if ($("#detailItemTab1").hasClass("active")) {
            if($("#powerdetailItem0").hasClass("active")) {
                printData = $('#power-event').parent().html();
            } else if($("#powerdetailItem1").hasClass("active")){
                printData = $('#power-event-detail-1').parent().html();
            } else if($("#powerdetailItem2").hasClass("active")){
                printData = $('#power-event-detail-2').parent().html();
            } else if($("#powerdetailItem3").hasClass("active")){
                printData = $('#power-event-detail-3').parent().html();
            } else if($("#powerdetailItem4").hasClass("active")){
                printData = $('#power-event-detail-4').parent().html();
            } else if($("#powerdetailItem5").hasClass("active")){
                printData = $('#power-event-detail-5').parent().html();
            }
        } else if ($("#detailItemTab2").hasClass("active")) {
            if($("#envdetailItem0").hasClass("active")) {
                printData = $('#environment-event').parent().html();
            } else if($("#envdetailItem1").hasClass("active")){
                printData = $('#environment-event-detail-1').parent().html();
            } else if($("#envdetailItem2").hasClass("active")){
                printData = $('#environment-event-detail-2').parent().html();
            }
        } else if ($("#detailItemTab3").hasClass("active")) {
            if($("#fourItem0").hasClass("active")) {
                printData = $('#device-event').parent().html();
            } else if($("#ctrldetailItem1").hasClass("active")){
                printData = $('#device-event-detail-1').parent().html();
            }
        }
        window.document.body.innerHTML = printData;
        window.print();
        window.location.reload(true);
    }

    /*function printTable_old() {
        window.document.title = "";
        window.document.URL = "";
        bdhtml = window.document.body.innerHTML;
        sprnstr = "<!--startprint-->";
        eprnstr = "<!-display-endprint-->";
        prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
        prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
        window.document.body.innerHTML = prnhtml;
        window.print();
        setTimeout(location.reload(), 3000);
    }*/
</script>

<!-- -->
<script type="text/javascript">
    //自动更新间隔功能
    $("#auto-update-interval").on("change", function () {
        var updateinterval = $('#auto-update-interval').val();
        var timer = null;
        if (updateinterval) {
            timer = setInterval(getAllEvent, updateinterval);
        } else {
            if (timer == null) {
                clearInterval(timer)
            }
        }
    });
    //点击table中的某一行
    $('#place-event tbody').on('change', 'tr', function () {
    });

    //点击单条事件-删除事件（假删除，只是前端不显示）
    function deleteEventOnlyPage() {

        var teidset = 1;
        var arr = [ parseInt('0'), parseInt('1'), parseInt('2'), parseInt('3'), parseInt('4'), parseInt('5')];


        $('#device-event').bootstrapTable('remove', {
            filed: 'teid',
            values: [parseInt('0')]  //[parseInt(teidset)]
        });


        $('#power-event').bootstrapTable('remove', {
            filed: 'checkboxid',
            values: [parseInt(1)]//[parseInt(teidset)]
        });

        $('#environment-event').bootstrapTable('remove', {
            filed: 'checkboxid',
            values: [0]//[parseInt(teidset)]
        });


        var teidPowerId = $('input[name="teidPower"]:checked').serialize();
        var teidCtrlId = $('input[name="teidCtrl"]:checked').serialize();
        var teidEnvironmentId = $('input[name="teidEnvironment"]:checked').serialize();

        if(teidPowerId != undefined){
            var teidSet = teidPowerId.split("&");
            var teidlist = new Array();

            for(var i = 0; i < teidSet.length; i++){
                var teidVal = teidSet[i].split("=");
                var iteid = teidVal[1];
                if(iteid != null || iteid != ""){
                    teidlist[i] = iteid;
                }
            }
            for(var i = 0; i < teidlist.length; i++){
                if (teidlist[i] != undefined) {
                    var tbody = [
                        $("#power-event-tbody"),
                        $("#power-event-detail-tbody-1"),
                        $("#power-event-detail-tbody-2"),
                        $("#power-event-detail-tbody-3"),
                        $("#power-event-detail-tbody-4"),
                        $("#power-event-detail-tbody-5")
                    ];
                    tbody.forEach(function (item) {
                        item.children("#" + teidlist[i]).remove();
                    })
                }
            }
        }

        if(teidCtrlId != undefined) {
            var teidSet2 = teidCtrlId.split("&");
            var teidlist2 = new Array();

            for (var i = 0; i < teidSet2.length; i++) {
                var teidVal = teidSet2[i].split("=");
                var iteid = teidVal[1];
                if (iteid != null || iteid != "") {
                    teidlist2[i] = iteid;
                }
            }
            for(var i = 0; i < teidlist2.length; i++){
                if (teidlist2[i] != undefined) {
                    var tbody = [
                        $("#device-event-tbody"),
                        $("#device-event-detail-1-tbody") //device-event-detail-tbody-1
                    ];
                    tbody.forEach(function (item) {
                        item.children("#" + teidlist2[i]).remove();
                    })
                }
            }
        }

        if(teidEnvironmentId != undefined) {
            var teidSet3 = teidEnvironmentId.split("&");
            var teidlist3 = new Array();

            for (var i = 0; i < teidSet3.length; i++) {
                var teidVal = teidSet3[i].split("=");
                var iteid = teidVal[1];
                if (iteid != null || iteid != "") {
                    teidlist3[i] = iteid;
                }
            }
            for(var i = 0; i < teidlist3.length; i++){
                if (teidlist3[i] != undefined) {
                    var tbody = [$("#environment-event-tbody"),
                        $("#environment-event-detail-tbody-1"),
                        $("#environment-event-detail-tbody-2")
                    ];
                    tbody.forEach(function (item) {
                        item.children("#" + teidlist3[i]).remove();
                    })
                }
            }
        }
    }

    //全选
    function check_all() {

        if ($("#detailItemTab1").hasClass("active")) {
            if($("#powerdetailItem0").hasClass("active")) {
                $('#power-event').bootstrapTable('checkAll');
            } else if($("#powerdetailItem1").hasClass("active")){
                $('#power-event-detail-1').bootstrapTable('checkAll');
            } else if($("#powerdetailItem2").hasClass("active")){
                $('#power-event-detail-2').bootstrapTable('checkAll');
            } else if($("#powerdetailItem3").hasClass("active")){
                $('#power-event-detail-3').bootstrapTable('checkAll');
            } else if($("#powerdetailItem4").hasClass("active")){
                $('#power-event-detail-4').bootstrapTable('checkAll');
            } else if($("#powerdetailItem5").hasClass("active")){
                $('#power-event-detail-5').bootstrapTable('checkAll');
            }
        } else if ($("#detailItemTab2").hasClass("active")) {
            if($("#envdetailItem0").hasClass("active")) {
                $('#environment-event').bootstrapTable('checkAll');
            } else if($("#envdetailItem1").hasClass("active")){
                $('#environment-event-detail-1').bootstrapTable('checkAll');
            } else if($("#envdetailItem2").hasClass("active")){
                $('#environment-event-detail-2').bootstrapTable('checkAll');
            }
        } else if ($("#detailItemTab3").hasClass("active")) {
            if($("#fourItem0").hasClass("active")) {
                $('#device-event').bootstrapTable('checkAll');
            } else if($("#ctrldetailItem1").hasClass("active")){
                $('#device-event-detail-1').bootstrapTable('checkAll');
            }
        }
    }

</script>

<script type="text/javascript">
    initPowerTable();

    initPowerlytxTable();

    initPowerxbTable();

    initPowersxbphTable();

    initPowershunbianTable();

    initPowershanbianTable();

    initEnvironmentTable();

    initEnvironmenttempTable();

    initEnvironmentwetTable();

    initDeviceTable();

    function initPowerTable(){
        $('#power-event').bootstrapTable({

            url : 'getPowerEvent', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#power-event').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //  alert("加载数据失败");
            }
        });
    }

    function initPowerlytxTable(){
        $('#power-event-detail-1').bootstrapTable({

            url : 'getDetailPowerEventlytx', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#power-event-detail-1').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //  alert("加载数据失败");
            }
        });
    }

    function initPowerxbTable(){
        $('#power-event-detail-2').bootstrapTable({

            url : 'getDetailPowerEventxb', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#power-event-detail-2').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //   alert("加载数据失败");
            }
        });
    }

    function initPowersxbphTable(){
        $('#power-event-detail-3').bootstrapTable({

            url : 'getDetailPowerEventsxbph', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#power-event-detail-3').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                // alert("加载数据失败");
            }
        });
    }

    function initPowershunbianTable(){
        $('#power-event-detail-4').bootstrapTable({

            url : 'getDetailPowerEventshunbian', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#power-event-detail-4').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //   alert("加载数据失败");
            }
        });
    }

    function initPowershanbianTable(){
        $('#power-event-detail-5').bootstrapTable({

            url : 'getDetailPowerEventshanbian', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#power-event-detail-5').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //   alert("加载数据失败");
            }
        });
    }

    function initEnvironmentTable(){
        $('#environment-event').bootstrapTable({

            url : 'getEnvironmentEvent', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#environment-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#environment-event').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //   alert("加载数据失败");
            }
        });
    }

    function initEnvironmenttempTable(){
        $('#environment-event-detail-1').bootstrapTable({

            url : 'getDetailEnvironmentEventtemp', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#environment-event-detail-1').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //   alert("加载数据失败");
            }
        });
    }

    function initEnvironmentwetTable(){
        $('#environment-event-detail-2').bootstrapTable({

            url : 'getDetailEnvironmentEventwet', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : '',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#environment-event-detail-2').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
                //   alert("加载数据失败");
            }
        });
    }

    function initDeviceTable(){
        $('#device-event').bootstrapTable({

            url : 'getCtrlEvent', //请求路径

            striped : true, //是否显示行间隔色

            pageNumber : 1, //初始化加载第一页

            pagination : true,//是否分页

            dataType : "json", // 数据类型

            data_local: "zh-US",//表格汉化

            sidePagination : 'server',//server:服务器端分页|client：前端分页

            pageSize : 50,//单页记录数

            pageList : [ 50, 100, 200 ],//可选择单页记录数

            silent : true, // 必须设置刷新事件

            //  showRefresh : true,//刷新按钮

            queryParams :  queryParams,  //上传服务器的参数

            columns : [{
                title : '',
                field : 'checkboxid',
                checkbox: true,
                visible: true
            }, {
                title : '',
                field : 'teid',
                visible: false
            },{
                title : '测量名称',
                field : 'name'
            }, {
                title : '时间',
                field : 'time'
                // sortable : true
            }, {
                title : '类型',
                field : 'type'
            }, {
                title : '事件描述',
                field : 'description'
            }, {
                title : '时间长短',
                field : 'duration'
            }, {
                title : '评论',
                field : 'annotation'
            }, {
                title : '签名',
                field : 'signature'
            }/*,  {
                   title : 'cid',
                   field : 'cid'
               }*/
            ],
            responseHandler:function (res) {
                // $('#device-event').bootstrapTable('load', res);
                return res;
            },
            onLoadSuccess: function(){ //加载成功时执行
                $('#device-event').bootstrapTable('uncheckAll'); //checkbox 全不选
                //alert("加载成功");
            },
            onLoadError: function(){ //加载失败时执行
               // alert("加载数据失败");
            }
        });
    }

    // 分页查询参数，是以键值对的形式设置的
    function queryParams(params) {

        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }

        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else if (cbname == undefined) {
            console.log("wait for cbname loading...");
        }
        else {
            var temp = {//如果是在服务器端实现分页，limit、offset这两个参数是必须的

                limit : params.limit, // 每页显示数量
                offset : params.offset, // SQL语句起始索引
                // page : (params.offset / params.limit) + 1, //当前页码

                //传给服务器的参数
                stime: stime,
                etime: etime,
                cbname: cbname.toString(),
                priortylist: priortylist
            };
            return temp;
        }
    }

    function getPowerEvent() {
       $('#searching').css('display', 'block');
       var tableData = [];
       if (localStorage.getItem("visibleColumn")) {
           tableData = JSON.parse(localStorage.getItem("visibleColumn"));
       }
       //setThead1(tableData);

       $('#eventdiv1').css('display', 'block');
       $('#eventdiv2').css('display', 'none');
       $('#eventdiv3').css('display', 'none');
       var cbname = [];
       var stime = null;
       var etime = null;
       var nowtime = getNowFormatDate();
       var edate = $("input[name='event-data-period']:checked").val();
       var cbname = $('input[name="radio-mpid"]:checked').val();

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
           // 获取一星期前的时间：
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
       if (stime == null || etime == null) {
           alert("请选择日期时间");
       }
       else if (cbname == "[object Object]") {
           alert("请选择测量地点");
       }
       else if (priortylist == null) {
           alert("请设定可查看的事件类型");
       }
       else {
           //获取所有电能事件
           $('#power-event').bootstrapTable('refresh');

           $('#eventdiv1').css('display', 'block');
           $('#eventdiv2').css('display', 'none');
           $('#eventdiv3').css('display', 'none');
       }
       $('#searching').css('display', 'none');
   }

    function getDetailPowerEventlytx() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead1(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'block');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有lytx事件
            $('#power-event-detail-1').bootstrapTable('refresh');

            $("#power-event-detail-0-div").css('display', 'none');
            $("#power-event-detail-1-div").css('display', 'block');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'none');
        }
        $('#searching').css('display', 'none');
    }

    function getDetailPowerEventxb() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead1(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'block');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#power-event-detail-2').bootstrapTable('refresh');

            $("#power-event-detail-0-div").css('display', 'none');
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'block');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'none');
        }
        $('#searching').css('display', 'none');
    }

    function getDetailPowerEventsxbph() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead1(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'block');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#power-event-detail-3').bootstrapTable('refresh');

            $("#power-event-detail-0-div").css('display', 'none');
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'block');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'none');
        }
        $('#searching').css('display', 'none');
    }

    function getDetailPowerEventshunbian() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead1(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'block');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#power-event-detail-4').bootstrapTable('refresh');

            $("#power-event-detail-0-div").css('display', 'none');
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'block');
            $("#power-event-detail-5-div").css('display', 'none');
        }
        $('#searching').css('display', 'none');
    }

    function getDetailPowerEventshanbian() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead1(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'block');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#power-event-detail-5').bootstrapTable('refresh');

            $("#power-event-detail-0-div").css('display', 'none');
            $("#power-event-detail-1-div").css('display', 'none');
            $("#power-event-detail-2-div").css('display', 'none');
            $("#power-event-detail-3-div").css('display', 'none');
            $("#power-event-detail-4-div").css('display', 'none');
            $("#power-event-detail-5-div").css('display', 'block');
        }
        $('#searching').css('display', 'none');
    }

    function getEnvironmentEvent() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead2(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'block');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#environment-event').bootstrapTable('refresh');

            $("#environment-event-div").css('display', 'block');
            $("#environment-event-detail-1-div").css('display', 'none');
            $("#environment-event-detail-2-div").css('display', 'none');
        }
        $('#searching').css('display', 'none');
    }

    function getDetailEnvironmentEventtemp() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead2(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'block');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#environment-event-detail-1').bootstrapTable('refresh');

            $("#environment-event-div").css('display', 'none');
            $("#environment-event-detail-1-div").css('display', 'block');
            $("#environment-event-detail-2-div").css('display', 'none');
        }
        $('#searching').css('display', 'none');
    }

    function getDetailEnvironmentEventwet() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        //setThead2(tableData);
        // $('#eventdiv1').css('display', 'block');
        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'block');
        $('#eventdiv3').css('display', 'none');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //获取所有电能事件
            $('#environment-event-detail-2').bootstrapTable('refresh');

            $("#environment-event-div").css('display', 'none');
            $("#environment-event-detail-1-div").css('display', 'none');
            $("#environment-event-detail-2-div").css('display', 'block');
        }
        $('#searching').css('display', 'none');
    }

    function getDeviceEvent() {
        $('#searching').css('display', 'block');
        var tableData = [];
        if (localStorage.getItem("visibleColumn")) {
            tableData = JSON.parse(localStorage.getItem("visibleColumn"));
        }
        // setThead3(tableData);
        // $('#eventdiv1').css('display', 'none');
        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'block');
        var cbname = [];
        var stime = null;
        var etime = null;
        var nowtime = getNowFormatDate();
        var edate = $("input[name='event-data-period']:checked").val();
        var cbname = $('input[name="radio-mpid"]:checked').val();

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
            // 获取一星期前的时间：
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
        if (stime == null || etime == null) {
            alert("请选择日期时间");
        }
        else if (cbname == "[object Object]") {
            alert("请选择测量地点");
        }
        else if (priortylist == null) {
            alert("请设定可查看的事件类型");
        }
        else {
            //查询按钮事件
            $('#device-event').bootstrapTable('refresh');
        }
        $('#searching').css('display', 'none');
    }

</script>

<!-- 2019.03.29 cjy: nengxiaopinggu ecahrts--->
<script>
    var eventChart1 = echarts.init(document.getElementById('sumassumehist'));
    var eventChart2 = echarts.init(document.getElementById('sumassumecircle'));

    var eventChart31 = echarts.init(document.getElementById('ups3-1'));
    var eventChart32 = echarts.init(document.getElementById('ups3-2'));
    var eventChart33 = echarts.init(document.getElementById('ups3-3'));
    var eventChart34 = echarts.init(document.getElementById('ups3-4'));

    var myColor=['#eb2100','#eb3600','#d0570e','#d0a00e','#34da62','#00e9db','#00c0e9','#0096f3'];
    var highlight = '#03b7c9', bgColor='#FFFFFF';

    var option1 = {
        color: ['#3398DB'],
        title: {
            text: '整体能耗分布图'
        },
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                data : ['IT', 'UPS供电', '制冷', '空调末端', '照明及其他'],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                type:'bar',
                barWidth: '40%',
                data:[10, 52, 200, 334, 390],
                itemStyle: {
                    normal: {
                        color: function(params) {
                            var num = myColor.length;
                            return myColor[params.dataIndex%num]
                        }
                    }
                }
            }
        ]
    };

    var option2 = {
        title: {
            text: '机房用电情况（%）'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data:['IT', 'UPS供电', '制冷', '空调末端', '照明及其他']
        },
        series: [
            {
                type:'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:10, name:'IT'},
                    {value:52, name:'UPS供电'},
                    {value:200, name:'制冷'},
                    {value:334, name:'空调末端'},
                    {value:390, name:'照明及其他'}
                ]
            }
        ]
    };

    var option31 = {
        title: {
            text: 'UPS输入端',
            textStyle: {
                fontSize: 10,
                color: '#000'
            }
        },
        series: [
            {
                name: '刻度',
                type: 'gauge',
                center: ['50%', '55%'], // 默认全局居中
                splitNumber: 4, //刻度数量
                min: 1,
                max: 3,
                startAngle: 180,
                endAngle: 0,
                clockwise: true,
                axisLine: {
                    show: true,
                    lineStyle: {
                        width: 2,
                        shadowBlur: 0,
                        color: [
                            [1, highlight]
                        ]
                    }
                },
                axisTick: {
                    show: true,
                    lineStyle: {
                        color: highlight,
                        width: 1
                    },
                    length: -4,
                    splitNumber: 10
                },
                splitLine: {
                    show: true,
                    length: -7,
                    lineStyle: {
                        color: highlight,
                    }
                },
                axisLabel: {
                    distance: -20,
                    textStyle: {
                        color: highlight,
                        fontSize: "14",
                        fontWeight: "bold"
                    }
                },
                pointer: { //仪表盘指针
                    show: 0
                },
                detail: {
                    show: false
                }
            },
            {
                name: '渐变标尺',
                center: ['50%', '55%'], // 默认全局居中
                type: 'gauge',
                radius: '70%',
                splitNumber: 0, //刻度数量
                startAngle: 180,
                endAngle: 0,
                axisLine: {
                    lineStyle: {
                        shadowColor: 'rgba(0, 0, 0, 0.4)',
                        shadowBlur: 15,
                        color: [
                            [0.25, ['#9b9e9b']],
                            [
                                0.45, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#6fed5c'
                                },
                                    {
                                        offset: 1,
                                        color: '#b2f268'
                                    }
                                ]
                            )
                            ],
                            [
                                0.48, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#b2f268'
                                },
                                    {
                                        offset: 1,
                                        color: '#d8d563'
                                    }
                                ]
                            )
                            ],
                            [
                                0.66, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#d8d563'
                                },
                                    {
                                        offset: 1,
                                        color: '#edb168'
                                    }
                                ]
                            )
                            ],
                            [
                                0.83, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#edb168'
                                },
                                    {
                                        offset: 1,
                                        color: '#eb7742'
                                    }
                                ]
                            )
                            ],
                            [
                                1, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#eb7742'
                                },
                                    {
                                        offset: 1,
                                        color: '#e8412e'
                                    }
                                ]
                            )
                            ]
                        ]
                    }
                },
                axisLabel: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                splitLine: {
                    show: false
                },
                detail: {
                    show: false
                },
                pointer: {
                    show: true
                }
            },
            {
                name: '数值',
                type: 'gauge',
                startAngle: 180,
                endAngle: 0,
                radius: '40%',
                center: ['50%', '55%'], // 默认全局居中
                min: 0,
                max: 4,
                splitNumber: 0,
                axisLine: { // 坐标轴线
                    lineStyle: {
                        color: [
                            [1, highlight]
                        ], // 属性lineStyle控制线条样式
                        width: '1%'
                    }
                },

                axisLabel: { // 坐标轴小标记
                    show: false
                },
                splitLine: { // 分隔线
                    lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 0
                    }
                },
                pointer: { // 分隔线 指针
                    color: highlight,
                    width: '30%',
                    length: '170%'
                },
                detail: {
                    show: true
                },
                data: [{
                    name: "",
                    value: 2.5
                }]
            },
            {
                name: '遮罩',
                tooltip:{
                    show:false
                },
                type: 'pie',
                radius: '38%',
                center: ['50%', '55%'], // 默认全局居中
                hoverAnimation:false,
                itemStyle:{
                    normal:{
                        color: bgColor
                    },
                    emphasis:{
                        color: bgColor
                    }
                },
                labelLine:{
                    normal:{
                        show:false
                    }
                },
                animation:false,
                data: [2.5]
            }
        ]
    };

    var option32 = {
        title: {
            text: 'UPS输入端',
            textStyle: {
                fontSize: 10,
                color: '#000'
            }
        },
        series: [
            {
                name: '刻度',
                type: 'gauge',
                center: ['50%', '55%'], // 默认全局居中
                splitNumber: 4, //刻度数量
                min: 1,
                max: 3,
                startAngle: 180,
                endAngle: 0,
                clockwise: true,
                axisLine: {
                    show: true,
                    lineStyle: {
                        width: 2,
                        shadowBlur: 0,
                        color: [
                            [1, highlight]
                        ]
                    }
                },
                axisTick: {
                    show: true,
                    lineStyle: {
                        color: highlight,
                        width: 1
                    },
                    length: -4,
                    splitNumber: 10
                },
                splitLine: {
                    show: true,
                    length: -7,
                    lineStyle: {
                        color: highlight,
                    }
                },
                axisLabel: {
                    distance: -20,
                    textStyle: {
                        color: highlight,
                        fontSize: "14",
                        fontWeight: "bold"
                    }
                },
                pointer: { //仪表盘指针
                    show: 0
                },
                detail: {
                    show: false
                }
            },
            {
                name: '渐变标尺',
                center: ['50%', '55%'], // 默认全局居中
                type: 'gauge',
                radius: '70%',
                splitNumber: 0, //刻度数量
                startAngle: 180,
                endAngle: 0,
                axisLine: {
                    lineStyle: {
                        shadowColor: 'rgba(0, 0, 0, 0.4)',
                        shadowBlur: 15,
                        color: [
                            [0.25, ['#9b9e9b']],
                            [
                                0.45, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#6fed5c'
                                },
                                    {
                                        offset: 1,
                                        color: '#b2f268'
                                    }
                                ]
                            )
                            ],
                            [
                                0.48, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#b2f268'
                                },
                                    {
                                        offset: 1,
                                        color: '#d8d563'
                                    }
                                ]
                            )
                            ],
                            [
                                0.66, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#d8d563'
                                },
                                    {
                                        offset: 1,
                                        color: '#edb168'
                                    }
                                ]
                            )
                            ],
                            [
                                0.83, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#edb168'
                                },
                                    {
                                        offset: 1,
                                        color: '#eb7742'
                                    }
                                ]
                            )
                            ],
                            [
                                1, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#eb7742'
                                },
                                    {
                                        offset: 1,
                                        color: '#e8412e'
                                    }
                                ]
                            )
                            ]
                        ]
                    }
                },
                axisLabel: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                splitLine: {
                    show: false
                },
                detail: {
                    show: false
                },
                pointer: {
                    show: true
                }
            },
            {
                name: '数值',
                type: 'gauge',
                startAngle: 180,
                endAngle: 0,
                radius: '40%',
                center: ['50%', '55%'], // 默认全局居中
                min: 0,
                max: 4,
                splitNumber: 0,
                axisLine: { // 坐标轴线
                    lineStyle: {
                        color: [
                            [1, highlight]
                        ], // 属性lineStyle控制线条样式
                        width: '1%'
                    }
                },

                axisLabel: { // 坐标轴小标记
                    show: false
                },
                splitLine: { // 分隔线
                    lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 0
                    }
                },
                pointer: { // 分隔线 指针
                    color: highlight,
                    width: '30%',
                    length: '170%'
                },
                detail: {
                    show: true
                },
                data: [{
                    name: "",
                    value: 2.3
                }]
            },
            {
                name: '遮罩',
                tooltip:{
                    show:false
                },
                type: 'pie',
                radius: '38%',
                center: ['50%', '55%'], // 默认全局居中
                hoverAnimation:false,
                itemStyle:{
                    normal:{
                        color: bgColor
                    },
                    emphasis:{
                        color: bgColor
                    }
                },
                labelLine:{
                    normal:{
                        show:false
                    }
                },
                animation:false,
                data: [2.2]
            }
        ]
    };

    var option33 = {
        title: {
            text: 'UPS输入端',
            textStyle: {
                fontSize: 10,
                color: '#000'
            }
        },
        series: [
            {
                name: '刻度',
                type: 'gauge',
                center: ['50%', '55%'], // 默认全局居中
                splitNumber: 4, //刻度数量
                min: 1,
                max: 3,
                startAngle: 180,
                endAngle: 0,
                clockwise: true,
                axisLine: {
                    show: true,
                    lineStyle: {
                        width: 2,
                        shadowBlur: 0,
                        color: [
                            [1, highlight]
                        ]
                    }
                },
                axisTick: {
                    show: true,
                    lineStyle: {
                        color: highlight,
                        width: 1
                    },
                    length: -4,
                    splitNumber: 10
                },
                splitLine: {
                    show: true,
                    length: -7,
                    lineStyle: {
                        color: highlight,
                    }
                },
                axisLabel: {
                    distance: -20,
                    textStyle: {
                        color: highlight,
                        fontSize: "14",
                        fontWeight: "bold"
                    }
                },
                pointer: { //仪表盘指针
                    show: 0
                },
                detail: {
                    show: false
                }
            },
            {
                name: '渐变标尺',
                center: ['50%', '55%'], // 默认全局居中
                type: 'gauge',
                radius: '70%',
                splitNumber: 0, //刻度数量
                startAngle: 180,
                endAngle: 0,
                axisLine: {
                    lineStyle: {
                        shadowColor: 'rgba(0, 0, 0, 0.4)',
                        shadowBlur: 15,
                        color: [
                            [0.25, ['#9b9e9b']],
                            [
                                0.45, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#6fed5c'
                                },
                                    {
                                        offset: 1,
                                        color: '#b2f268'
                                    }
                                ]
                            )
                            ],
                            [
                                0.48, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#b2f268'
                                },
                                    {
                                        offset: 1,
                                        color: '#d8d563'
                                    }
                                ]
                            )
                            ],
                            [
                                0.66, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#d8d563'
                                },
                                    {
                                        offset: 1,
                                        color: '#edb168'
                                    }
                                ]
                            )
                            ],
                            [
                                0.83, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#edb168'
                                },
                                    {
                                        offset: 1,
                                        color: '#eb7742'
                                    }
                                ]
                            )
                            ],
                            [
                                1, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#eb7742'
                                },
                                    {
                                        offset: 1,
                                        color: '#e8412e'
                                    }
                                ]
                            )
                            ]
                        ]
                    }
                },
                axisLabel: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                splitLine: {
                    show: false
                },
                detail: {
                    show: false
                },
                pointer: {
                    show: true
                }
            },
            {
                name: '数值',
                type: 'gauge',
                startAngle: 180,
                endAngle: 0,
                radius: '40%',
                center: ['50%', '55%'], // 默认全局居中
                min: 0,
                max: 4,
                splitNumber: 0,
                axisLine: { // 坐标轴线
                    lineStyle: {
                        color: [
                            [1, highlight]
                        ], // 属性lineStyle控制线条样式
                        width: '1%'
                    }
                },

                axisLabel: { // 坐标轴小标记
                    show: false
                },
                splitLine: { // 分隔线
                    lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 0
                    }
                },
                pointer: { // 分隔线 指针
                    color: highlight,
                    width: '30%',
                    length: '170%'
                },
                detail: {
                    show: true
                },
                data: [{
                    name: "",
                    value: 2.5
                }]
            },
            {
                name: '遮罩',
                tooltip:{
                    show:false
                },
                type: 'pie',
                radius: '38%',
                center: ['50%', '55%'], // 默认全局居中
                hoverAnimation:false,
                itemStyle:{
                    normal:{
                        color: bgColor
                    },
                    emphasis:{
                        color: bgColor
                    }
                },
                labelLine:{
                    normal:{
                        show:false
                    }
                },
                animation:false,
                data: [2.5]
            }
        ]
    };

    var option34 = {
        title: {
            text: '整体能效分析',
            textStyle: {
                fontSize: 10,
                color: '#000'
            }
        },
        series: [
            {
                name: '刻度',
                type: 'gauge',
                center: ['50%', '55%'], // 默认全局居中
                splitNumber: 4, //刻度数量
                min: 1,
                max: 3,
                startAngle: 180,
                endAngle: 0,
                clockwise: true,
                axisLine: {
                    show: true,
                    lineStyle: {
                        width: 2,
                        shadowBlur: 0,
                        color: [
                            [1, highlight]
                        ]
                    }
                },
                axisTick: {
                    show: true,
                    lineStyle: {
                        color: highlight,
                        width: 1
                    },
                    length: -4,
                    splitNumber: 10
                },
                splitLine: {
                    show: true,
                    length: -7,
                    lineStyle: {
                        color: highlight,
                    }
                },
                axisLabel: {
                    distance: -20,
                    textStyle: {
                        color: highlight,
                        fontSize: "14",
                        fontWeight: "bold"
                    }
                },
                pointer: { //仪表盘指针
                    show: 0
                },
                detail: {
                    show: false
                }
            },
            {
                name: '渐变标尺',
                center: ['50%', '55%'], // 默认全局居中
                type: 'gauge',
                radius: '70%',
                splitNumber: 0, //刻度数量
                startAngle: 180,
                endAngle: 0,
                axisLine: {
                    lineStyle: {
                        shadowColor: 'rgba(0, 0, 0, 0.4)',
                        shadowBlur: 15,
                        color: [
                            [0.25, ['#9b9e9b']],
                            [
                                0.45, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#6fed5c'
                                },
                                    {
                                        offset: 1,
                                        color: '#b2f268'
                                    }
                                ]
                            )
                            ],
                            [
                                0.48, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#b2f268'
                                },
                                    {
                                        offset: 1,
                                        color: '#d8d563'
                                    }
                                ]
                            )
                            ],
                            [
                                0.66, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#d8d563'
                                },
                                    {
                                        offset: 1,
                                        color: '#edb168'
                                    }
                                ]
                            )
                            ],
                            [
                                0.83, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#edb168'
                                },
                                    {
                                        offset: 1,
                                        color: '#eb7742'
                                    }
                                ]
                            )
                            ],
                            [
                                1, new echarts.graphic.LinearGradient(
                                0, 0, 1, 0, [{
                                    offset: 0,
                                    color: '#eb7742'
                                },
                                    {
                                        offset: 1,
                                        color: '#e8412e'
                                    }
                                ]
                            )
                            ]
                        ]
                    }
                },
                axisLabel: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                splitLine: {
                    show: false
                },
                detail: {
                    show: false
                },
                pointer: {
                    show: true
                }
            },
            {
                name: '数值',
                type: 'gauge',
                startAngle: 180,
                endAngle: 0,
                radius: '40%',
                center: ['50%', '55%'], // 默认全局居中
                min: 0,
                max: 4,
                splitNumber: 0,
                axisLine: { // 坐标轴线
                    lineStyle: {
                        color: [
                            [1, highlight]
                        ], // 属性lineStyle控制线条样式
                        width: '1%'
                    }
                },

                axisLabel: { // 坐标轴小标记
                    show: false
                },
                splitLine: { // 分隔线
                    lineStyle: { // 属性lineStyle（详见lineStyle）控制线条样式
                        width: 0
                    }
                },
                pointer: { // 分隔线 指针
                    color: highlight,
                    width: '30%',
                    length: '170%'
                },
                detail: {
                    show: true
                },
                data: [{
                    name: "",
                    value: 1.69
                }]
            },
            {
                name: '遮罩',
                tooltip:{
                    show:false
                },
                type: 'pie',
                radius: '38%',
                center: ['50%', '55%'], // 默认全局居中
                hoverAnimation:false,
                itemStyle:{
                    normal:{
                        color: bgColor
                    },
                    emphasis:{
                        color: bgColor
                    }
                },
                labelLine:{
                    normal:{
                        show:false
                    }
                },
                animation:false,
                data: [1.69]
            }
        ]
    };

    eventChart1.setOption(option1);
    eventChart2.setOption(option2);

    eventChart31.setOption(option31);
    eventChart32.setOption(option32);
    eventChart33.setOption(option33);
    eventChart34.setOption(option34);

</script>

</body>

</html>