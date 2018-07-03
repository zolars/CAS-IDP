<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s"%>

<!--[if IE 9 ]><!--<html class="ie9"><![endif]-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>移动能效管理平台</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-3.3.4.css">
    <link href="/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="js/font-awesome.4.6.0.css">
    <link href="css/form.css" rel="stylesheet">
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.hotspot.css">
    <link href="css/menu.css" rel="stylesheet">
    <link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css" />

    <!-- Ztree -->
    <%--<link rel="stylesheet" href="/css/zTree/demo.css" type="text/css">--%>
    <link rel="stylesheet" href="/css/zTree/zTreeStyle/zTreeStyle.css" type="text/css">

    <!-- bootstrap datepicker时间选择控件 -->
    <link rel="stylesheet" type="text/css" href="/assets/datepicker/css/bootstrap-datepicker.css">




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

<style>
    #Layer1 {
        font-size: 13px;
        position: absolute;
        left: 925px;
        top: 45px;
        width: 95px;
        height: 16px;
        z-index: 1;
    }
</style>

<body id="skin-blur-blue">

    <header id="header" class="media">
        <a href="" id="menu-toggle"></a>
        <a class="logo pull-left" href="province.jsp">移动能效管理平台</a>

        <div class="media-body">
            <div class="media" id="top-menu">

                <div class="pull-left">
                    <%-- <ul id="treeDemo" class="ztree"></ul>--%>
                    <%-- </pre><pre name="code" class="html"><tr>--%>
                        <td>
                            <select class="select" id="province_code" name="province_code" onchange="getCity()">
                                <option value="">请选择</option>
                            </select>

                            <select class="select" id="city_code" name="city_code" onchange="getComproom()">
                                <option value="">请选择</option>
                            </select>

                            <select class="select" id="comproom_code" name="comproom_code">
                                <option value="">请选择</option>
                            </select>
                        </td>
                        </tr>

                </div>

                <div class="pull-right">欢迎用户${username}登录</div>

            </div>
        </div>
    </header>

    <div class="clearfix"></div>

    <section id="main" class="p-relative" role="main">

        <!-- Sidebar -->
        <aside id="sidebar">
            <ul class="list-unstyled side-menu" style="width: 100%!important;padding-top: 20px;">


                <li class="active">
                    <a href="province.jsp" id='menuurl'>
                        <i class="fa fa-calendar-o"></i>
                        <span> 集中监控</span>
                    </a>
                </li>
                <li>
                    <a href="/deviceManager.jsp" id='menuurl'>
                        <!-- 设备管理 -->
                        <i class="fa fa-briefcase"></i>
                        <span> 动力设施</span>
                    </a>
                </li>
                <li>
                    <a href="/onlineDetect.jsp" id='menuurl'>
                        <i class="fa fa-bar-chart-o"></i>
                        <span> 在线监测 </span>
                    </a>
                </li>
                <li>
                    <a href="/efficiencyAnalysis.jsp" id='menuurl'>
                        <!-- 能耗统计 -->
                        <i class="fa fa-sort-amount-asc"></i>
                        <span> 动力分析 </span>
                    </a>
                </li>
                <li>
                    <a href="/mstp_map.jsp" id='menuurl'>
                        <i class="fa fa-bar-chart-o"></i>
                        <span> 动力评估</span>
                    </a>
                </li>
                <li>
                    <a href="/energy_consumption.jsp" id='menuurl'>
                        <i class="fa fa-building-o"></i>
                        <span> 报表功能</span>
                    </a>
                </li>
                <li>
                    <a href="/userMng.jsp" id='menuurl'>
                        <i class="fa fa-users"></i>
                        <span> 用户管理</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="" id='menuurl'>
                        <i class="fa fa-cogs"></i>
                        <span> 系统设置</span>
                    </a>
                </li>
            </ul>

        </aside>


        <!-- Content -->
        <section id="content" class="container">

            <!-- Messages Drawer -->
            <div id="messages" class="tile drawer animated">
                <div class="listview narrow">
                    <div class="media">
                        <a href="">新消息</a>
                        <span class="drawer-close">&times;</span>

                    </div>
                    <div class="overflow" style="height: 254px">
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/1.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">调度班长 - 2分钟前</small>
                                <br>
                                <a class="t-overflow" href="">空调系统数据采集异常，请工作人员检查。</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专员 - 15分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公室供暖系统出现异常，无法提供正常供暖，请排除故障!</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">自动化班长 - 3小时前</small>
                                <br>
                                <a class="t-overflow" href="">能源费用分布图以及报表数据有误差，请核对</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/4.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 3小时前</small>
                                <br>
                                <a class="t-overflow" href="">锅炉房水温过高，告警系统启动，请及时查看.</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/1.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 4小时前</small>
                                <br>
                                <a class="t-overflow" href="">请各部门提供上周能耗统计数据，本周将针对关键能耗点进行技术优化</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专员 - 5小时前</small>
                                <br>
                                <a class="t-overflow" href="">自动化班提供1#机房总耗电量远远超过预测值，请再次核对数据并及时告知！</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 6小时前</small>
                                <br>
                                <a class="t-overflow" href="">请提供“人均空调系统能耗”和“制冷系统能效比”两组数据</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/4.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室专责 - 6小时前</small>
                                <br>
                                <a class="t-overflow" href="">请调度班提供2#机房和3#基站的能耗统计数据.</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/5.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">网管中心 - 7小时前</small>
                                <br>
                                <a class="t-overflow" href="">今天凌晨将进行断网检修，请各部门及时下载相关材料</a>
                            </div>
                        </div>
                    </div>
                    <div class="media text-center whiter l-100">
                        <a href="">
                            <small>查看所有</small>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Notification Drawer -->
            <div id="notifications" class="tile drawer animated">
                <div class="listview narrow">
                    <div class="media">
                        <a href="">实时告警</a>
                        <span class="drawer-close">&times;</span>
                    </div>
                    <div class="overflow" style="height: 254px">
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/1.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 35秒前</small>
                                <br>
                                <a class="t-overflow" href="">供暖系统能耗数据采集异常</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/3.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">调度值班室 - 1分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公照明系统出现故障，请立即检修！</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 2分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公区空调1#机组无法正常工作，异响</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/4.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专责 - 3分钟前</small>
                                <br>
                                <a class="t-overflow" href="">1#制冷站中级故障告警，请立即前往查看</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/4.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 4分钟前</small>
                                <br>
                                <a class="t-overflow" href="">冷机用电量突变，请查看是否故障</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室专责 - 5分钟前</small>
                                <br>
                                <a class="t-overflow" href="">新风系统告警，无法正常工作</a>
                            </div>
                        </div>
                    </div>
                    <div class="media text-center whiter l-100">
                        <a href="">
                            <small>查看所有</small>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Breadcrumb -->
            <ol class="breadcrumb hidden-xs">
                <li>
                    <a href="#">主页</a>
                </li>
                <li>
                    <a href="#">系统总览</a>
                </li>
                <li class="active">首页</li>
            </ol>

            <h4 class="page-title">实时能耗</h4>

            <hr class="whiter" />

            <!-- Quick Stats -->
            <div class="block-area">
                <!-- Time choose -->
                <div class="row">
                    <label for="firstDate">开始日期</label>
                    <div class="input-group date start_date_picker">
                        <input size="18" type="text" id="firstDate" name="queryStartDate" value="2017-7-8" class="form-control" readonly placeholder="开始日期">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar">
                            </span>
                        </span>
                    </div>
                    <label for="lastDate">结束日期</label>
                    <div class="input-group date end_date_picker">
                        <input size="18" type="text" id="lastDate" name="queryEndDate" value="2017-7-10" class="form-control" readonly placeholder="结束日期">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar">
                            </span>
                        </span>
                    </div>
                </div>


                <div class="row">
                    <div id="eventbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>

                    <div id="alarmbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>

                    <div id="assessbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;text-align:center">
                        <table id="assesstable"  cellspacing="0" cellpadding="0" >
                            <tr><td>评估结果</td></tr>
                            <tr><td>1</td><td></td><td>2</td><td></td><td>3</td><td></td><td>4</td></tr>
                            <tr><td>1</td><td></td><td>2</td><td></td><td>3</td><td></td><td>4</td></tr>
                            <tr><td>1</td><td></td><td>2</td><td></td><td>3</td><td></td><td>4</td></tr>
                            <tr><td>1</td><td></td><td>2</td><td></td><td>3</td><td></td><td>4</td></tr>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div id="nxbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>

                    <div id="nhbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>

                    <div id="nullbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>
                </div>

            </div>

            <hr class="whiter" />

            <!-- Main Widgets -->

            <div class="block-area">
                <div class="row">
                    <div class="col-md-8">
                        <!-- Main Chart -->
                        <div class="tile">
                            <h2 class="tile-title">用电总量统计(kW·h)</h2>
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
                            <div class="p-10">
                                <div id="line-chart" class="main-chart" style="height: 250px"></div>

                                <div class="chart-info">
                                    <ul class="list-unstyled">
                                        <li class="m-b-10">
                                            今日用电总量(kW·h)
                                            <span class="pull-right text-muted t-s-0">
                                                <i class="fa fa-chevron-up"></i>
                                                +12%
                                            </span>
                                        </li>
                                        <li>
                                            <small>
                                                空调系统用电 640(kW·h)
                                                <span class="pull-right text-muted t-s-0">
                                                    <i class="fa m-l-15 fa-chevron-down"></i> -8%</span>
                                            </small>
                                            <div class="progress progress-small">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                    style="width: 40%"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <small>
                                                供暖系统用电 560(kW·h)
                                                <span class="pull-right text-muted t-s-0">
                                                    <i class="fa m-l-15 fa-chevron-up"></i>
                                                    -3%
                                                </span>
                                            </small>
                                            <div class="progress progress-small">
                                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 60%"></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Pies -->
                        <!--<div class="tile text-center">-->
                        <!--<div class="tile-dark p-10">-->
                        <!--<div class="pie-chart-tiny" data-percent="86,453">-->
                        <!--<span class="percent"></span>-->
                        <!--<span class="pie-title">访问用户 <i class="m-l-5 fa fa-retweet"></i></span>-->
                        <!--</div>-->
                        <!--<div class="pie-chart-tiny" data-percent="23">-->
                        <!--<span class="percent"></span>-->
                        <!--<span class="pie-title">能耗占用率<i class="m-l-5 fa fa-retweet"></i></span>-->
                        <!--</div>-->
                        <!--<div class="pie-chart-tiny" data-percent="57">-->
                        <!--<span class="percent"></span>-->
                        <!--<span class="pie-title">空调系统 <i class="m-l-5 fa fa-retweet"></i></span>-->
                        <!--</div>-->
                        <!--<div class="pie-chart-tiny" data-percent="34">-->
                        <!--<span class="percent"></span>-->
                        <!--<span class="pie-title">供暖系统 <i class="m-l-5 fa fa-retweet"></i></span>-->
                        <!--</div>-->
                        <!--<div class="pie-chart-tiny" data-percent="81">-->
                        <!--<span class="percent"></span>-->
                        <!--<span class="pie-title">用气量统计 <i class="m-l-5 fa fa-retweet"></i></span>-->
                        <!--</div>-->
                        <!--</div>-->
                        <!--</div>-->

                        <!--  Recent Postings -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="tile">
                                    <h2 class="tile-title">重要通知</h2>
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

                                    <div class="listview narrow">
                                        <div class="media p-l-5">
                                            <div class="pull-left">
                                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/1.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <small class="text-muted">2小时前 来自 供暖调度班</small>
                                                <br/>
                                                <a class="t-overflow" href="">供暖系统故障已排除</a>

                                            </div>
                                        </div>
                                        <div class="media p-l-5">
                                            <div class="pull-left">
                                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <small class="text-muted">5小时前 来自 办公室</small>
                                                <br/>
                                                <a class="t-overflow" href="">照明系统昨晚出现故障，请检修</a>

                                            </div>
                                        </div>
                                        <div class="media p-l-5">
                                            <div class="pull-left">
                                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/3.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <small class="text-muted">25/02/2016 来自 办公室</small>
                                                <br/>
                                                <a class="t-overflow" href="">请各部门上传昨天的能耗统计报表</a>

                                            </div>
                                        </div>
                                        <div class="media p-l-5">
                                            <div class="pull-left">
                                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/4.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <small class="text-muted">26/02/2016 来自 自动化班</small>
                                                <br/>
                                                <a class="t-overflow" href="">空调系统能耗报表上传</a>

                                            </div>
                                        </div>
                                        <div class="media p-l-5">
                                            <div class="pull-left">
                                                <img width="40" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/5.png" alt="">
                                            </div>
                                            <div class="media-body">
                                                <small class="text-muted">26/02/2016 来自 调度班长</small>
                                                <br/>
                                                <a class="t-overflow" href="">请各单位检查新风系统运行状况并上报</a>

                                            </div>
                                        </div>
                                        <div class="media p-5 text-center l-100">
                                            <a href="">
                                                <small>查看所有</small>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Tasks to do -->
                            <div class="col-md-6">
                                <div class="tile">
                                    <h2 class="tile-title">待办事项</h2>
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

                                    <div class="listview todo-list sortable">
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox"> 检查办公楼新风系统机组运行状况
                                                </label>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox"> 空调系统能耗监测报告提交
                                                </label>
                                            </div>

                                        </div>
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox"> 处理办公楼照明系统告警
                                                </label>
                                            </div>

                                        </div>
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox"> 输出全面的能源审计报告
                                                </label>
                                            </div>

                                        </div>
                                    </div>

                                    <h2 class="tile-title">已完成</h2>

                                    <div class="listview todo-list sortable">
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox" checked="checked"> 建筑总能耗报表生成
                                                </label>
                                            </div>

                                        </div>
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox" checked="checked"> 根据主管部门的能源数据监测要求，上报能耗数据。
                                                </label>
                                            </div>

                                        </div>
                                        <div class="media">
                                            <div class="checkbox m-0">
                                                <label class="t-overflow">
                                                    <input type="checkbox" checked="checked"> 能耗单元统计
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="col-md-4">
                        <!-- USA Map -->
                        <div class="tile">
                            <h2 class="tile-title">能耗热点图</h2>
                            <div class="tile-config dropdown">
                                <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                <ul class="dropdown-menu pull-right text-right">
                                    <li>
                                        <a href="">Refresh</a>
                                    </li>
                                    <li>
                                        <a href="">Settings</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="container" id="container1">
                                <div class="popover right pop1" data-easein="cardInRight" data-easeout="cardOutRight" id="pop1">
                                    <div class="arrow"></div>
                                    <div class="popover-inner">
                                        <h3 class="popover-title">
                                            <a data-toggle="modal" href="#modalWider">1#基站能耗数据异常</a>
                                        </h3>
                                        <div class="popover-content">
                                            <p>1#基站2机房温度过高.</p>
                                            <p>请速派专人查看！</p>
                                            <!--<img src="img/Nova4.png" alt="small" style="width: 1008px;height: 586px;"/>-->
                                        </div>
                                    </div>
                                </div>

                                <div class="popover top pop2" data-easein="cardInTop" data-easeout="cardOutTop" id="pop2">
                                    <div class="arrow"></div>
                                    <div class="popover-inner">
                                        <h3 class="popover-title">
                                            <a data-toggle="modal" href="#modalWider1">能耗采集异常</a>
                                        </h3>
                                        <div class="popover-content">
                                            <p>基站办公大楼供暖系统出现异常数据.</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="popover left pop3" data-easein="cardInLeft" data-easeout="cardOutLeft" id="pop3">
                                    <div class="arrow"></div>
                                    <div class="popover-inner">
                                        <h3 class="popover-title">
                                            <a data-toggle="modal" href="#modalWider2">营业厅供暖故障</a>
                                        </h3>
                                        <div class="popover-content">
                                            <p>西宁市营业厅大厅新风系统故障，过温告警，请查看！.</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="popover bottom pop4" data-easein="cardInBottom" data-easeout="cardOutBottom" id="pop4">
                                    <div class="arrow"></div>
                                    <div class="popover-inner">
                                        <h3 class="popover-title">
                                            <a data-toggle="modal" href="#modalWider3">空调系统告警</a>
                                        </h3>
                                        <div class="popover-content">
                                            <p>办公室空调系统告警. 请关闭暂时无人办公场所的空调.
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <img src="../../IDP数据中心动力管控系统/bank%20admin/img/mapmaker.png" alt="info" class="info-icon info-icon1" data-target="pop1" />
                                <img src="../../IDP数据中心动力管控系统/bank%20admin/img/mapmaker.png" alt="info" class="info-icon info-icon2" data-target="pop2" />
                                <img src="../../IDP数据中心动力管控系统/bank%20admin/img/mapmaker.png" alt="info" class="info-icon info-icon3" data-target="pop3" />
                                <img src="../../IDP数据中心动力管控系统/bank%20admin/img/mapmaker.png" alt="info" class="info-icon info-icon4" data-target="pop4" />
                                <!--<embed style="z-index: 9999;" class="info-icon info-icon5" align=center src=img/swf/Red_glow.swf type=application/x-shockwave-flash wmode="transparent" quality="high" ;> </embed>-->
                                <img src="../../IDP数据中心动力管控系统/bank%20admin/img/qinghai.png" alt="" class="largeimage">

                            </div>
                        </div>

                        <!-- Dynamic Chart -->
                        <div class="tile">
                            <h2 class="tile-title">照明系统能耗实时监测</h2>
                            <div class="tile-config dropdown">
                                <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                <ul class="dropdown-menu pull-right text-right">
                                    <li>
                                        <a href="">Refresh</a>
                                    </li>
                                    <li>
                                        <a href="">Settings</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="p-t-10 p-r-5 p-b-5">
                                <div id="dynamic-chart" style="height: 200px"></div>
                            </div>

                        </div>

                        <!-- Activity -->
                        <div class="tile">
                            <h2 class="tile-title">能耗实时排名</h2>
                            <div class="tile-config dropdown">
                                <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                <ul class="dropdown-menu pull-right text-right">
                                    <li>
                                        <a href="">Refresh</a>
                                    </li>
                                    <li>
                                        <a href="">Settings</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="listview narrow">

                                <div class="media">
                                    <div class="pull-right">
                                        <div class="counts-lv1">785879</div>
                                    </div>
                                    <div class="media-body">
                                        <h6>空调系统</h6>
                                    </div>
                                </div>

                                <div class="media">
                                    <div class="pull-right">
                                        <div class="counts-lv2">56312</div>
                                    </div>
                                    <div class="media-body">
                                        <h6>供暖系统</h6>
                                    </div>
                                </div>

                                <div class="media">
                                    <div class="pull-right">
                                        <div class="counts-lv3">36312</div>
                                    </div>
                                    <div class="media-body">
                                        <h6>照明系统</h6>
                                    </div>
                                </div>

                                <div class="media">
                                    <div class="pull-right">
                                        <div class="counts-lv4">7832</div>
                                    </div>
                                    <div class="media-body">
                                        <h6>办公设备</h6>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="pull-right">
                                        <div class="counts-lv5">368</div>
                                    </div>
                                    <div class="media-body">
                                        <h6>其他</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- Modal Wider -->
            <div class="modal fade" id="modalWider" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">1#基站2机房能耗数据采集异常</h4>
                        </div>
                        <img src="../../IDP数据中心动力管控系统/bank%20admin/img/Nova4.png" alt="" />

                    </div>
                </div>
            </div>
            <div class="modal fade" id="modalWider1" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">能耗采集异常</h4>
                        </div>
                        <img src="img/Nova3.png" alt="" />

                    </div>
                </div>
            </div>
            <div class="modal fade" id="modalWider2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">营业厅供暖异常</h4>
                        </div>
                        <img src="img/Nova2.png" alt="" />

                    </div>
                </div>
            </div>
            <div class="modal fade" id="modalWider3" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">空调系统异常</h4>
                        </div>
                        <img src="img/Nova1.png" alt="" />

                    </div>
                </div>
            </div>
            <!-- Chat -->
            <div class="chat">

                <!-- Chat List -->
                <div class="pull-left chat-list">
                    <div class="listview narrow">
                        <div class="media">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/1.png" width="30" alt="">
                            <div class="media-body p-t-5">
                                调度班长
                            </div>
                        </div>
                        <div class="media">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.png" width="30" alt="">
                            <div class="media-body">
                                <span class="t-overflow p-t-5">调度员</span>
                            </div>
                        </div>
                        <div class="media">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/3.png" width="30" alt="">
                            <div class="media-body">
                                <span class="t-overflow p-t-5">办公室值班员</span>
                            </div>
                        </div>
                        <div class="media">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/4.png" width="30" alt="">
                            <div class="media-body">
                                <span class="t-overflow p-t-5">网管员</span>
                            </div>
                        </div>
                        <div class="media">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/5.png" width="30" alt="">
                            <div class="media-body">
                                <span class="t-overflow p-t-5">值班专员</span>
                            </div>
                        </div>
                        <div class="media">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/6.png" width="30" alt="">
                            <div class="media-body">
                                <span class="t-overflow p-t-5">新风系统管理员</span>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Chat Area -->
                <div class="media-body">
                    <div class="chat-header">
                        <a class="btn btn-sm" href="">
                            <i class="fa fa-circle-o status m-r-5"></i> 实时聊天
                        </a>
                    </div>

                    <div class="chat-body">
                        <div class="media">
                            <img class="pull-right" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/1.png" width="30" alt="" />
                            <div class="media-body pull-right">
                                你好，
                                <br/> 请提供空调系统检查报表
                                <small>我 - 10:20:45</small>
                            </div>
                        </div>

                        <div class="media pull-left">
                            <img class="pull-left" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.png" width="30" alt="" />
                            <div class="media-body" style="background: #00CD00;">
                                报表正在导出，稍后上传
                                <br/>请注意查收
                                <small>调度班长 - 10:21:13</small>
                            </div>
                        </div>

                        <div class="media pull-right">
                            <img class="pull-right" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.png" width="30" alt="" />
                            <div class="media-body">
                                供暖系统出现告警
                                <br/>请安排相关人员去检查一下
                                <small>我 - 10:23:11</small>
                            </div>
                        </div>

                        <div class="media pull-right">
                            <img class="pull-right" src="../../IDP数据中心动力管控系统/bank%20admin/img/profile-pics/2.jpg" width="30" alt="" />
                            <div class="media-body">
                                有人知道为什么空调系统不工作吗(┬＿┬)？
                                <small>我 - 10:25:23</small>
                            </div>
                        </div>

                    </div>

                    <div class="chat-footer media">
                        <i class="chat-list-toggle pull-left fa fa-bars"></i>
                        <i class="pull-right fa fa-picture-o"></i>
                        <div class="media-body">
                            <textarea class="form-control" placeholder="请输入..."></textarea>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Older IE Message -->
        <!--[if lt IE 9]>
        <div class="ie-block">
            <h1 class="Ops">Ooops!</h1>
            <p>You are using an outdated version of Internet Explorer, upgrade to any of the following web browser in
                order to access the maximum functionality of this website. </p>
            <ul class="browsers">
                <li>
                    <a href="https://www.google.com/intl/en/chrome/browser/">
                        <img src="../../IDP数据中心动力管控系统/bank%20admin/img/browsers/chrome.png" alt="">
                        <div>Google Chrome</div>
                    </a>
                </li>
                <li>
                    <a href="http://www.mozilla.org/en-US/firefox/new/">
                        <img src="../../IDP数据中心动力管控系统/bank%20admin/img/browsers/firefox.png" alt="">
                        <div>Mozilla Firefox</div>
                    </a>
                </li>
                <li>
                    <a href="http://www.opera.com/computer/windows">
                        <img src="../../IDP数据中心动力管控系统/bank%20admin/img/browsers/opera.png" alt="">
                        <div>Opera</div>
                    </a>
                </li>
                <li>
                    <a href="http://safari.en.softonic.com/">
                        <img src="../../IDP数据中心动力管控系统/bank%20admin/img/browsers/safari.png" alt="">
                        <div>Safari</div>
                    </a>
                </li>
                <li>
                    <a href="http://windows.microsoft.com/en-us/internet-explorer/downloads/ie-10/worldwide-languages">
                        <img src="../../IDP数据中心动力管控系统/bank%20admin/img/browsers/ie.png" alt="">
                        <div>Internet Explorer(New)</div>
                    </a>
                </li>
            </ul>
            <p>Upgrade your browser for a Safer and Faster web experience. <br/>Thank you for your patience...</p>
        </div>
        <![endif]-->
    </section>

    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <!-- jQuery Library -->
    <script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script>
    <!-- jQuery UI -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/jquery.easing.1.3.js"></script>
    <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

    <!-- Bootstrap -->
    <script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

    <!-- Charts -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/charts/jquery.flot.js"></script>
    <!-- Flot Main -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/charts/jquery.flot.time.js"></script>
    <!-- Flot sub -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/charts/jquery.flot.animator.min.js"></script>
    <!-- Flot sub -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/charts/jquery.flot.resize.min.js"></script>
    <!-- Flot sub - for repaint when resizing the screen -->

    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/sparkline.min.js"></script>
    <!-- Sparkline - Tiny charts -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/easypiechart.js"></script>
    <!-- EasyPieChart - Animated Pie Charts -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/charts.js"></script>
    <!-- All the above chart related functions -->

    <!-- Map -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/maps/jvectormap.min.js"></script>
    <!-- jVectorMap main library -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/maps/usa.js"></script>
    <!-- USA Map for jVectorMap -->

    <!--Media Player-->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/media-player.min.js"></script>
    <!-- USA Map for jVectorMap -->

    <!--  Form Related -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/icheck.js"></script>
    <!-- Custom Checkbox + Radio -->

    <!-- UX -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/scroll.min.js"></script>
    <!-- Custom Scrollbar -->

    <!-- Other -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/calendar.min.js"></script>
    <!-- Calendar -->
    <!--<script src="js/feeds.min.js"></script> &lt;!&ndash; News Feeds &ndash;&gt;-->
    <!--HotSpot of pic-->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/modernizr.custom.49511.js"></script>
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/jquery.hotspot.min.js"></script>

    <!-- All JS functions -->
    <script src="../../IDP数据中心动力管控系统/bank%20admin/js/functions.js"></script>

    <!-- 加上这个实时消息无法显示，不知原因 -->
    <script type="text/javascript" src="../../IDP数据中心动力管控系统/bank%20admin/js/pick-pcc.min.1.0.1.js"></script>




   <%-- <script type="text/javascript" src="/js/zTree/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/js/zTree/jquery.ztree.core.js"></script>--%>

   <%-- <script>
        var provinceid = getQueryString("prov");
        //alert(provinceid);
        if(provinceid){//第一次进入这个页面，没有获取过树结构
            //var provinceid = getQueryString("prov");
            //alert("if");

            $.ajax({
                type : "post",
                url : "getUserTree", //"getUserTree.UserTreeAction",//action
                data : {
                    //"username" : $("#username").val(),
                    provinceid //: $("#provinceid").val()//val()
                },
                //dataType : "text",
                dataType : "json",
                success : function(data){
                    //alert("data: "+data);

                    var obj = eval("(" + data + ")");

                    /*alert(obj.probank);
                    alert(obj.citybank);
                    alert(obj.coputerroom);*/

                    //render usertree
                    /* dataSource.provincebank = obj.probank;
                     dataSource.citybank = obj.citybank;
                     dataSource.computerroom = obj.computerroom;*/

                    // alert(obj.computerroom);
                    // alert(dataSource.computerroom);
                    /* document.getElementById('title1').innerHTML = dataSource.provincebank;
                     document.getElementById('title2').innerHTML = dataSource.citybank;
                     document.getElementById('title3').innerHTML = dataSource.computerroom;*/

                    var zTreeObj;
                    // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
                    var setting = {};
                    // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
                    var zNodes = [
                        {name:obj.probank, open:true, children:[
                                {name:obj.citybank, open:true, children:[
                                        {name:obj.computerroom}
                                    ]
                                }
                            ]
                        }
                    ];

                    $(document).ready(function(){
                        zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
                    });

                    /* //LIST
                    alert("data: "+data);
                    var datas = eval(data); //解析json对象
                    alert(datas);

                    for (var key in datas) {
                        alert(datas[key]);
                    }*/

                    /* //MAP
                     alert("data: "+data);
                     var datas = eval("("+data+")"); //解析json对象
                     //alert(datas);
                     for (var key in datas) {
                         alert(datas[key]);
                     }*/


                },
                error : function(XMLHttpRequest, textStatus) {
                    alert(XMLHttpRequest.readyState+"--------"+XMLHttpRequest.status+ "--------"+textStatus);
                    //4--------200--------parsererror
                }
            });
        }
        else{//已经获取过了树结构
           // alert("else");
            var objprobank="<%=session.getAttribute("probank")%>";
            var objcitybank="<%=session.getAttribute("citybank")%>";
            var objcomputerroom="<%=session.getAttribute("computerroom")%>";

            /*var objcitybank2 = objcitybank.list;
            alert(objcitybank2);

            for(var key=0; key<objcitybank2.length; key++) {
                var temp = objcitybank2[key];
                console.log(temp);
            }
            alert(objcitybank2);*/

            var zTreeObj;
            // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
            var setting = {};
            // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
            var zNodes = [
                {name:objprobank, open:true, children:[
                        {name:objcitybank, open:true, children:[
                                {name:objcomputerroom}
                            ]
                        }
                    ]
                }
            ];

            $(document).ready(function(){
                zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
            });
        }
    </script>--%>

    <script>
        function getQueryString(name) {
            var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
            if (result == null || result.length < 1) {
                return "";
            }
            //对第一个结果进行URI解码
            return decodeURI(result[1]);
            //return result[1];
        }
    </script>
    <script>
        var provinceid = getQueryString("prov");
        if(provinceid){//第一次进入这个页面，没有获取过
            alert(provinceid);
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

    <script src="js/echarts.js"></script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var eventChart = echarts.init(document.getElementById('eventbar'));
        var alarmChart = echarts.init(document.getElementById('alarmbar'));
        var nxChart = echarts.init(document.getElementById('nxbar'));
        var nhChart = echarts.init(document.getElementById('nhbar'));

        // 指定图表的配置项和数据
        var eventoption = {
            title: {
                text: '事件'
            },
            tooltip: {},
            xAxis: {
                data: ["石家庄","保定","廊坊","唐山"]
            },
            yAxis: {},
            series: [{
                name: '个数',
                type: 'bar',
                itemStyle:{
                    normal:{
                        color:'#3EA3D8'
                    }
                },
                data: [5, 20, 36, 10]
            }]
        };

        // 指定图表的配置项和数据
        var alarmoption = {
            title: {
                text: '告警'
            },
            tooltip: {},
            xAxis: {
                data: ["石家庄","保定","廊坊","唐山"]
            },
            yAxis: {},
            series: [{
                name: '个数',
                type: 'bar',
                data: [5, 20, 36, 10]
            }]
        };

        // 指定图表的配置项和数据
        var nxoption = {
            title: {
                text: '能效'
            },
            tooltip: {},
            xAxis: {
                data: ["石家庄","保定","廊坊","唐山"]
            },
            yAxis: {},
            series: [{
                name: '个数',
                type: 'bar',
                itemStyle:{
                    normal:{
                        color:'#44764B'
                    }
                },
                data: [5, 20, 36, 10]
            }]
        };

        // 指定图表的配置项和数据
        var nhoption = {
            title: {
                text: '能耗'
            },
            tooltip: {},
            xAxis: {
                data: ["石家庄","保定","廊坊","唐山"]
            },
            yAxis: {},
            series: [{
                name: '个数',
                type: 'bar',
                itemStyle:{
                    normal:{
                        color:'#9F842F'
                    }
                },
                data: [5, 20, 36, 10]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        eventChart.setOption(eventoption);
        alarmChart.setOption(alarmoption);
        nxChart.setOption(nxoption);
        nhChart.setOption(nhoption);

        //评估数据
        var tb = document.getElementById("assesstable");
        var td11 = tb.rows[1].cells[0];
        var td12 = tb.rows[1].cells[2];
        var td13 = tb.rows[1].cells[4];
        var td14 = tb.rows[1].cells[6];

        var td31 = tb.rows[3].cells[0];
        var td32 = tb.rows[3].cells[2];
        var td33 = tb.rows[3].cells[4];
        var td34 = tb.rows[3].cells[6];

        var td21 = tb.rows[2].cells[0];
        var td22 = tb.rows[2].cells[2];
        var td23 = tb.rows[2].cells[4];
        var td24 = tb.rows[2].cells[6];

        var td41 = tb.rows[4].cells[0];
        var td42 = tb.rows[4].cells[2];
        var td43 = tb.rows[4].cells[4];
        var td44 = tb.rows[4].cells[6];


        // 直接innerHTML
        td11.innerHTML = '<img src="/img/icon/GOOD.jpeg" />';
        td12.innerHTML = '<img src="/img/icon/GOOD.jpeg" />';
        td13.innerHTML = '<img src="/img/icon/BAD.jpeg" />';
        td14.innerHTML = '<img src="/img/icon/BAD.jpeg" />';

        td31.innerHTML = '<img src="/img/icon/BAD.jpeg" />';
        td32.innerHTML = '<img src="/img/icon/GOOD.jpeg" />';
        td33.innerHTML = '<img src="/img/icon/GOOD.jpeg" />';
        td34.innerHTML = '<img src="/img/icon/GOOD.jpeg" />';

        td21.innerHTML = '石家庄';
        td22.innerHTML = '保定';
        td23.innerHTML = '廊坊';
        td24.innerHTML = '唐山';

        td41.innerHTML = '邢台';
        td42.innerHTML = '沧州';
        td43.innerHTML = '秦皇岛';
        td44.innerHTML = '邯郸';

        document.getElementById("assesstable").style.color='#333333'; //table中所有字体颜色设为"#333333"

    </script>

    <script src="/assets/datepicker/js/bootstrap-datepicker.js"></script>
    <script src="/assets/datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
    <script type="text/javascript">
        $(".start_date_picker").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayBtn: "linked",
            language:'zh-CN',
            <%--<c:if test="${!empty user.queryEndDate}">
            endDate: "<fmt:formatDate pattern="yyyy-MM-dd" value="${user.queryEndDate}"/>",
            </c:if>--%>
            pickerPosition: "bottom-left"
        });
        $(".end_date_picker").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            todayBtn: "linked",
            language:'zh-CN',
            pickerPosition: "bottom-left"
        });
        $("#firstDate").change(function() {
            $('.end_date_picker').datepicker('setStartDate', $(this).val());
        });
        $("#lastDate").change(function() {
            $('.start_date_picker').datepicker('setEndDate', $(this).val());
        });
</script>




</body>

</html>