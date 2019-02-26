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
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <link href="css/menu.css" rel="stylesheet">
    <link href="css/mycss.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css">
    <link href="css/buttons.css" rel="stylesheet">
    <!-- bootstrap datepicker时间选择控件 -->
    <link href="bootstrap-timepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- jquery -->
    <script type="text/javascript" src="bootstrap-timepicker/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <style>
        .datetimepicker {
            background: black!important;
        }
    </style>
</head>

<body id="skin-blur-blue">

<!--告警弹窗-->
<script type="text/javascript" src = "js/websocketconnect.js"></script>

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>

<!-- PNotify -->
<script type="text/javascript" src="js/pnotify.custom.min.js"></script>
<link href="css/pnotify.custom.min.css" rel="stylesheet" type="text/css" />

<!-- 时间选择器-->
<script type="text/javascript" src="bootstrap-timepicker/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap-timepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap-timepicker/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

<%
    if(session.isNew()) {
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
        <img src="img/index/logo.png" alt="" class="header-img">
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

            <div class="block-area" style="position:relative;">

                <div id="searching" style="display: none;position:absolute;z-index: 999; left:400px;top:200px;"><img src="img/index/loading.gif"></div>

                <div class="row" style="position:absolute;z-index: 0;width: 100%;">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li class="active" style="width:25%">
                                <a data-toggle="tab" id="subItem3">•综合项目统计报表</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem2">•谐波电流统计报表</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem1">•谐波电压统计报表</a>
                            </li>
                            <li style="width:25%">
                              <%--  <a data-toggle="tab" id="subItem4">•谐波电压、谐波电流合格率统计报表</a>--%>
                            </li>
                        </ul>
                        <div class="block-area" id="defaultStyle" style="background: white;">
                            <div class="row">
                                <div class="col-md-2" style="color:black;">
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label for="item2-menu" class="form-label">报表：</label>
                                            <select id="item2-menu" name="item2-menu" class="form-control" style="width:100px;background: #999;">
                                                <option value="item2-1">日报表</option>
                                                <option value="item2-2">自定义报表</option>
                                            </select>
                                        </div>
                                    </form>
                                </div>
                                <div id="div-time1" class="col-md-2" style="color:black;">
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label for="date" class="form-label" style="padding-top:10px;">时间：</label>
                                            <div style="background: #999;border-radius:5px 5px 5px 5px;" class="input-group date form_datetime" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                <input id="date" class="form-control" size="16" type="text" value="" readonly>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                            </div>
                                            <input type="hidden" id="dtp_input1" value=""/>
                                        </div>
                                    </form>
                                </div>

                                <div id="div-time2" class="col-md-2" style="color:black; display:none;">
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label for="date" class="form-label" style="padding-top:10px;">开始</label>
                                            <div style="background: #999;border-radius:5px 5px 5px 5px;" class="input-group date form_datetime" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                <input id="date_start" class="form-control" size="16" type="text" value="" readonly>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                            </div>
                                            <input type="hidden" id="dtp_input_start" value=""/>
                                        </div>
                                        <div class="form-group">
                                            <label for="date" class="form-label" style="padding-top:10px;">结束</label>
                                            <div style="background: #999;border-radius:5px 5px 5px 5px;" class="input-group date form_datetime" data-date-format="yyyy-mm-dd hh:ii:ss" data-link-field="dtp_input1">
                                                <input id="date_end" class="form-control" size="16" type="text" value="" readonly>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                            </div>
                                            <input type="hidden" id="dtp_input_end" value=""/>
                                        </div>
                                    </form>
                                </div>

                                <div class="col-md-2" style="color:black;padding-left:90px;">
                                    <form class="form-inline" role="form">
                                        <div class="form-group">
                                            <label for="his-mpid-select" class="form-label">装置名称：</label>
                                            <select class="form-control" style="width:120px; background: #999; border-radius:5px 5px 5px 5px;" name="his-mpid-select" id="his-mpid-select"
                                                    onclick="getMonitorPoints()">
                                            </select>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="item1" style="background: white; border-radius: 0 0 15px 15px; color:black;">
                            <div class="block-area">
                                <div class="row">
                                    <div class="col-md-7" style="text-align:right">
                                        <form class="form-inline" role="form">
                                            <div class="form-group">
                                                <button id="searchHV1-button" type="button" class="button-primary button-pill button-small" onclick="searchHV()">查询</button>
                                                <button id="searchHV2-button" style="display:none;" type="button" class="button-primary button-pill button-small" onclick="searchHV2()">查询</button>
                                                <button type="button" class="button-primary button-pill button-small" onclick="exportHVtable()">导出</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <table border="1" id="hvtable" style="color:black;">
                                        <tr>
                                            <td style="text-align:center" rowspan="2">参数</td>
                                            <td style="text-align:center" colspan="5">A相</td>
                                            <td style="text-align:center" colspan="5">B相</td>
                                            <td style="text-align:center" colspan="5">C相</td>
                                            <td style="text-align:center" rowspan="2">限值</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">基波电压(V)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">2次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">3次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">4次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">5次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">6次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">7次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">8次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">9次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">10次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">11次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">12次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">13次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">14次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">15次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">16次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">17次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">18次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">19次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">20次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">21次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">22次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">23次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">24次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">25次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">26次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">27次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">28次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">29次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">30次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">31次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">32次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">33次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">34次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">35次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">36次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">37次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">38次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">39次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">40次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">41次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">42次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">43次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">44次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">45次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">46次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">47次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">48次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">49次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">50次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="item2" style="background: white; border-radius: 0 0 15px 15px; color:black;">
                            <div class="block-area">
                                <div class="row">
                                    <div class="col-md-7" style="text-align:right">
                                        <form class="form-inline" role="form">
                                            <div class="form-group">
                                                <button id="searchHC1-button" type="button" class="button-primary button-pill button-small" onclick="searchHC()">查询</button>
                                                <button id="searchHC2-button" style="display:none;" type="button" class="button-primary button-pill button-small" onclick="searchHC2()">查询</button>
                                                <button type="button" class="button-primary button-pill button-small" onclick="exportHCtable()">导出</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <table border="1" id="hctable" style="color:black;">
                                        <tr>
                                            <td style="text-align:center" rowspan="2">参数</td>
                                            <td style="text-align:center" colspan="5">A相</td>
                                            <td style="text-align:center" colspan="5">B相</td>
                                            <td style="text-align:center" colspan="5">C相</td>
                                            <td style="text-align:center" rowspan="2">限值</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">基波电流(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">2次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">3次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">4次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">5次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">6次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">7次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">8次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">9次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">10次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">11次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">12次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">13次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">14次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">15次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">16次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">17次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">18次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">19次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">20次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">21次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">22次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">23次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">24次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">25次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">26次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">27次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">28次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">29次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">30次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">31次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">32次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">33次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">34次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">35次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">36次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">37次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">38次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">39次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">40次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">41次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">42次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">43次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">44次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">45次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">46次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">47次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">48次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">49次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">50次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="item3" style="background: white; border-radius: 0 0 15px 15px; color:black;">
                            <div class="block-area">
                                <div class="row">
                                    <div class="col-md-8" style="text-align:right">
                                        <form class="form-inline" role="form">
                                            <div class="form-group">
                                                <button id="searchSynthesis1-button" type="button" class="button-primary button-pill button-small" onclick="searchSynthesis()">查询</button>
                                                <button id="searchSynthesis2-button" style="display:none;" type="button" class="button-primary button-pill button-small" onclick="searchSynthesis2()">查询</button>
                                                <button type="button" class="button-primary button-pill button-small" onclick="searchHis()">导出</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <table border="1" id="syntable" style="color:black;">
                                        <tr>
                                            <td style="text-align:center">参数</td>
                                            <td style="text-align:center" colspan="2">最大值</td>
                                            <td style="text-align:center" colspan="3">最小值</td>
                                            <td style="text-align:center" colspan="2">平均值</td>
                                            <td style="text-align:center" colspan="3">95%概率值</td>
                                            <td style="text-align:center" colspan="2">限值</td>
                                            <td style="text-align:center" colspan="4">结论</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">频率(Hz)</td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="3"></td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="3"></td>
                                            <td style="text-align:center" colspan="2">-</td>
                                            <td style="text-align:center" colspan="4">-</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">频率偏差(Hz)</td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="3"></td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="3"></td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="4"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">三相电压不平衡度(%)</td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="3"></td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="3"></td>
                                            <td style="text-align:center" colspan="2"></td>
                                            <td style="text-align:center" colspan="4"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center" rowspan="2">参数</td>
                                            <td style="text-align:center" colspan="5">A相</td>
                                            <td style="text-align:center" colspan="5">B相</td>
                                            <td style="text-align:center" colspan="5">C相</td>
                                            <td style="text-align:center" rowspan="2">限值</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                            <td style="text-align:center">最大值</td>
                                            <td style="text-align:center">最小值</td>
                                            <td style="text-align:center">平均值</td>
                                            <td style="text-align:center">95%概率值</td>
                                            <td style="text-align:center">结论</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">短时间电压闪变</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">长时间电压闪变</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">电压偏差(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">有功功率(KW)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center">-</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">无功功率(KVar)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center">-</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">功率因数</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">-</td>
                                            <td style="text-align:center">-</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">电压总谐波畸变率</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">电流总谐波畸变率</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                      <%--  <div id="item4" style="background: white; border-radius: 0 0 15px 15px; color:black;">
                            <div class="block-area">
                                <div class="row">
                                    <div class="col-md-8" style="text-align:right">
                                        <form class="form-inline" role="form">
                                            <div class="form-group">
                                                <button id="searchHVCrate1-button" type="button" class="button-primary button-pill button-small" onclick="searchHVCrate()">查询</button>
                                                <button id="searchHVCrate2-button" style="display:none;" type="button" class="button-primary button-pill button-small" onclick="searchHVCrate2()">查询</button>
                                                <button type="button" class="button-primary button-pill button-small" onclick="exportHVCRateTable()">导出</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <table border="1" id="hvcRateTable" style="color:black;">
                                        <tr>
                                            <td style="text-align:center" rowspan="2">参数</td>
                                            <td style="text-align:center" colspan="2">A相</td>
                                            <td style="text-align:center" colspan="2">B相</td>
                                            <td style="text-align:center" colspan="2">C相</td>
                                            <td style="text-align:center" rowspan="2">参数</td>
                                            <td style="text-align:center" colspan="2">A相</td>
                                            <td style="text-align:center" colspan="2">B相</td>
                                            <td style="text-align:center" colspan="2">C相</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">采样点数</td>
                                            <td style="text-align:center">合格率(%)</td>
                                            <td style="text-align:center">采样点数</td>
                                            <td style="text-align:center">合格率(%)</td>
                                            <td style="text-align:center">采样点数</td>
                                            <td style="text-align:center">合格率(%)</td>
                                            <td style="text-align:center">采样点数</td>
                                            <td style="text-align:center">合格率(%)</td>
                                            <td style="text-align:center">采样点数</td>
                                            <td style="text-align:center">合格率(%)</td>
                                            <td style="text-align:center">采样点数</td>
                                            <td style="text-align:center">合格率(%)</td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">基波电压(V)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">基波电流(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">2次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">2次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">3次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">3次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">4次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">4次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">5次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">5次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">6次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">6次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">7次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">7次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">8次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">8次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">9次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">9次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">10次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">10次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">11次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">11次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">12次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">12次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">13次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">13次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">14次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">14次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">15次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">15次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">16次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">16次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">17次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">17次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">18次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">18次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">19次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">19次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">20次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">20次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">21次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">21次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">22次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">22次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">23次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">23次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">24次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">24次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">25次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">25次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">26次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">26次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">27次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">27次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">28次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">28次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">29次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">29次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">30次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">30次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">31次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">31次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">32次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">32次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">33次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">33次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">34次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">34次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">35次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">35次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">36次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">36次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">37次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">37次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">38次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">38次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">39次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">39次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">40次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">40次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">41次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">41次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">42次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">42次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">43次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">43次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">44次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">44次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">45次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">45次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">46次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">46次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">47次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">47次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">48次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">48次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">49次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">49次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center">50次(%)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center">50次(A)</td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                            <td style="text-align:center"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>

        </section>
        <br/>
        <br/>
    </section>

    <!-- Javascript Libraries -->
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
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

    <!-- 切换子菜单-->
    <script type="text/javascript">
        $("#item3").show();
        $("#item2").hide();
        $("#item1").hide();
        $("#item4").hide();

        $(document).ready(function () {
            $("#subItem1").click(function () {
                $("#item1").show();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
            });
            $("#subItem2").click(function () {
                $("#item1").hide();
                $("#item2").show();
                $("#item3").hide();
                $("#item4").hide();
            });
            $("#subItem3").click(function () {
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").show();
                $("#item4").hide();
            });
            $("#subItem4").click(function () {
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").show();
            });
        });
    </script>

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
<script>
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
       /* else if(cbidstr[i] == " efficiencyDevice.jsp"){
            isSystemMng = false;
            menuname = "动力设施";
        }*/
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

<!-- 事件选择器 -->
<script type="text/javascript">
    <!-- 时间选择器-->
    $('.form_datetime').datetimepicker({
        language: 'cn',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });

    $("#date").change(function () {
        $('.date').datetimepicker('setStartDate', $(this).val());
    });
    $("#date_start").change(function () {
        $('.date_start').datetimepicker('setEndDate', $(this).val());
    });
    $("#date_end").change(function () {
        $('.date_end').datetimepicker('setEndDate', $(this).val());
    });

    $("#date").val(getFormatDate(0));
    $("#date_start").val(getFormatDate(-1));
    $("#date_end").val(getFormatDate(0));

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

    //初始化 默认 监测点 start//////////////////
    var flag = 1;
    setInterval(function () {

        var computerroom = $("#comproom_code option:selected").val();
        var mpcname = $("#his-mpid-select").val();

        if(computerroom != "" && flag == 1 && !mpcname) {
            getDefaultMonitorPoints();
            flag = 2;
        }
    }, 500);

    function getDefaultMonitorPoints(){

        var computerroom = $("#comproom_code option:selected").val();
        var mpcname = $("#his-mpid-select").val();
        if (!mpcname) {
            var hisvalue = $('#his-mpid-select').val();

            if(hisvalue == null) {
                $.ajax({
                    type: "post",
                    url: "getMonitorPoints",
                    data: {
                        computerroom: computerroom
                    },
                    dataType: "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.allmpdata;
                        for (var i = 0; i < rt.length; i++) {
                            if (i == 0)
                                $('#his-mpid-select').append("<option value='" + rt[i].did + "' selected='selected'>" + rt[i].name + "</option>");
                            else
                                $('#his-mpid-select').append("<option value='" + rt[i].did + "' >" + rt[i].name + "</option>");
                        }
                    }
                });
            }
        }

    }
    //初始化 默认 监测点 end/////////////////

    //获取检测点列表
    function getMonitorPoints() {
        var computerroom = $("#comproom_code option:selected").val();
        var mpcname = $("#his-mpid-select").val();
        if(!computerroom){
            alert("请先选择机房，再选择检测点");
        }
        else if (!mpcname) {
            var hisvalue = $('#his-mpid-select').val();

            if(hisvalue == null) {
                $.ajax({
                    type: "post",
                    url: "getMonitorPoints",
                    data: {
                        computerroom: computerroom
                    },
                    dataType: "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.allmpdata;
                        for (var i = 0; i < rt.length; i++) {
                            if (i == 0)
                                $('#his-mpid-select').append("<option value='" + rt[i].did + "' selected='selected'>" + rt[i].name + "</option>");
                            else
                                $('#his-mpid-select').append("<option value='" + rt[i].did + "' >" + rt[i].name + "</option>");
                        }
                    }
                });
            }
        }
    }

    //切换报表日报表、自定义报表
    $("#item2-menu").change(function(){
        var opt = $("#item2-menu").val();

        if(opt == "item2-1") {
            $("#div-time1").css('display', 'inline-block');
            $("#div-time2").css('display', 'none');
            $("#searchHV1-button").css('display', 'inline-block');
            $("#searchHV2-button").css('display', 'none');
            $("#searchHC1-button").css('display', 'inline-block');
            $("#searchHC2-button").css('display', 'none');
            $("#searchSynthesis1-button").css('display', 'inline-block');
            $("#searchSynthesis2-button").css('display', 'none');
            $("#searchHVCrate1-button").css('display', 'inline-block');
            $("#searchHVCrate2-button").css('display', 'none');
        } else if(opt == "item2-2"){
            $("#div-time1").css('display', 'none');
            $("#div-time2").css('display', 'inline-block');
            $("#searchHV1-button").css('display', 'none');
            $("#searchHV2-button").css('display', 'inline-block');
            $("#searchHC1-button").css('display', 'none');
            $("#searchHC2-button").css('display', 'inline-block');
            $("#searchSynthesis1-button").css('display', 'none');
            $("#searchSynthesis2-button").css('display', 'inline-block');
            $("#searchHVCrate1-button").css('display', 'none');
            $("#searchHVCrate2-button").css('display', 'inline-block');
        }
    });
</script>


<!-- 查询谐波电压 -->
<script type="text/javascript">
    function searchHV() {
        var time = $("#date").val();
        var did = $('#his-mpid-select').val();
        var date = time.substring(0,10);

        if(time == ""){
            alert("请选择时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(time && did){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getHarmonicVoltage",
                data: {
                    time:date,
                    did:did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var temp_result= obj.hvresult;
                    var temp_threshold = obj.thresholdResult;
                    var temp_vcfund = obj.vcfund;
                    var table = document.getElementById('hvtable');

                    for (var j=0;j<49*3;j++) {
                        var threshold = temp_threshold[j].split(",");
                        if(threshold[1]=='a') {
                            if (threshold[2] == 'null') {
                                table.rows[threshold[0]].cells[16].innerHTML = "";
                            } else {
                               // table.rows[threshold[0]].cells[16].innerHTML = threshold[2];
                                table.rows[threshold[0]].cells[16].innerHTML = "";
                            }
                        }
                    }

                    for (var i = 0; i < temp_result.length; i++) {
                        var result= temp_result[i].split(",");
                        if(result[1]=='a'){
                            table.rows[result[0]].cells[1].innerHTML = result[2];
                            table.rows[result[0]].cells[2].innerHTML = result[3];
                            table.rows[result[0]].cells[3].innerHTML = result[4];
                            table.rows[result[0]].cells[4].innerHTML = result[5];
                        }
                        else if(result[1]=='b'){
                            table.rows[result[0]].cells[6].innerHTML = result[2];
                            table.rows[result[0]].cells[7].innerHTML = result[3];
                            table.rows[result[0]].cells[8].innerHTML = result[4];
                            table.rows[result[0]].cells[9].innerHTML = result[5];
                        }
                        else if(result[1]=='c'){
                            table.rows[result[0]].cells[11].innerHTML = result[2];
                            table.rows[result[0]].cells[12].innerHTML = result[3];
                            table.rows[result[0]].cells[13].innerHTML = result[4];
                            table.rows[result[0]].cells[14].innerHTML = result[5];
                        }
                    }

                    for (var k=0;k<temp_vcfund.length;k++) {
                        var vcfund = temp_vcfund[k].split(",");
                        if(vcfund[0]=='u1'){
                            table.rows[2].cells[1].innerHTML = vcfund[1];
                            table.rows[2].cells[2].innerHTML = vcfund[2];
                            table.rows[2].cells[3].innerHTML = vcfund[3];
                            table.rows[2].cells[4].innerHTML = vcfund[4];
                        }
                        if(vcfund[0]=='u2'){
                            table.rows[2].cells[6].innerHTML = vcfund[1];
                            table.rows[2].cells[7].innerHTML = vcfund[2];
                            table.rows[2].cells[8].innerHTML = vcfund[3];
                            table.rows[2].cells[9].innerHTML = vcfund[4];
                        }
                        if(vcfund[0]=='u3'){
                            table.rows[2].cells[11].innerHTML = vcfund[1];
                            table.rows[2].cells[12].innerHTML = vcfund[2];
                            table.rows[2].cells[13].innerHTML = vcfund[3];
                            table.rows[2].cells[14].innerHTML = vcfund[4];
                        }
                    }
                    table.rows[2].cells[16].innerHTML = '-';
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                },
                error:function(data){
                    alert("Error!5555");
                }
            });
        }
    }

    function searchHV2() {
        var stime = $("#date_start").val();
        var etime = $("#date_end").val();
        var did = $('#his-mpid-select').val();

        if(stime == ""){
            alert("请选择开始时间");
        } else if(etime == ""){
            alert("请选择结束时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(did && stime && etime){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getHarmonicVoltage2",
                data: {
                    stime: stime,
                    etime: etime,
                    did: did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var temp_result= obj.hvresult;
                    var temp_threshold = obj.thresholdResult;
                    var temp_vcfund = obj.vcfund;
                    var table = document.getElementById('hvtable');

                    for (var j=0;j<49*3;j++) {
                        var threshold = temp_threshold[j].split(",");
                        if(threshold[1]=='a') {
                            if (threshold[2] == 'null') {
                                table.rows[threshold[0]].cells[16].innerHTML = "";
                            } else {
                                table.rows[threshold[0]].cells[16].innerHTML = threshold[2];
                            }
                        }
                    }

                    for (var i = 0; i < temp_result.length; i++) {
                        var result= temp_result[i].split(",");
                        if(result[1]=='a'){
                            table.rows[result[0]].cells[1].innerHTML = result[2];
                            table.rows[result[0]].cells[2].innerHTML = result[3];
                            table.rows[result[0]].cells[3].innerHTML = result[4];
                            table.rows[result[0]].cells[4].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)) {
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        else if(result[1]=='b'){
                            table.rows[result[0]].cells[6].innerHTML = result[2];
                            table.rows[result[0]].cells[7].innerHTML = result[3];
                            table.rows[result[0]].cells[8].innerHTML = result[4];
                            table.rows[result[0]].cells[9].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)){
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else{
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        else if(result[1]=='c'){
                            table.rows[result[0]].cells[11].innerHTML = result[2];
                            table.rows[result[0]].cells[12].innerHTML = result[3];
                            table.rows[result[0]].cells[13].innerHTML = result[4];
                            table.rows[result[0]].cells[14].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == ""){
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)){
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else{
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    for (var k=0;k<temp_vcfund.length;k++) {
                        var vcfund = temp_vcfund[k].split(",");
                        if(vcfund[0]=='u1'){
                            table.rows[2].cells[1].innerHTML = vcfund[1];
                            table.rows[2].cells[2].innerHTML = vcfund[2];
                            table.rows[2].cells[3].innerHTML = vcfund[3];
                            table.rows[2].cells[4].innerHTML = vcfund[4];
                          /*  if(vcfund[5] == '合格')
                                table.rows[2].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[5].innerHTML = '<span style="color: red;">不合格</span>';*/
                        }
                        if(vcfund[0]=='u2'){
                            table.rows[2].cells[6].innerHTML = vcfund[1];
                            table.rows[2].cells[7].innerHTML = vcfund[2];
                            table.rows[2].cells[8].innerHTML = vcfund[3];
                            table.rows[2].cells[9].innerHTML = vcfund[4];
                          /*  if(vcfund[5] == '合格')
                                table.rows[2].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[10].innerHTML = '<span style="color: red;">不合格</span>';*/
                        }
                        if(vcfund[0]=='u3'){
                            table.rows[2].cells[11].innerHTML = vcfund[1];
                            table.rows[2].cells[12].innerHTML = vcfund[2];
                            table.rows[2].cells[13].innerHTML = vcfund[3];
                            table.rows[2].cells[14].innerHTML = vcfund[4];
                         /*   if(vcfund[5] == '合格')
                                table.rows[2].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[15].innerHTML = '<span style="color: red;">不合格</span>';*/
                        }
                    }
                    table.rows[2].cells[16].innerHTML = '-';
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                   // $("#searchHV2-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }
</script>
<!-- 查询谐波电流 -->
<script type="text/javascript">
    function searchHC() {
        var time = $("#date").val();
        var did = $('#his-mpid-select').val();
        var date = time.substring(0,10);

        if(time == ""){
            alert("请选择时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(time && did){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getHarmonicCurrent",
                data: {
                    time:date,
                    did:did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var temp_result= obj.hcresult;
                    var temp_threshold = obj.thresholdResult;
                    var temp_vcfund = obj.vcfund;
                    var table = document.getElementById('hctable');

                    for (var j = 0; j < 49*3; j++) {
                        var threshold = temp_threshold[j].split(",");
                        if(threshold[1]=='a') {
                            if (threshold[2]=='null') {
                                table.rows[threshold[0]].cells[16].innerHTML = "";
                            } else {
                                table.rows[threshold[0]].cells[16].innerHTML = threshold[2];
                            }
                        }
                    }

                    for (var j = 0; j < temp_result.length; j++) {
                        var result= temp_result[j].split(",");

                        console.log(result);

                        if(result[1]=='a'){
                            table.rows[result[0]].cells[1].innerHTML = result[2];
                            table.rows[result[0]].cells[2].innerHTML = result[3];
                            table.rows[result[0]].cells[3].innerHTML = result[4];
                            table.rows[result[0]].cells[4].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == ""){
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)){
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        else if(result[1]=='b') {
                            table.rows[result[0]].cells[6].innerHTML = result[2];
                            table.rows[result[0]].cells[7].innerHTML = result[3];
                            table.rows[result[0]].cells[8].innerHTML = result[4];
                            table.rows[result[0]].cells[9].innerHTML = result[5];
                            if (table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)) {
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        else if(result[1]=='c'){
                            table.rows[result[0]].cells[11].innerHTML = result[2];
                            table.rows[result[0]].cells[12].innerHTML = result[3];
                            table.rows[result[0]].cells[13].innerHTML = result[4];
                            table.rows[result[0]].cells[14].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)) {
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    for (var k = 0; k < temp_vcfund.length; k++) {
                        var vcfund = temp_vcfund[k].split(",");
                        if(vcfund[0]=='i1'){
                            table.rows[2].cells[1].innerHTML = vcfund[1];
                            table.rows[2].cells[2].innerHTML = vcfund[2];
                            table.rows[2].cells[3].innerHTML = vcfund[3];
                            table.rows[2].cells[4].innerHTML = vcfund[4];
                          /*  if(vcfund[5] == '合格')
                                table.rows[2].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[5].innerHTML = '<span style="color: red;">不合格</span>';*/

                        }
                        if(vcfund[0]=='i2'){
                            table.rows[2].cells[6].innerHTML = vcfund[1];
                            table.rows[2].cells[7].innerHTML = vcfund[2];
                            table.rows[2].cells[8].innerHTML = vcfund[3];
                            table.rows[2].cells[9].innerHTML = vcfund[4];
                           /* if(vcfund[5] == '合格')
                                table.rows[2].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[10].innerHTML = '<span style="color: red;">不合格</span>';*/

                        }
                        if(vcfund[0]=='i3'){
                            table.rows[2].cells[11].innerHTML = vcfund[1];
                            table.rows[2].cells[12].innerHTML = vcfund[2];
                            table.rows[2].cells[13].innerHTML = vcfund[3];
                            table.rows[2].cells[14].innerHTML = vcfund[4];
                         /*   if(vcfund[5] == '合格')
                                table.rows[2].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[15].innerHTML = '<span style="color: red;">不合格</span>';*/

                        }
                    }
                    table.rows[2].cells[16].innerHTML = '-';
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                    //$("#searchHC1-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }

    function searchHC2() {
        var stime = $("#date_start").val();
        var etime = $("#date_end").val();
        var did = $('#his-mpid-select').val();

        if(stime == ""){
            alert("请选择开始时间");
        } else if(etime == ""){
            alert("请选择结束时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(stime && etime && did){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getHarmonicCurrent2",
                data: {
                    stime: stime,
                    etime: etime,
                    did: did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var temp_result= obj.hcresult;
                    var temp_threshold = obj.thresholdResult;
                    var temp_vcfund = obj.vcfund;
                    var table = document.getElementById('hctable');

                    for (var j = 0; j < 49*3; j++) {
                        var threshold = temp_threshold[j].split(",");
                        if(threshold[1]=='a') {
                            if (threshold[2]=='null') {
                                table.rows[threshold[0]].cells[16].innerHTML = "";
                            } else {
                                table.rows[threshold[0]].cells[16].innerHTML = threshold[2];
                            }
                        }
                    }

                    for (var j = 0; j < temp_result.length; j++) {
                        var result= temp_result[j].split(",");
                        if(result[1]=='a') {
                            table.rows[result[0]].cells[1].innerHTML = result[2];
                            table.rows[result[0]].cells[2].innerHTML = result[3];
                            table.rows[result[0]].cells[3].innerHTML = result[4];
                            table.rows[result[0]].cells[4].innerHTML = result[5];
                            if (table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)) {
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else{
                                table.rows[result[0]].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        else if(result[1]=='b'){
                            table.rows[result[0]].cells[6].innerHTML = result[2];
                            table.rows[result[0]].cells[7].innerHTML = result[3];
                            table.rows[result[0]].cells[8].innerHTML = result[4];
                            table.rows[result[0]].cells[9].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)) {
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else{
                                table.rows[result[0]].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        else if(result[1]=='c'){
                            table.rows[result[0]].cells[11].innerHTML = result[2];
                            table.rows[result[0]].cells[12].innerHTML = result[3];
                            table.rows[result[0]].cells[13].innerHTML = result[4];
                            table.rows[result[0]].cells[14].innerHTML = result[5];
                            if(table.rows[result[0]].cells[16].innerHTML == "") {
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else if(parseFloat(result[5]) <= parseFloat(table.rows[result[0]].cells[16].innerHTML)) {
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[result[0]].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    for (var k = 0; k < temp_vcfund.length; k++) {
                        var vcfund = temp_vcfund[k].split(",");
                        if(vcfund[0]=='i1'){
                            table.rows[2].cells[1].innerHTML = vcfund[1];
                            table.rows[2].cells[2].innerHTML = vcfund[2];
                            table.rows[2].cells[3].innerHTML = vcfund[3];
                            table.rows[2].cells[4].innerHTML = vcfund[4];
                           /* if(vcfund[5] == '合格')
                                table.rows[2].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[5].innerHTML = '<span style="color: red;">不合格</span>';*/
                        }
                        if(vcfund[0]=='i2'){
                            table.rows[2].cells[6].innerHTML = vcfund[1];
                            table.rows[2].cells[7].innerHTML = vcfund[2];
                            table.rows[2].cells[8].innerHTML = vcfund[3];
                            table.rows[2].cells[9].innerHTML = vcfund[4];
                          /*  if(vcfund[5] == '合格')
                                table.rows[2].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[10].innerHTML = '<span style="color: red;">不合格</span>';*/
                        }
                        if(vcfund[0]=='i3'){
                            table.rows[2].cells[11].innerHTML = vcfund[1];
                            table.rows[2].cells[12].innerHTML = vcfund[2];
                            table.rows[2].cells[13].innerHTML = vcfund[3];
                            table.rows[2].cells[14].innerHTML = vcfund[4];
                         /*   if(vcfund[5] == '合格')
                                table.rows[2].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            else if(vcfund[5] == '不合格')
                                table.rows[2].cells[15].innerHTML = '<span style="color: red;">不合格</span>';*/
                        }
                    }
                    table.rows[2].cells[16].innerHTML = '-';
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                    //$("#searchHC2-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }
</script>
<!-- 查询谐波电压 谐波电流合格率 -->
<script type="text/javascript">
    function searchHVCrate() {
        var time = $("#date").val();
        var did = $('#his-mpid-select').val();
        var date = time.substring(0,10);

        if(time == ""){
            alert("请选择时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(time && did){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getHVCrate",
                data: {
                    time:date,
                    did:did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var hvrate= obj.hvRateResult;
                    var hcrate= obj.hcRateResult;
                    var temp_vcfund_rate= obj.vcfund_rate;
                    var table = document.getElementById('hvcRateTable');

                    for (var i = 0; i < hvrate.length; i++) {
                        var hvresult= hvrate[i].split(",");
                        if(hvresult[1]=='a'){
                            table.rows[hvresult[0]].cells[1].innerHTML = hvresult[2];
                            table.rows[hvresult[0]].cells[2].innerHTML = hvresult[3];
                        }
                        else if(hvresult[1]=='b'){
                            table.rows[hvresult[0]].cells[3].innerHTML = hvresult[2];
                            table.rows[hvresult[0]].cells[4].innerHTML = hvresult[3];
                        }
                        else if(hvresult[1]=='c'){
                            table.rows[hvresult[0]].cells[5].innerHTML = hvresult[2];
                            table.rows[hvresult[0]].cells[6].innerHTML = hvresult[3];
                        }
                    }
                    for (var j = 0; j < hcrate.length; j++) {
                        var hcresult= hcrate[j].split(",");
                        if(hcresult[1]=='a'){
                            table.rows[hcresult[0]].cells[8].innerHTML = hcresult[2];
                            table.rows[hcresult[0]].cells[9].innerHTML = hcresult[3];
                        }
                        else if(hcresult[1]=='b') {
                            table.rows[hcresult[0]].cells[10].innerHTML = hcresult[2];
                            table.rows[hcresult[0]].cells[11].innerHTML = hcresult[3];
                        }
                        else if(hcresult[1]=='c'){
                            table.rows[hcresult[0]].cells[12].innerHTML = hcresult[2];
                            table.rows[hcresult[0]].cells[13].innerHTML = hcresult[3];
                        }
                    }

                    for(var k=0;k<temp_vcfund_rate.length;k++){
                        var vcFundResult= temp_vcfund_rate[k].split(",");
                        if(vcFundResult[0]=='u1'){
                            table.rows[2].cells[1].innerHTML = vcFundResult[6];
                            table.rows[2].cells[2].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='u2'){
                            table.rows[2].cells[3].innerHTML = vcFundResult[6];
                            table.rows[2].cells[4].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='u3'){
                            table.rows[2].cells[5].innerHTML = vcFundResult[6];
                            table.rows[2].cells[6].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='i1'){
                            table.rows[2].cells[8].innerHTML = vcFundResult[6];
                            table.rows[2].cells[9].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='i2'){
                            table.rows[2].cells[10].innerHTML = vcFundResult[6];
                            table.rows[2].cells[11].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='i3'){
                            table.rows[2].cells[12].innerHTML = vcFundResult[6];
                            table.rows[2].cells[13].innerHTML = vcFundResult[7];
                        }
                    }
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                    //$("#searchHVCrate1-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }

    function searchHVCrate2() {
        var stime = $("#date_start").val();
        var etime = $("#date_end").val();
        var did = $('#his-mpid-select').val();

        if(stime == ""){
            alert("请选择开始时间");
        } else if(etime == ""){
            alert("请选择结束时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(did && stime && etime){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getHVCrate2",
                data: {
                    stime: stime,
                    etime: etime,
                    did: did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var hvrate= obj.hvRateResult;
                    var hcrate= obj.hcRateResult;
                    var temp_vcfund_rate= obj.vcfund_rate;
                    var table = document.getElementById('hvcRateTable');

                    for (var i = 0; i <hvrate.length; i++) {
                        var hvresult= hvrate[i].split(",");
                        if(hvresult[1]=='a'){
                            table.rows[hvresult[0]].cells[1].innerHTML = hvresult[2];
                            table.rows[hvresult[0]].cells[2].innerHTML = hvresult[3];
                        }
                        else if(hvresult[1]=='b'){
                            table.rows[hvresult[0]].cells[3].innerHTML = hvresult[2];
                            table.rows[hvresult[0]].cells[4].innerHTML = hvresult[3];
                        }
                        else if(hvresult[1]=='c'){
                            table.rows[hvresult[0]].cells[5].innerHTML = hvresult[2];
                            table.rows[hvresult[0]].cells[6].innerHTML = hvresult[3];
                        }
                    }
                    for (var j = 0; j < hcrate.length; j++) {
                        var hcresult= hcrate[j].split(",");
                        if(hcresult[1]=='a'){
                            table.rows[hcresult[0]].cells[8].innerHTML = hcresult[2];
                            table.rows[hcresult[0]].cells[9].innerHTML = hcresult[3];
                        }
                        else if(hcresult[1]=='b') {
                            table.rows[hcresult[0]].cells[10].innerHTML = hcresult[2];
                            table.rows[hcresult[0]].cells[11].innerHTML = hcresult[3];
                        }
                        else if(hcresult[1]=='c'){
                            table.rows[hcresult[0]].cells[12].innerHTML = hcresult[2];
                            table.rows[hcresult[0]].cells[13].innerHTML = hcresult[3];
                        }
                    }

                    for(var k=0;k<temp_vcfund_rate.length;k++){
                        var vcFundResult= temp_vcfund_rate[k].split(",");
                        if(vcFundResult[0]=='u1'){
                            table.rows[2].cells[1].innerHTML = vcFundResult[6];
                            table.rows[2].cells[2].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='u2'){
                            table.rows[2].cells[3].innerHTML = vcFundResult[6];
                            table.rows[2].cells[4].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='u3'){
                            table.rows[2].cells[5].innerHTML = vcFundResult[6];
                            table.rows[2].cells[6].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='i1'){
                            table.rows[2].cells[8].innerHTML = vcFundResult[6];
                            table.rows[2].cells[9].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='i2'){
                            table.rows[2].cells[10].innerHTML = vcFundResult[6];
                            table.rows[2].cells[11].innerHTML = vcFundResult[7];
                        }
                        if(vcFundResult[0]=='i3'){
                            table.rows[2].cells[12].innerHTML = vcFundResult[6];
                            table.rows[2].cells[13].innerHTML = vcFundResult[7];
                        }
                    }
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                    //$("#searchHVCrate2-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }
</script>
<!-- 查询综合项目统计报表 -->
<script type="text/javascript">
    function searchSynthesis() {
        var time = $("#date").val();
        var did = $('#his-mpid-select').val();
        var date = time.substring(0,10);

        if(time == ""){
            alert("请选择时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(time && did){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getSynthesis",
                data: {
                    time:date,
                    did:did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var temp_hz= obj.hzresult;
                    var temp_hzpc= obj.hzpcresult;
                    var temp_hzpcThresholdResult= obj.hzpcThresholdResult;
                    var temp_sxdy= obj.sxdyresult;
                    var temp_sxdyThresholdResult= obj.sxdyThresholdResult;
                    var temp_dypc= obj.dypcresult;
                    var temp_dypcThresholdResult= obj.dypcThresholdResult;
                    var temp_dsdysbresult= obj.dsdysbresult;
                    var temp_dsdysbThresholdResult= obj.dsdysbThresholdResult;
                    var temp_csdysbresult= obj.csdysbresult;
                    var temp_csdysbThresholdResult= obj.csdysbThresholdResult;
                    var temp_activePowerResult= obj.activePowerResult;
                    var temp_reactivePowerResult= obj.reactivePowerResult;
                    var temp_powerFactorResult= obj.powerFactorResult;
                    var temp_thdUResult= obj.thdUResult;
                    var temp_thdIResult= obj.thdIResult;
                    var temp_thdUThresholdResult= obj.thdUThresholdResult;
                    var temp_thdIThresholdResult= obj.thdIThresholdResult;
                    var temp_powerthresholdResult= obj.powerthresholdResult;


                    var table = document.getElementById('syntable');

                    if(temp_hz!=""){
                        var hz = temp_hz[0].split(",");
                        table.rows[1].cells[1].innerHTML = hz[0];
                        table.rows[1].cells[2].innerHTML = hz[1];
                        table.rows[1].cells[3].innerHTML = hz[2];
                        table.rows[1].cells[4].innerHTML = hz[3];
                        table.rows[1].cells[5].innerHTML = '-';
                        table.rows[1].cells[6].innerHTML = "-";
                       /* if(parseFloat(hz[3]) <= 50) {
                            table.rows[1].cells[6].innerHTML = '<span style="color: black;">合格</span>';
                        } else {
                            table.rows[1].cells[6].innerHTML = '<span style="color: red;">不合格</span>';
                        }*/
                    }

                    if(temp_hzpc!=""){
                        var hzpc = temp_hzpc[0].split(",");
                        table.rows[2].cells[1].innerHTML = hzpc[0];
                        table.rows[2].cells[2].innerHTML = hzpc[1];
                        table.rows[2].cells[3].innerHTML = hzpc[2];
                        table.rows[2].cells[4].innerHTML = hzpc[3];
                        table.rows[2].cells[5].innerHTML = temp_hzpcThresholdResult[1] + "~" + temp_hzpcThresholdResult[0];
                        if(parseFloat(hzpc[3]) <= parseFloat(temp_hzpcThresholdResult[0]) && parseFloat(hzpc[3]) >= parseFloat(temp_hzpcThresholdResult[1])) {
                            table.rows[2].cells[6].innerHTML = '<span style="color: black;">合格</span>';
                        } else {
                            table.rows[2].cells[6].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                    }

                    if(temp_sxdyThresholdResult!=""){
                        table.rows[3].cells[5].innerHTML = temp_sxdyThresholdResult[0];
                    }

                    if(temp_sxdy!=""){
                        var sxdy = temp_sxdy[0].split(",");
                        table.rows[3].cells[1].innerHTML = sxdy[0];
                        table.rows[3].cells[2].innerHTML = sxdy[1];
                        table.rows[3].cells[3].innerHTML = sxdy[2];
                        table.rows[3].cells[4].innerHTML = sxdy[3];
                        if(parseFloat(sxdy[3]) <= parseFloat(temp_sxdyThresholdResult[0])) {
                            table.rows[3].cells[6].innerHTML =  '<span style="color: black;">合格</span>';
                        } else {
                            table.rows[3].cells[6].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                    }

                    //短时电压闪变
                    table.rows[6].cells[16].innerHTML = temp_dsdysbThresholdResult[0];
                    for(var i=0;i<temp_dsdysbresult.length;i++){
                        var dsdysb = temp_dsdysbresult[i].split(",");
                        if(dsdysb[0]=='1') {
                            table.rows[6].cells[1].innerHTML = dsdysb[1];
                            table.rows[6].cells[2].innerHTML = dsdysb[2];
                            table.rows[6].cells[3].innerHTML = dsdysb[3];
                            table.rows[6].cells[4].innerHTML = dsdysb[4];
                            if(parseFloat(dsdysb[4]) <= parseFloat(temp_dsdysbThresholdResult[0])) {
                                table.rows[6].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[6].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(dsdysb[0]=='2'){
                            table.rows[6].cells[6].innerHTML = dsdysb[1];
                            table.rows[6].cells[7].innerHTML = dsdysb[2];
                            table.rows[6].cells[8].innerHTML = dsdysb[3];
                            table.rows[6].cells[9].innerHTML = dsdysb[4];
                            if(parseFloat(dsdysb[4]) <= parseFloat(temp_dsdysbThresholdResult[0])){
                                table.rows[6].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[6].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(dsdysb[0]=='3'){
                            table.rows[6].cells[11].innerHTML = dsdysb[1];
                            table.rows[6].cells[12].innerHTML = dsdysb[2];
                            table.rows[6].cells[13].innerHTML = dsdysb[3];
                            table.rows[6].cells[14].innerHTML = dsdysb[4];
                            if(parseFloat(dsdysb[4]) <= parseFloat(temp_dsdysbThresholdResult[0])) {
                                table.rows[6].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[6].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    //长时电压闪变
                    table.rows[7].cells[16].innerHTML = temp_csdysbThresholdResult[0];
                    for(var i=0;i<temp_csdysbresult.length;i++){
                        var csdysb = temp_csdysbresult[i].split(",");
                        if(csdysb[0]=='1'){
                            table.rows[7].cells[1].innerHTML = csdysb[1];
                            table.rows[7].cells[2].innerHTML = csdysb[2];
                            table.rows[7].cells[3].innerHTML = csdysb[3];
                            table.rows[7].cells[4].innerHTML = csdysb[4];
                            if(csdysb[4] <= temp_csdysbThresholdResult[0])
                                table.rows[7].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            else
                                table.rows[7].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                        if(csdysb[0]=='2'){
                            table.rows[7].cells[6].innerHTML = csdysb[1];
                            table.rows[7].cells[7].innerHTML = csdysb[2];
                            table.rows[7].cells[8].innerHTML = csdysb[3];
                            table.rows[7].cells[9].innerHTML = csdysb[4];
                            if(parseFloat(csdysb[4]) <= parseFloat(temp_csdysbThresholdResult[0])){
                                table.rows[7].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[7].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(csdysb[0]=='3'){
                            table.rows[7].cells[11].innerHTML = csdysb[1];
                            table.rows[7].cells[12].innerHTML = csdysb[2];
                            table.rows[7].cells[13].innerHTML = csdysb[3];
                            table.rows[7].cells[14].innerHTML = csdysb[4];
                            if(parseFloat(csdysb[4]) <= parseFloat(temp_csdysbThresholdResult[0])){
                                table.rows[7].cells[15].innerHTML =  '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[7].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    //电压偏差
                    table.rows[8].cells[16].innerHTML = temp_dypcThresholdResult[0];
                    for(var i=0;i<temp_dypc.length;i++){
                        var dypc = temp_dypc[i].split(",");
                        if(dypc[0]=='1'){
                            table.rows[8].cells[1].innerHTML = dypc[1];
                            table.rows[8].cells[2].innerHTML = dypc[2];
                            table.rows[8].cells[3].innerHTML = dypc[3];
                            table.rows[8].cells[4].innerHTML = dypc[4];
                            if(parseFloat(dypc[4]) <= parseFloat(temp_csdysbThresholdResult[0]))
                                table.rows[8].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            else
                                table.rows[8].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                        if(dypc[0]=='2'){
                            table.rows[8].cells[6].innerHTML = dypc[1];
                            table.rows[8].cells[7].innerHTML = dypc[2];
                            table.rows[8].cells[8].innerHTML = dypc[3];
                            table.rows[8].cells[9].innerHTML = dypc[4];
                            if(parseFloat(dypc[4]) <= parseFloat(temp_csdysbThresholdResult[0]))
                                table.rows[8].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            else
                                table.rows[8].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                        if(dypc[0]=='3'){
                            table.rows[8].cells[11].innerHTML = dypc[1];
                            table.rows[8].cells[12].innerHTML = dypc[2];
                            table.rows[8].cells[13].innerHTML = dypc[3];
                            table.rows[8].cells[14].innerHTML = dypc[4];
                            if(parseFloat(dypc[4]) <= parseFloat(temp_csdysbThresholdResult[0]))
                                table.rows[8].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            else
                                table.rows[8].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                    }

                    //有功功率
                    for(var i=0;i<temp_activePowerResult.length;i++){
                        var activePower = temp_activePowerResult[i].split(",");
                        if(activePower[0]=='1'){
                            table.rows[9].cells[1].innerHTML = activePower[1];
                            table.rows[9].cells[2].innerHTML = activePower[2];
                            table.rows[9].cells[3].innerHTML = activePower[3];
                            table.rows[9].cells[4].innerHTML = activePower[4];
                        }
                        if(activePower[0]=='2'){
                            table.rows[9].cells[6].innerHTML = activePower[1];
                            table.rows[9].cells[7].innerHTML = activePower[2];
                            table.rows[9].cells[8].innerHTML = activePower[3];
                            table.rows[9].cells[9].innerHTML = activePower[4];
                        }
                        if(activePower[0]=='3'){
                            table.rows[9].cells[11].innerHTML = activePower[1];
                            table.rows[9].cells[12].innerHTML = activePower[2];
                            table.rows[9].cells[13].innerHTML = activePower[3];
                            table.rows[9].cells[14].innerHTML = activePower[4];
                        }
                    }

                    //无功功率
                    for(var i=0;i<temp_reactivePowerResult.length;i++){
                        var reactivePower = temp_reactivePowerResult[i].split(",");
                        if(reactivePower[0]=='1'){
                            table.rows[10].cells[1].innerHTML = reactivePower[1];
                            table.rows[10].cells[2].innerHTML = reactivePower[2];
                            table.rows[10].cells[3].innerHTML = reactivePower[3];
                            table.rows[10].cells[4].innerHTML = reactivePower[4];
                        }
                        if(reactivePower[0]=='2'){
                            table.rows[10].cells[6].innerHTML = reactivePower[1];
                            table.rows[10].cells[7].innerHTML = reactivePower[2];
                            table.rows[10].cells[8].innerHTML = reactivePower[3];
                            table.rows[10].cells[9].innerHTML = reactivePower[4];
                        }
                        if(reactivePower[0]=='3'){
                            table.rows[10].cells[11].innerHTML = reactivePower[1];
                            table.rows[10].cells[12].innerHTML = reactivePower[2];
                            table.rows[10].cells[13].innerHTML = reactivePower[3];
                            table.rows[10].cells[14].innerHTML = reactivePower[4];
                        }
                    }

                    //功率因数
                    for(var i=0;i<temp_powerFactorResult.length;i++){
                        var powerFactor = temp_powerFactorResult[i].split(",");

                        if(powerFactor[0]=='1'){
                            table.rows[11].cells[1].innerHTML = powerFactor[1];
                            table.rows[11].cells[2].innerHTML = powerFactor[2];
                            table.rows[11].cells[3].innerHTML = powerFactor[3];
                            table.rows[11].cells[4].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) >= parseFloat(temp_powerthresholdResult[0])) {
                                table.rows[11].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[11].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='2'){
                            table.rows[11].cells[6].innerHTML = powerFactor[1];
                            table.rows[11].cells[7].innerHTML = powerFactor[2];
                            table.rows[11].cells[8].innerHTML = powerFactor[3];
                            table.rows[11].cells[9].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) >= parseFloat(temp_powerthresholdResult[0])) {
                                table.rows[11].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[11].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='3'){
                            table.rows[11].cells[11].innerHTML = powerFactor[1];
                            table.rows[11].cells[12].innerHTML = powerFactor[2];
                            table.rows[11].cells[13].innerHTML = powerFactor[3];
                            table.rows[11].cells[14].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) >= parseFloat(temp_powerthresholdResult[0])) {
                                table.rows[11].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[11].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    if(temp_powerthresholdResult!=""){
                        table.rows[11].cells[16].innerHTML = temp_powerthresholdResult[0];
                    }

                    //电压总谐波畸变率
                    for(var i=0;i<temp_thdUResult.length;i++){
                        var powerFactor = temp_thdUResult[i].split(",");

                        if(powerFactor[0]=='1'){
                            table.rows[12].cells[1].innerHTML = powerFactor[1];
                            table.rows[12].cells[2].innerHTML = powerFactor[2];
                            table.rows[12].cells[3].innerHTML = powerFactor[3];
                            table.rows[12].cells[4].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdUThresholdResult[0])) {
                                table.rows[12].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[12].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='2'){
                            table.rows[12].cells[6].innerHTML = powerFactor[1];
                            table.rows[12].cells[7].innerHTML = powerFactor[2];
                            table.rows[12].cells[8].innerHTML = powerFactor[3];
                            table.rows[12].cells[9].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdUThresholdResult[0])) {
                                table.rows[12].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[12].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='3'){
                            table.rows[12].cells[11].innerHTML = powerFactor[1];
                            table.rows[12].cells[12].innerHTML = powerFactor[2];
                            table.rows[12].cells[13].innerHTML = powerFactor[3];
                            table.rows[12].cells[14].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdUThresholdResult[0])) {
                                table.rows[12].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[12].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    if(temp_thdUThresholdResult!=""){
                        table.rows[12].cells[16].innerHTML = temp_thdUThresholdResult[0];
                    }

                    //电流总谐波畸变率
                    for(var i=0;i<temp_thdIResult.length;i++){
                        var powerFactor = temp_thdIResult[i].split(",");
                        if(powerFactor[0]=='1') {
                            table.rows[13].cells[1].innerHTML = powerFactor[1];
                            table.rows[13].cells[2].innerHTML = powerFactor[2];
                            table.rows[13].cells[3].innerHTML = powerFactor[3];
                            table.rows[13].cells[4].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdIThresholdResult[0])) {
                                table.rows[13].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[13].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='2'){
                            table.rows[13].cells[6].innerHTML = powerFactor[1];
                            table.rows[13].cells[7].innerHTML = powerFactor[2];
                            table.rows[13].cells[8].innerHTML = powerFactor[3];
                            table.rows[13].cells[9].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdIThresholdResult[0])) {
                                table.rows[13].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[13].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='3'){
                            table.rows[13].cells[11].innerHTML = powerFactor[1];
                            table.rows[13].cells[12].innerHTML = powerFactor[2];
                            table.rows[13].cells[13].innerHTML = powerFactor[3];
                            table.rows[13].cells[14].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdIThresholdResult[0])) {
                                table.rows[13].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[13].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }
                    if(temp_thdIThresholdResult!=""){
                        table.rows[13].cells[16].innerHTML = temp_thdIThresholdResult[0];
                    }
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
//                    $("#searchSynthesis1-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }

    function searchSynthesis2() {
        var stime = $("#date_start").val();
        var etime = $("#date_end").val();
        var did = $('#his-mpid-select').val();

        if(stime == ""){
            alert("请选择开始时间");
        } else if(etime == ""){
            alert("请选择结束时间");
        } else if(did == "") {
            alert("请选择设备");
        } else if(stime && etime && did){
            $('#searching').css('display', 'block');
            $.ajax({
                type: "post",
                url: "getSynthesis2",
                data: {
                    stime: stime,
                    etime: etime,
                    did: did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var temp_hz= obj.hzresult;
                    var temp_hzpc= obj.hzpcresult;
                    var temp_hzpcThresholdResult= obj.hzpcThresholdResult;
                    var temp_sxdy= obj.sxdyresult;
                    var temp_sxdyThresholdResult= obj.sxdyThresholdResult;
                    var temp_dypc= obj.dypcresult;
                    var temp_dypcThresholdResult= obj.dypcThresholdResult;
                    var temp_dsdysbresult= obj.dsdysbresult;
                    var temp_dsdysbThresholdResult= obj.dsdysbThresholdResult;
                    var temp_csdysbresult= obj.csdysbresult;
                    var temp_csdysbThresholdResult= obj.csdysbThresholdResult;
                    var temp_activePowerResult= obj.activePowerResult;
                    var temp_reactivePowerResult= obj.reactivePowerResult;
                    var temp_powerFactorResult= obj.powerFactorResult;
                    var temp_thdUResult= obj.thdUResult;
                    var temp_thdIResult= obj.thdIResult;
                    var temp_thdUThresholdResult= obj.thdUThresholdResult;
                    var temp_thdIThresholdResult= obj.thdIThresholdResult;

                    var table = document.getElementById('syntable');

                    if(temp_hz!=""){
                        var hz = temp_hz[0].split(",");
                        table.rows[1].cells[1].innerHTML = hz[0];
                        table.rows[1].cells[2].innerHTML = hz[1];
                        table.rows[1].cells[3].innerHTML = hz[2];
                        table.rows[1].cells[4].innerHTML = hz[3];
                        table.rows[1].cells[5].innerHTML = '-';
                        table.rows[1].cells[6].innerHTML = "-";
                      /*  if(parseFloat(hz[3]) <= 50) {
                            table.rows[1].cells[6].innerHTML = '<span style="color: black;">合格</span>';
                        } else {
                            table.rows[1].cells[6].innerHTML = '<span style="color: red;">不合格</span>';
                        }*/
                    }

                    if(temp_hzpc!=""){
                        var hzpc = temp_hzpc[0].split(",");
                        table.rows[2].cells[1].innerHTML = hzpc[0];
                        table.rows[2].cells[2].innerHTML = hzpc[1];
                        table.rows[2].cells[3].innerHTML = hzpc[2];
                        table.rows[2].cells[4].innerHTML = hzpc[3];
                        table.rows[2].cells[5].innerHTML = temp_hzpcThresholdResult[1] + "~" + temp_hzpcThresholdResult[0];
                        if(parseFloat(hzpc[3]) <= parseFloat(temp_hzpcThresholdResult[0]) && parseFloat(hzpc[3]) >= parseFloat(temp_hzpcThresholdResult[1])) {
                            table.rows[2].cells[6].innerHTML = '<span style="color: black;">合格</span>';
                        } else {
                            table.rows[2].cells[6].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                    }

                    if(temp_sxdyThresholdResult!=""){
                        table.rows[3].cells[5].innerHTML = temp_sxdyThresholdResult[0];
                    }
                    if(temp_sxdy!=""){
                        var sxdy = temp_sxdy[0].split(",");
                        table.rows[3].cells[1].innerHTML = sxdy[0];
                        table.rows[3].cells[2].innerHTML = sxdy[1];
                        table.rows[3].cells[3].innerHTML = sxdy[2];
                        table.rows[3].cells[4].innerHTML = sxdy[3];
                        if(parseFloat(sxdy[3]) <= parseFloat(temp_sxdyThresholdResult[0])) {
                            table.rows[3].cells[6].innerHTML =  '<span style="color: black;">合格</span>';
                        } else {
                            table.rows[3].cells[6].innerHTML = '<span style="color: red;">不合格</span>';
                        }
                    }

                    //短时电压闪变
                    table.rows[6].cells[16].innerHTML = temp_dsdysbThresholdResult[0];
                    for(var i=0;i<temp_dsdysbresult.length;i++){
                        var dsdysb = temp_dsdysbresult[i].split(",");
                        if(dsdysb[0]=='1'){
                            table.rows[6].cells[1].innerHTML = dsdysb[1];
                            table.rows[6].cells[2].innerHTML = dsdysb[2];
                            table.rows[6].cells[3].innerHTML = dsdysb[3];
                            table.rows[6].cells[4].innerHTML = dsdysb[4];
                            if(parseFloat(dsdysb[4]) <= parseFloat(temp_dsdysbThresholdResult[0])) {
                                table.rows[6].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[6].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(dsdysb[0]=='2'){
                            table.rows[6].cells[6].innerHTML = dsdysb[1];
                            table.rows[6].cells[7].innerHTML = dsdysb[2];
                            table.rows[6].cells[8].innerHTML = dsdysb[3];
                            table.rows[6].cells[9].innerHTML = dsdysb[4];
                            if(parseFloat(dsdysb[4]) <= parseFloat(temp_dsdysbThresholdResult[0])) {
                                table.rows[6].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[6].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(dsdysb[0]=='3'){
                            table.rows[6].cells[11].innerHTML = dsdysb[1];
                            table.rows[6].cells[12].innerHTML = dsdysb[2];
                            table.rows[6].cells[13].innerHTML = dsdysb[3];
                            table.rows[6].cells[14].innerHTML = dsdysb[4];
                            if(parseFloat(dsdysb[4]) <= parseFloat(temp_dsdysbThresholdResult[0])) {
                                table.rows[6].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[6].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    //长时电压闪变
                    table.rows[7].cells[16].innerHTML = temp_csdysbThresholdResult[0];
                    for(var i=0;i<temp_csdysbresult.length;i++){
                        var csdysb = temp_csdysbresult[i].split(",");
                        if(csdysb[0]=='1'){
                            table.rows[7].cells[1].innerHTML = csdysb[1];
                            table.rows[7].cells[2].innerHTML = csdysb[2];
                            table.rows[7].cells[3].innerHTML = csdysb[3];
                            table.rows[7].cells[4].innerHTML = csdysb[4];
                            if(parseFloat(csdysb[4]) <= parseFloat(temp_csdysbThresholdResult[0])){
                                table.rows[7].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[7].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(csdysb[0]=='2'){
                            table.rows[7].cells[6].innerHTML = csdysb[1];
                            table.rows[7].cells[7].innerHTML = csdysb[2];
                            table.rows[7].cells[8].innerHTML = csdysb[3];
                            table.rows[7].cells[9].innerHTML = csdysb[4];
                            if(parseFloat(csdysb[4]) <= parseFloat(temp_csdysbThresholdResult[0])) {
                                table.rows[7].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[7].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(csdysb[0]=='3'){
                            table.rows[7].cells[11].innerHTML = csdysb[1];
                            table.rows[7].cells[12].innerHTML = csdysb[2];
                            table.rows[7].cells[13].innerHTML = csdysb[3];
                            table.rows[7].cells[14].innerHTML = csdysb[4];
                            if(parseFloat(csdysb[4]) <= parseFloat(temp_csdysbThresholdResult[0])) {
                                table.rows[7].cells[15].innerHTML =  '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[7].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    //电压偏差
                    table.rows[8].cells[16].innerHTML = temp_dypcThresholdResult[0];
                    for(var i=0;i<temp_dypc.length;i++){
                        var dypc = temp_dypc[i].split(",");
                        if(dypc[0]=='1'){
                            table.rows[8].cells[1].innerHTML = dypc[1];
                            table.rows[8].cells[2].innerHTML = dypc[2];
                            table.rows[8].cells[3].innerHTML = dypc[3];
                            table.rows[8].cells[4].innerHTML = dypc[4];
                            if(parseFloat(dypc[4]) <= parseFloat(temp_csdysbThresholdResult[0])) {
                                table.rows[8].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[8].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(dypc[0]=='2'){
                            table.rows[8].cells[6].innerHTML = dypc[1];
                            table.rows[8].cells[7].innerHTML = dypc[2];
                            table.rows[8].cells[8].innerHTML = dypc[3];
                            table.rows[8].cells[9].innerHTML = dypc[4];
                            if(parseFloat(dypc[4]) <= parseFloat(temp_csdysbThresholdResult[0])) {
                                table.rows[8].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[8].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(dypc[0]=='3'){
                            table.rows[8].cells[11].innerHTML = dypc[1];
                            table.rows[8].cells[12].innerHTML = dypc[2];
                            table.rows[8].cells[13].innerHTML = dypc[3];
                            table.rows[8].cells[14].innerHTML = dypc[4];
                            if(parseFloat(dypc[4]) <= parseFloat(temp_csdysbThresholdResult[0])) {
                                table.rows[8].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[8].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }

                    //有功功率
                    for(var i=0;i<temp_activePowerResult.length;i++){
                        var activePower = temp_activePowerResult[i].split(",");
                        if(activePower[0]=='1'){
                            table.rows[9].cells[1].innerHTML = activePower[1];
                            table.rows[9].cells[2].innerHTML = activePower[2];
                            table.rows[9].cells[3].innerHTML = activePower[3];
                            table.rows[9].cells[4].innerHTML = activePower[4];
                        }
                        if(activePower[0]=='2'){
                            table.rows[9].cells[6].innerHTML = activePower[1];
                            table.rows[9].cells[7].innerHTML = activePower[2];
                            table.rows[9].cells[8].innerHTML = activePower[3];
                            table.rows[9].cells[9].innerHTML = activePower[4];
                        }
                        if(activePower[0]=='3'){
                            table.rows[9].cells[11].innerHTML = activePower[1];
                            table.rows[9].cells[12].innerHTML = activePower[2];
                            table.rows[9].cells[13].innerHTML = activePower[3];
                            table.rows[9].cells[14].innerHTML = activePower[4];
                        }
                    }

                    //无功功率
                    for(var i=0;i<temp_reactivePowerResult.length;i++){
                        var reactivePower = temp_reactivePowerResult[i].split(",");
                        if(reactivePower[0]=='1'){
                            table.rows[10].cells[1].innerHTML = reactivePower[1];
                            table.rows[10].cells[2].innerHTML = reactivePower[2];
                            table.rows[10].cells[3].innerHTML = reactivePower[3];
                            table.rows[10].cells[4].innerHTML = reactivePower[4];
                        }
                        if(reactivePower[0]=='2'){
                            table.rows[10].cells[6].innerHTML = reactivePower[1];
                            table.rows[10].cells[7].innerHTML = reactivePower[2];
                            table.rows[10].cells[8].innerHTML = reactivePower[3];
                            table.rows[10].cells[9].innerHTML = reactivePower[4];
                        }
                        if(reactivePower[0]=='3'){
                            table.rows[10].cells[11].innerHTML = reactivePower[1];
                            table.rows[10].cells[12].innerHTML = reactivePower[2];
                            table.rows[10].cells[13].innerHTML = reactivePower[3];
                            table.rows[10].cells[14].innerHTML = reactivePower[4];
                        }
                    }

                    //功率因数
                    for(var i=0;i<temp_powerFactorResult.length;i++){
                        var powerFactor = temp_powerFactorResult[i].split(",");

                        if(powerFactor[0]=='1'){
                            table.rows[11].cells[1].innerHTML = powerFactor[1];
                            table.rows[11].cells[2].innerHTML = powerFactor[2];
                            table.rows[11].cells[3].innerHTML = powerFactor[3];
                            table.rows[11].cells[4].innerHTML = powerFactor[4];
                        }
                        if(powerFactor[0]=='2'){
                            table.rows[11].cells[6].innerHTML = powerFactor[1];
                            table.rows[11].cells[7].innerHTML = powerFactor[2];
                            table.rows[11].cells[8].innerHTML = powerFactor[3];
                            table.rows[11].cells[9].innerHTML = powerFactor[4];
                        }
                        if(powerFactor[0]=='3'){
                            table.rows[11].cells[11].innerHTML = powerFactor[1];
                            table.rows[11].cells[12].innerHTML = powerFactor[2];
                            table.rows[11].cells[13].innerHTML = powerFactor[3];
                            table.rows[11].cells[14].innerHTML = powerFactor[4];
                        }
                    }

                    //电压总谐波畸变率
                    for(var i=0;i<temp_thdUResult.length;i++){
                        var powerFactor = temp_thdUResult[i].split(",");

                        if(powerFactor[0]=='1'){
                            table.rows[12].cells[1].innerHTML = powerFactor[1];
                            table.rows[12].cells[2].innerHTML = powerFactor[2];
                            table.rows[12].cells[3].innerHTML = powerFactor[3];
                            table.rows[12].cells[4].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdUThresholdResult[0])) {
                                table.rows[12].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[12].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='2'){
                            table.rows[12].cells[6].innerHTML = powerFactor[1];
                            table.rows[12].cells[7].innerHTML = powerFactor[2];
                            table.rows[12].cells[8].innerHTML = powerFactor[3];
                            table.rows[12].cells[9].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdUThresholdResult[0])) {
                                table.rows[12].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[12].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='3'){
                            table.rows[12].cells[11].innerHTML = powerFactor[1];
                            table.rows[12].cells[12].innerHTML = powerFactor[2];
                            table.rows[12].cells[13].innerHTML = powerFactor[3];
                            table.rows[12].cells[14].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdUThresholdResult[0])) {
                                table.rows[12].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[12].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }
                    if(temp_thdUThresholdResult!=""){
                        table.rows[12].cells[16].innerHTML = temp_thdUThresholdResult[0];
                    }

                    //电流总谐波畸变率
                    for(var i=0;i<temp_thdIResult.length;i++){
                        var powerFactor = temp_thdIResult[i].split(",");
                        if(powerFactor[0]=='1') {
                            table.rows[13].cells[1].innerHTML = powerFactor[1];
                            table.rows[13].cells[2].innerHTML = powerFactor[2];
                            table.rows[13].cells[3].innerHTML = powerFactor[3];
                            table.rows[13].cells[4].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdIThresholdResult[0])) {
                                table.rows[13].cells[5].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[13].cells[5].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='2'){
                            table.rows[13].cells[6].innerHTML = powerFactor[1];
                            table.rows[13].cells[7].innerHTML = powerFactor[2];
                            table.rows[13].cells[8].innerHTML = powerFactor[3];
                            table.rows[13].cells[9].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdIThresholdResult[0])) {
                                table.rows[13].cells[10].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[13].cells[10].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                        if(powerFactor[0]=='3'){
                            table.rows[13].cells[11].innerHTML = powerFactor[1];
                            table.rows[13].cells[12].innerHTML = powerFactor[2];
                            table.rows[13].cells[13].innerHTML = powerFactor[3];
                            table.rows[13].cells[14].innerHTML = powerFactor[4];
                            if(parseFloat(powerFactor[4]) <= parseFloat(temp_thdIThresholdResult[0])) {
                                table.rows[13].cells[15].innerHTML = '<span style="color: black;">合格</span>';
                            } else {
                                table.rows[13].cells[15].innerHTML = '<span style="color: red;">不合格</span>';
                            }
                        }
                    }
                    if(temp_thdIThresholdResult!=""){
                        table.rows[13].cells[16].innerHTML = temp_thdIThresholdResult[0];
                    }
                    $('#searching').css('display', 'none');
                    alert("查询完成！");
                  //  $("#searchSynthesis2-button").button('查询');
                },
                error:function(data){
                    alert("Error!");
                }
            });
        }
    }
</script>
<!-- 导出表-->
<script type="text/javascript">
    function exportHVtable(){
        var tableid = "hvtable";
        exportToExcel(tableid);
    }
    function exportHCtable(){
        var tableid = "hctable";
        exportToExcel(tableid);
    }
    function exportHVCRateTable(){
        var tableid = "hvcRateTable";
        exportToExcel(tableid);
    }
    function searchHis(){
        var tableid = "syntable";
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

</body>

</html>