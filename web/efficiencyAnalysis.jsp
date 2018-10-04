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
    </style>

</head>

<body id="skin-blur-blue">

<!--登陆认证拦截-->
<%
    String userid = (String)session.getAttribute("userid");
    if(userid == null) {
%>
<script>
    alert('您还未登录或您的认证已过期, 请先登陆.');
    window.location.href = 'http://localhost:8082/index.jsp';

</script>

<%
    }
%>

<header id="header" class="media">
    <div class="header-left">
        <a href="" id="menu-toggle"></a>
        <a class="logo pull-left" href="province.jsp">IDP数据中心</a>
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
                                        <th><button type="button" class="btn-sm btn-alt" onClick="exportTable()" >导出</button></th>
                                        <th><button type="button" class="btn-sm btn-alt" onClick="printTable()" >打印</button></th>
                                    </tr>
                                    </thead>
                                </table>
                                <div class="row-fluid">
                                    <div class="col-md-7">
                                         <ul class="nav nav-tabs" id="detailItem">
                                             <li class="active"  style="width:33.333%">
                                                 <a data-toggle="tab" id="detailItem1">•设备事件</a>
                                             </li>
                                             <li style="width:33.333%">
                                                 <a data-toggle="tab" id="detailItem2">•电能质量事件</a>
                                             </li>
                                             <li style="width:33.333%">
                                                 <a data-toggle="tab" id="detailItem3">•环境事件</a>
                                             </li>
                                         </ul>
                                     </div>

                                    <div class="col-md-7">

                                        <!--startprint-->

                                        <div id="eventdiv1" style="display: block">
                                            <table border="1" class="display" id="device-event" style="width:100%;">
                                                <thead>
                                                <tr>
                                                    <th style="width:60px;"></th>
                                                    <th style="width:60px;">事件名称</th>
                                                    <th style="width:60px;">位置</th>
                                                    <th style="width:60px;">事件类型</th>
                                                    <th style="width:60px;">事件描述</th>
                                                    <th style="width:60px;">事件发生时间</th>
                                                </tr>
                                                </thead>
                                                <tbody id="device-event-tbody">
                                                </tbody>
                                            </table>
                                            <table border="1" class="display" id="power-event" style="width:100%;">
                                                <thead>
                                                <tr>
                                                    <th style="width:60px;"></th>
                                                    <th style="width:60px;">事件名称</th>
                                                    <th style="width:60px;">位置</th>
                                                    <th style="width:60px;">事件类型</th>
                                                    <th style="width:60px;">事件描述</th>
                                                    <th style="width:60px;">事件发生时间</th>
                                                </tr>
                                                </thead>
                                                <tbody id="power-event-tbody">
                                                </tbody>
                                            </table>
                                            <table border="1" class="display" id="environment-event" style="width:100%;">
                                                <thead>
                                                <tr>
                                                    <th style="width:60px;"></th>
                                                    <th style="width:60px;">事件名称</th>
                                                    <th style="width:60px;">位置</th>
                                                    <th style="width:60px;">事件类型</th>
                                                    <th style="width:60px;">事件描述</th>
                                                    <th style="width:60px;">事件发生时间</th>
                                                </tr>
                                                </thead>
                                                <tbody id="environment-event-tbody">
                                                </tbody>
                                            </table>
                                        </div>

                                        <!-- 电能详细事件-->
                                        <div id="eventdiv2" style="display: none">

                                            <ul class="nav nav-tabs" id="secItem" name="secItem">
                                                <li class="active" style="width:15%">
                                                    <a data-toggle="tab" id="secItem1">•浪涌塌陷</a>
                                                </li>
                                                <li style="width:15%">
                                                    <a data-toggle="tab" id="secItem2">谐波</a>
                                                </li>
                                                <li style="width:15%">
                                                    <a data-toggle="tab" id="secItem3">•三相不平衡度</a>
                                                </li>
                                                <li style="width:15%">
                                                    <a data-toggle="tab" id="secItem4">•瞬变</a>
                                                </li>
                                                <li style="width:15%">
                                                    <a data-toggle="tab" id="secItem5">•闪变</a>
                                                </li>
                                            </ul>

                                            <div id="power-event-detail-1-div" style="width:100%;">
                                                <table class="display" id="power-event-detail-1" style="width:100%;">
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
                                                    <tbody id="power-event-detail-tbody-1">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-2-div" style="width:100%;display: none;">
                                                <table class="display" id="power-event-detail-2" style="width:100%;">
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
                                                    <tbody id="power-event-detail-tbody-2">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-3-div" style="width:100%;display: none;">
                                                <table class="display" id="power-event-detail-3" style="width:100%;">
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
                                                    <tbody id="power-event-detail-tbody-3">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-4-div" style="width:100%;display: none;">
                                                <table class="display" id="power-event-detail-4" style="width:100%;">
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
                                                    <tbody id="power-event-detail-tbody-4">
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div id="power-event-detail-5-div" style="width:100%;display: none;">
                                                <table class="display" id="power-event-detail-5" style="width:100%;">
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
                                                    <a data-toggle="tab" id="fourItem1">•</a>
                                                </li>
                                                <li style="width:15%">
                                                    <a data-toggle="tab" id="fourItem2">•</a>
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

                                            <table class="display" id="device-event-detail-2" style="width:100%;display: none;">
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
                                                <tbody id="device-event-detail-tbody-2">
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
                                            <table class="display" id="place-event" border="1">
                                                <thead><tr><th>测量地点</th><th></th></tr></thead>
                                                <tbody></tbody>
                                            </table>
                                            <div><button id="add-button" type="button" class="btn-sm btn-success" onclick="addMonitorPoint()">添加</button></div>
                                            <div><button id="delete-button" type="button" class="btn-sm btn-danger" onclick="deleteMonitorPoint()">删除</button></div>
                                            <div>
                                                <span>自动更新间隔</span>
                                                <select style="display: inline-block" class="form-control location-select-item" id="auto-update-interval">
                                                    <option value="null">无</option>
                                                    <option value="1">1分</option>
                                                    <option value="10">10分</option>
                                                    <option value="60">60分</option>
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
                                                    <table class="display" id="colume-table">
                                                        <tr><td>名字</td><td>宽度</td></tr>
                                                    </table>
                                                </tr>
                                                <tr>
                                                    <img src="/img/uparray.png" alt="" onClick="upcol()" >
                                                    <img src="/img/deletearray.png" alt="" onClick="deletecol()" >
                                                    <img src="/img/downarray.png" alt="" onClick="downcol()" >
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span>可用的列</span>
                                                        <select style="display: inline-block" class="form-control location-select-item" id="useful-col">
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
                                                </tr>
                                                <tr>
                                                    <button style="display: block;" id="add-col-button" type="button" class="btn btn-sm btn-alt" onclick="getColumnItem()">添加</button>
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
                    <button onclick="confirmEvent()" type="button" class="btn btn-sm btn-alt">确认</button>
                    <button onclick="deleteEvent()" type="button" class="btn btn-sm btn-alt">删除事件</button>
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

            $(document).ready(function () {

                $("#detailItem").click(function () {
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
                });

                $("#leftsubItem1").click(function () {
                    $("#leftItem1").show();
                    $("#leftItem2").hide();
                });
                $("#leftsubItem2").click(function () {
                    $("#leftItem1").hide();
                    $("#leftItem2").show();
                });
            });
        });

        $("#subItem2").click(function () {
            $("#item1").hide();
            $("#item2").show();
        });

        $("#subItem1").click();

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
    function getDeviceEvent(){}
</script>

<!-- （详细）电能事件-点击进入第二个页面-->
<script type="text/javascript">
    function getPowerEvent(){

        var cbname = $("#city_code option:selected").val();
        var edate = $("input[name='event-data-peroid']:checked").val();
        var stime;
        var etime;
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

        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'block');
        $('#eventdiv3').css('display', 'none');

        $.ajax({
            type: "post",
            url: "getDetailPowerEventlytx",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
               // var table = $("#power-event-detail-1");
                var tbody = $("#power-event-detail-tbody-1")[0];
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
            url: "getDetailPowerEventxb",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
               // var table = $("#power-event-detail-2");
                var tbody = $("#power-event-detail-tbody-2")[0];
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
            url: "getDetailPowerEventsxbph",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
               // var table = $("#power-event-detail-3");
                var tbody = $("#power-event-detail-tbody-3")[0];
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
            url: "getDetailPowerEventshunbian",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
               // var table = $("#power-event-detail-4");
                var tbody = $("#power-event-detail-tbody-4")[0];
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
            url: "getDetailPowerEventshanbian",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
               // var table = $("#power-event-detail-5");
                var tbody = $("#power-event-detail-tbody-5")[0];
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
</script>

<!-- （详细）环境事件-点击进入第二个页面-->
<script type="text/javascript">
    function getEvironmentEvent(){

        var cbname = $("#city_code option:selected").val();
        var edate = $("input[name='event-data-peroid']:checked").val();
        var stime;
        var etime;
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

        $('#eventdiv1').css('display', 'none');
        $('#eventdiv2').css('display', 'none');
        $('#eventdiv3').css('display', 'block');

        $.ajax({
            type: "post",
            url: "getDetailEvironmentEventtemp",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
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
                cbname: cbname
            },
            dataType : "json",
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

    //根据时间、检测银行设置获得所有事件
    function getAllEvent() {

        var cbname = $("#city_code option:selected").val();
        var edate = $("input[name='event-data-peroid']:checked").val();

        var stime;//"2018-08-22 08:00:00";
        var etime;//"2018-08-29 08:00:00";
        var nowtime = getNowFormatDate();

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
        if (priortylist == null) {
            alert("请先设定可查看的事件类型");
        }
        else{
            $.ajax({ //获取所有电能事件
            type: "post",
            url: "getPowerEvent",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname,
                priortylist: priortylist
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
               // var table = $("#power-event");
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

                    tbody.innerHTML += ('<tr>' + '<td name="teid" id="teid" style="width:60px;" value='+ teid[1]+'></td>' +
                        '<td id="name" style="width:60px;">' + name + '</td>' +
                        '<td style="width:60px;">' + location + '</td>' +
                        '<td style="width:60px;">' + type + '</td>' +
                        '<td style="width:60px;">' + description + '</td>' +
                        '<td style="width:60px;">' + time + '</td></tr>');
                }
            }
        });
        }

        //获取所有设备事件
        //设备事件

        //获取所有环境事件
        $.ajax({
            type: "post",
            url: "getEnvironmentEvent",
            data: {
                stime: stime,
                etime: etime,
                cbname: cbname
            },
            dataType : "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj['allpelist'];
                var table = $("#environment-event");
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

                    tbody.innerHTML += ('<tr>' + '<td name="teid" id="teid" value='+ teid[1]+'>' + '</td>' +
                        '<td id="name" style="padding-left:60px;">' + name + '</td><td style="padding-left:60px;">' + location + '</td>' +
                        '<td style="padding-left:60px;">' + type + '</td><td style="padding-left:60px;">' + description + '</td>' +
                        '<td style="padding-left:60px;">' + time + '</td><td style="padding-left:60px;">' + '</td></tr>');
                }
            }
        });

    }

</script>

<!-- 观测地点-->
<script type="text/javascript">
    //添加监测点
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

    function addCityBankAsMonitorPoint(){

        //取得所有选中的节点，返回节点对象的集合
        var nodes = $("#citybank-jstree").jstree("get_checked"); //使用get_checked方法
        var nodes2 = nodes.toString();
        var nodeset = nodes2.split(",");
        var ptable = $("#place-event");

        for (var i = 0 ;i < nodeset.length; i++)
        {
            var nset = new Array();
            nset = nodeset[i].split(":");
            ptable.append('<tr><td><input id="radio-mpid" name="radio-mpid" type="radio" value="'+nset[0]+'"></td><td>' + nset[1] + '</td></tr>');
        }

        cancleCityBankAsMonitorPoint();
    }

    function cancleCityBankAsMonitorPoint(){
        $('#addEventMonitorPoint-modal').css('display', 'none');
    }

    //删除检测点
    function deleteMonitorPoint(){
        var delmpid = $('input[name="radio-mpid"]:checked').val();

    }

</script>

<!-- 右侧界面 第二个子菜单 列 -->
<script type="text/javascript">

    //初始化cookie中的列
    $(document).ready(function() {
        $. cookie('row1-name', '测量名称', {expires: 1, path: '/'});
        $. cookie('row1-val', '100', {expires: 1, path: '/'});
        $. cookie('row2-name', '时间', {expires: 1, path: '/'});
        $. cookie('row2-val', '132', {expires: 1, path: '/'});
        $. cookie('row3-name', '类型', {expires: 1, path: '/'});
        $. cookie('row3-val', '50', {expires: 1, path: '/'});
        $. cookie('row4-name', '触发相位', {expires: 1, path: '/'});
        $. cookie('row4-val', '50', {expires: 1, path: '/'});
        $. cookie('row5-name', '时间长短', {expires: 1, path: '/'});
        $. cookie('row5-val', '60', {expires: 1, path: '/'});
        $. cookie('row6-name', '深度', {expires: 1, path: '/'});
        $. cookie('row6-val', '60', {expires: 1, path: '/'});
        $. cookie('row7-name', '方向', {expires: 1, path: '/'});
        $. cookie('row7-val', '10', {expires: 1, path: '/'});
        /*$. cookie('row8-name', '触发相位数', {expires: 1, path: '/'});
        $. cookie('row8-val', '10', {expires: 1, path: '/'});
        $. cookie('row9-name', '评论', {expires: 1, path: '/'});
        $. cookie('row9-val', '100', {expires: 1, path: '/'});
        $. cookie('row10-name', '签名', {expires: 1, path: '/'});
        $. cookie('row10-val', '100', {expires: 1, path: '/'});*/

        var coltable = $("#colume-table");

        coltable.append(
            '<tr><td>'+$. cookie('row1-name')+'</td><td>'+$. cookie('row1-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row2-name')+'</td><td>'+$. cookie('row2-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row3-name')+'</td><td>'+$. cookie('row3-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row4-name')+'</td><td>'+$. cookie('row4-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row5-name')+'</td><td>'+$. cookie('row5-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row6-name')+'</td><td>'+$. cookie('row6-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row7-name')+'</td><td>'+$. cookie('row7-val')+'</td></tr>' );//+
            /*'<tr><td>'+$. cookie('row8-name')+'</td><td>'+$. cookie('row8-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row9-name')+'</td><td>'+$. cookie('row9-val')+'</td></tr>' +
            '<tr><td>'+$. cookie('row10-name')+'</td><td>'+$. cookie('row10-val')+'</td></tr>');*/
    });

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

        $.ajax({
            type: "post",
            url: "addSignatureAndAnnotation",
            dataType: "json",
            data:{
                teid: teid,
                sign: sign,
                annot: annot
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
        //getPowerEvent();
        //刷新设备类型事件的
        //刷新环境类型事件的
    }
</script>

<!-- 导出-->
<script type="text/javascript">

    function exportTable(){
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
        }
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
                print("Nested catch caught " + e);
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

           /* var powertable = $('#power-event').DataTable({
                "info":           false,
                "scrollY":        "260px",
                "scrollCollapse": true,
                "paging":         false,
                "dom":            "lBrtip"
            });*/
            //点击table中的某一行
            $('#power-event tbody').on('click', 'tr', function (){
                $(this).toggleClass('selected');
                selectOneRowEvent(this);
            });

            /* $('#environment-event').DataTable({
                "info":           false,
                "scrollY":        "260px",
                "scrollCollapse": true,
                "paging":         false,
                "dom":            "lBrtip"
            });*/
            //点击table中的某一行
            $('#environment-event tbody').on('click', 'tr', function (){
                $(this).toggleClass('selected');
                selectOneRowEvent(this);
            });

             /*
            $('#place-event').DataTable({
                "info":           false,
                "scrollY":        "120px",
                "scrollCollapse": true,
                "paging":         false,
                "ordering":       false,
                "dom":            "lBrtip"
            });*/

            //点击table中的某一行
            $('#place-event tbody').on('change', 'tr', function (){
                //alert("mp:"+ this);
            });

            /*  //列栏表
            $('#colume-table').DataTable({
                "info":           false,
                "dom":            "lBrtip"
            });
*/

            //获取某一行选择的行，将该行的id放入某个隐藏的div中
            function selectOneRowEvent(rowdata){
                $('#clickEventRow-modal').css('display', 'block');
                var row = rowdata;
                var cols = row.childNodes;
                var teid = cols[0].innerText;
                $('#select-teid').val(teid);

            }

            //点击单条事件-删除事件（假删除，只是前端不显示）
            function deleteEvent(){
                var id = $('#select-teid').val();
                $('#clickEventRow-modal').css('display', 'none');

                powertable.row($(id).parents('tr')).remove().draw();
            }
           /* //第二个事件页面
            $('#power-event-detail-1').DataTable({
                "info":           true,
                "scrollY":        "800px",
                "scrollCollapse": true,
                "pagingType":     "full_numbers",
                "dom":            "lBrtip",
                "columnDefs": [{"targets": [ 1 ], "visible": (col1)? true : false},
                    {"targets": [ 2 ], "visible": (col2)? true : false},
                    {"targets": [ 3 ], "visible": (col3)? true : false},
                    {"targets": [ 4 ], "visible": (col4)? true : false},
                    {"targets": [ 5 ], "visible": (col5)? true : false},
                    {"targets": [ 6 ], "visible": (col6)? true : false},
                    {"targets": [ 7 ], "visible": (col7)? true : false},
                    {"targets": [ 8 ], "visible": (col8)? true : false},
                    {"targets": [ 9 ], "visible": (col9)? true : false},
                    {"targets": [ 10 ], "visible": (col10)? true : false}
                ]
            });

            $('#power-event-detail-2').DataTable({
                "info":           true,
                "scrollY":        "800px",
                "scrollCollapse": true,
                "pagingType":     "full_numbers",
                "dom":            "lBrtip",
                "columnDefs": [{"targets": [ 1 ], "visible": (col1)? true : false},
                    {"targets": [ 2 ], "visible": (col2)? true : false},
                    {"targets": [ 3 ], "visible": (col3)? true : false},
                    {"targets": [ 4 ], "visible": (col4)? true : false},
                    {"targets": [ 5 ], "visible": (col5)? true : false},
                    {"targets": [ 6 ], "visible": (col6)? true : false},
                    {"targets": [ 7 ], "visible": (col7)? true : false},
                    {"targets": [ 8 ], "visible": (col8)? true : false},
                    {"targets": [ 9 ], "visible": (col9)? true : false},
                    {"targets": [ 10 ], "visible": (col10)? true : false}
                ]
            });

            $('#power-event-detail-3').DataTable({
                "info":           true,
                "scrollY":        "800px",
                "scrollCollapse": true,
                "pagingType":     "full_numbers",
                "dom":            "lBrtip",
                "columnDefs": [{"targets": [ 1 ], "visible": (col1)? true : false},
                    {"targets": [ 2 ], "visible": (col2)? true : false},
                    {"targets": [ 3 ], "visible": (col3)? true : false},
                    {"targets": [ 4 ], "visible": (col4)? true : false},
                    {"targets": [ 5 ], "visible": (col5)? true : false},
                    {"targets": [ 6 ], "visible": (col6)? true : false},
                    {"targets": [ 7 ], "visible": (col7)? true : false},
                    {"targets": [ 8 ], "visible": (col8)? true : false},
                    {"targets": [ 9 ], "visible": (col9)? true : false},
                    {"targets": [ 10 ], "visible": (col10)? true : false}
                ]
            });

            $('#power-event-detail-4').DataTable({
                "info":           true,
                "scrollY":        "800px",
                "scrollCollapse": true,
                "pagingType":     "full_numbers",
                "dom":            "lBrtip",
                "columnDefs": [{"targets": [ 1 ], "visible": (col1)? true : false},
                    {"targets": [ 2 ], "visible": (col2)? true : false},
                    {"targets": [ 3 ], "visible": (col3)? true : false},
                    {"targets": [ 4 ], "visible": (col4)? true : false},
                    {"targets": [ 5 ], "visible": (col5)? true : false},
                    {"targets": [ 6 ], "visible": (col6)? true : false},
                    {"targets": [ 7 ], "visible": (col7)? true : false},
                    {"targets": [ 8 ], "visible": (col8)? true : false},
                    {"targets": [ 9 ], "visible": (col9)? true : false},
                    {"targets": [ 10 ], "visible": (col10)? true : false}
                ]
            });

            $('#power-event-detail-5').DataTable({
                "info":           true,
                "scrollY":        "800px",
                "scrollCollapse": true,
                "pagingType":     "full_numbers",
                "dom":            "lBrtip",
                "columnDefs": [{"targets": [ 1 ], "visible": (col1)? true : false},
                    {"targets": [ 2 ], "visible": (col2)? true : false},
                    {"targets": [ 3 ], "visible": (col3)? true : false},
                    {"targets": [ 4 ], "visible": (col4)? true : false},
                    {"targets": [ 5 ], "visible": (col5)? true : false},
                    {"targets": [ 6 ], "visible": (col6)? true : false},
                    {"targets": [ 7 ], "visible": (col7)? true : false},
                    {"targets": [ 8 ], "visible": (col8)? true : false},
                    {"targets": [ 9 ], "visible": (col9)? true : false},
                    {"targets": [ 10 ], "visible": (col10)? true : false}
                ]
            });*/

</script>

</body>

</html>