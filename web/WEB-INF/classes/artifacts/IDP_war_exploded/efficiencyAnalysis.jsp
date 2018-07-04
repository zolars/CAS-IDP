<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s"%>


<!--<!DOCTYPE html>-->
<!--[if IE 9 ]><!--<html class="ie9"><![endif]-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>能效分析</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-3.3.4.css">
    <link href="css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="js/font-awesome.4.6.0.css">
    <link href="css/form.css" rel="stylesheet">
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.hotspot.css">
    <link href="css/menu.css" rel="stylesheet">

    <!-- Ztree -->
    <%--<link rel="stylesheet" href="/css/zTree/demo.css" type="text/css">--%>
    <link rel="stylesheet" href="/css/zTree/zTreeStyle/zTreeStyle.css" type="text/css">

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
        <a class="logo pull-left" href="province.jsp">移动能效管理平台</a>

        <div class="media-body">
            <div class="media" id="top-menu">

                <div class="pull-left">
                    <ul id="treeDemo" class="ztree"></ul>
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
                <li>
                    <a href="province.jsp" id='menuurl'>
                        <i class="fa fa-calendar-o"></i>
                        <span> 集中监控</span>
                    </a>
                </li>
                <li>
                    <a href="deviceManager.jsp" id='menuurl'>
                        <!-- 设备管理 -->
                        <i class="fa fa-briefcase"></i>
                        <span> 动力设施</span>
                    </a>
                </li>
                <li>
                    <a href="onlineDetect.jsp" id='menuurl'>
                        <i class="fa fa-bar-chart-o"></i>
                        <span> 在线监测 </span>
                    </a>
                </li>
                <li class="active">
                    <a href="efficiencyAnalysis.jsp" id='menuurl'>
                        <!-- 能耗统计 -->
                        <i class="fa fa-sort-amount-asc"></i>
                        <span>动力分析 </span>
                    </a>
                </li>
                <li>
                    <a href="mstp_map.jsp" id='menuurl'>
                        <i class="fa fa-bar-chart-o"></i>
                        <span> 动力评估</span>
                    </a>
                </li>
                <li>
                    <a href="energy_consumption.jsp" id='menuurl'>
                        <i class="fa fa-building-o"></i>
                        <span> 报表功能</span>
                    </a>
                </li>
                <li>
                    <a href="userMng.jsp" id='menuurl'>
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
                                <img width="40" src="img/profile-pics/1.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">调度班长 - 2分钟前</small>
                                <br>
                                <a class="t-overflow" href="">空调系统数据采集异常，请工作人员检查。</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/2.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专员 - 15分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公室供暖系统出现异常，无法提供正常供暖，请排除故障!</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">自动化班长 - 3小时前</small>
                                <br>
                                <a class="t-overflow" href="">能源费用分布图以及报表数据有误差，请核对</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/4.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 3小时前</small>
                                <br>
                                <a class="t-overflow" href="">锅炉房水温过高，告警系统启动，请及时查看.</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/1.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 4小时前</small>
                                <br>
                                <a class="t-overflow" href="">请各部门提供上周能耗统计数据，本周将针对关键能耗点进行技术优化</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/2.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专员 - 5小时前</small>
                                <br>
                                <a class="t-overflow" href="">自动化班提供1#机房总耗电量远远超过预测值，请再次核对数据并及时告知！</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 6小时前</small>
                                <br>
                                <a class="t-overflow" href="">请提供“人均空调系统能耗”和“制冷系统能效比”两组数据</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/4.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室专责 - 6小时前</small>
                                <br>
                                <a class="t-overflow" href="">请调度班提供2#机房和3#基站的能耗统计数据.</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/5.png" alt="">
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
                                <img width="40" src="img/profile-pics/1.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 35秒前</small>
                                <br>
                                <a class="t-overflow" href="">供暖系统能耗数据采集异常</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/3.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">调度值班室 - 1分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公照明系统出现故障，请立即检修！</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 2分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公区空调1#机组无法正常工作，异响</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/4.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专责 - 3分钟前</small>
                                <br>
                                <a class="t-overflow" href="">1#制冷站中级故障告警，请立即前往查看</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/4.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 4分钟前</small>
                                <br>
                                <a class="t-overflow" href="">冷机用电量突变，请查看是否故障</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/2.jpg" alt="">
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

            <!-- Main Widgets -->

            <div class="block-area">
                <div class="row">
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
        </section>

        <!-- Older IE Message -->
        <!--[if lt IE 9]>
                <div class="ie-block">
                    <h1 class="Ops">Ooops!</h1>
                    <p>You are using an outdated version of Internet Explorer, upgrade to any of the following web browser in order to access the maximum functionality of this website. </p>
                    <ul class="browsers">
                        <li>
                            <a href="https://www.google.com/intl/en/chrome/browser/">
                                <img src="img/browsers/chrome.png" alt="">
                                <div>Google Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.mozilla.org/en-US/firefox/new/">
                                <img src="img/browsers/firefox.png" alt="">
                                <div>Mozilla Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com/computer/windows">
                                <img src="img/browsers/opera.png" alt="">
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://safari.en.softonic.com/">
                                <img src="img/browsers/safari.png" alt="">
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/downloads/ie-10/worldwide-languages">
                                <img src="img/browsers/ie.png" alt="">
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
    <script src="js/jquery-1.10.2.js"></script>
    <!-- jQuery Library -->
    <script src="js/jquery-ui-1.11.0.js"></script>
    <!-- jQuery UI -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

    <!-- Bootstrap -->
    <script src="js/bootstrap-3.3.4.js"></script>

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
    <script src="js/enchart.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#consumptionDate").datetimepicker({
                lang: 'en', endDate: "Today",
                format: 'Y-m-d',
                datepicker: true,
                timepicker: false
            });
            $("#conditionerDate").datetimepicker({
                lang: 'ch', endDate: "Today",
                format: 'Y-m-d',
                datepicker: true,
                timepicker: false
            });
            $("#lineDate").datetimepicker({
                lang: 'ch', endDate: "Today",
                format: 'Y-m-d',
                datepicker: true,
                timepicker: false            
});
            $("#EERDate").datetimepicker({
                lang: 'ch', endDate: "Today",
                format: 'Y-m',
                datepicker: true,
                timepicker: false            
});
        });
    </script>

    <script type="text/javascript" src="/js/zTree/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/js/zTree/jquery.ztree.core.js"></script>

    <script>

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

    </script>


</body>

</html>