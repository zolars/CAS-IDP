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
    <base href="<%=basePath%>">

    <title>IDP数据中心动力管控系统</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
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
    <link href="css/jstree-default/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/header.css">

    <link href="css/buttons.css" rel="stylesheet">

    <style>
        .outer {
            width: 200px;
            height: 30px;
            position: relative;
            display: inline-block;
        }

        .searchButton {
            display: inline-block;
        }

        .searchInput {
            box-sizing: border-box;
            width: 200px;
            height: 25px;
        }

        .tips {
            position: absolute;
            top: 25px;
            left: 0;
            width: 200px;
            height: 120px;
            overflow: scroll;
            border: 1px solid #cccccc;
            z-index: 100000;
            background: white;
            color: black;
        }

        .tips-item:hover {
            background: #4e7bff;
        }

        #userinfotable {
            width: 100%;
        }

        .item-container {
            width: 100%;
        }

        .item-btn-container {
            width: 100%;
            padding: 20px;
        }

        .item-btn-item {
            width: 70px;
        }

        .item-btn-item-widther {
            width: 100px;
        }

        .table-container {
            height: 500px;
            overflow: scroll;
        }

        .inputblack {
            color: #0c0c0c;
        }

        .vrla-img {
            width: 100px;
            height: 80px;
        }

        .vrla-text {
            width: 100px;
            height: 10px;
            text-align: center;
        }

        .location-select-item {
            width: 120px;
            margin-right: 12px;
        }

        .online-battery {
            display: none;
            width: 750px;
            height: 620px;
            background: rgba(0, 0, 0, .9);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            z-index: 2000;
            border-radius: 20px;
            padding: 30px;
        }

        .divheader, .divcontent, .divfooter {
            margin: 0 auto;
            width: 100%;
        }

        /* 以上代码设置三个共用样式 */
        .divheader {
            border: 1px solid #F00;
            height: 30px
        }

        .divcontent {
            border: 1px solid #FF0;
            height: 350px
        }

        .divfooter {
            border: 1px solid #00F;
            height: 400px
        }
    </style>
</head>

<body id="skin-blur-blue">

<!--告警弹窗-->
<script type="text/javascript" src="js/websocketconnect.js"></script>
<!-- echarts -->
<script src="js/echarts.js"></script>

<script>
    var allUserList = null;
</script>

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>

<!-- PNotify -->
<script type="text/javascript" src="js/pnotify.custom.min.js"></script>
<link href="css/pnotify.custom.min.css" rel="stylesheet" type="text/css"/>

<%
    String userid = (String) session.getAttribute("userid");
    if (userid == null) {
%>
<script>
    alert('您还未登录或您的认证已过期, 请先登陆.');
    window.location.href = <%=basePath%>+'index.jsp';
</script>
<%
    }
%>


<script Language="JavaScript" src="js/onlineDataInterface.js"></script>

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
                <a class="header-logout" href="/index.jsp">注销</a>
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
    <div id="content" class="container">

        <!-- Main Widgets -->
        <div class="block-area">
            <div class="row">
                <div class="col-md-12">
                    <ul class="nav nav-tabs" id="ulItem">
                        <li class="active" style="width:12.5%;">
                            <a data-toggle="tab" id="subItem1">UPS</a>
                        </li>
                        <li style="width:12.5%">
                            <a data-toggle="tab" id="subItem2">发电机</a>
                        </li>
                        <li style="width:12.5%">
                            <a data-toggle="tab" id="subItem3">蓄电池</a>
                        </li>
                        <li style="width:12.5%">
                            <a data-toggle="tab" id="subItem4">空调</a>
                        </li>
                        <li style="width:12.5%">
                            <a data-toggle="tab" id="subItem5">温湿度检测</a>
                        </li>
                        <li style="width:12.5%">
                            <a data-toggle="tab" id="subItem6">线缆管理</a>
                        </li>
                        <li style="width:12.5%">
                            <a data-toggle="tab" id="subItem7">空调管理</a>
                        </li>
                    </ul>

                    <div id="item1" class="col-md-2 col-xs-6 item-container"
                         style="background: white; border-radius: 0 0 15px 15px;">
                        <div class="row">
                            <div id="mp-div" class="pull-left location-select item-position">
                                <select class="form-control location-select-item" id="monitorpnt" name="monitorpnt"
                                        onclick="getMonitorPoints()" value="选择检测点">
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <!--上传并显示图片-管理员专属-->
                            <div class="col-md-2 col-xs-6 chart-item-gray"
                                 style=" width: 25%;height: 200px;-webkit-tap-highlight-color: transparent; user-select: none; position: relative;color: #0c0c0c;">
                                <img id="preview" src="upload/ElectricImg.jpg" alt="" width="100%;" height="175px;"/>
                                <form action="uploadOne" method="post" enctype="multipart/form-data">
                                    <a class="file">选择文件
                                        <input type="file" name="uploadFile" onchange="uploadImage(this)">
                                    </a>
                                    <a id="submit" style="display:none;" class="file">上传
                                        <input type="submit">
                                    </a>
                                </form>
                            </div>

                            <div id="chart-status" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:25%; height: 200px; color: #0c0c0c;">
                                图例:正常<img src="img/success.png"/> 报警 <img src="img/err.png"/><br/>
                                市电故障：<img src="img/success.png"/> 整流器故障：<img src="img/success.png"/><br/>
                                旁路故障：<img src="img/err.png"/> 逆变器故障：<img src="img/err.png"/><br/>
                            </div>

                            <div id="chart-uuu" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:40%; height: 400px;">
                                <div class="row chart-item" id="item1-graph" style="height: 250px;"></div>
                                <table>
                                    <thead>
                                    <td></td>
                                    <td>输入线电压</td>
                                    <td></td>
                                    <td>输出电流</td>
                                    <td>输出电压</td>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Uab</td>
                                        <td><input id="N1" class="inputblack">V</td>
                                        <td>A相</td>
                                        <td><input id="I1" class="inputblack">A</td>
                                        <td><input id="U1" class="inputblack">V</td>
                                    </tr>
                                    <tr>
                                        <td>Ubc</td>
                                        <td><input id="N2" class="inputblack">V</td>
                                        <td>B相</td>
                                        <td><input id="U2" class="inputblack">A</td>
                                        <td><input id="I2" class="inputblack">V</td>
                                    </tr>
                                    <tr>
                                        <td>Uac</td>
                                        <td><input id="N3" class="inputblack">V</td>
                                        <td>C相</td>
                                        <td><input id="I3" class="inputblack">A</td>
                                        <td><input id="U3" class="inputblack">V</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="row">
                            <div id="chart-s1" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:20%; height: 150px;color: #0c0c0c">

                            </div>
                            <div id="chart-s2" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:20%; height: 150px;color: #0c0c0c">

                            </div>
                            <div id="chart-s3" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:20%; height:150px;color: #0c0c0c">

                            </div>
                            <div id="chart-s4" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:20%; height: 150px;color: #0c0c0c;font-size: 20px">
                                后备时间 <br/>
                                001.68 <br/>
                                Min <br/>
                            </div>
                        </div>

                    </div>

                    <div id="item2" style="background: white; border-radius: 0 0 15px 15px; height:580px;">

                    </div>

                    <div id="item3" style="background: white; border-radius: 0 0 15px 15px; height:580px;">
                        <div class="row" style="padding-left: 50px;"> xialak</div>
                        <div class="row" style="padding-left: 50px;" id="power-row1">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                        </div>
                        <div class="row" style="padding-left: 50px;">
                            <table style="color: #0c0c0c;">
                                <tr>
                                    <td class="vrla-text">1</td>
                                    <td class="vrla-text">2</td>
                                    <td class="vrla-text">3</td>
                                    <td class="vrla-text">4</td>
                                    <td class="vrla-text">5</td>
                                    <td class="vrla-text">6</td>
                                    <td class="vrla-text">7</td>
                                    <td class="vrla-text">8</td>
                                    <td class="vrla-text">9</td>
                                    <td class="vrla-text">10</td>
                                    <td class="vrla-text">11</td>
                                    <td class="vrla-text">12</td>
                                </tr>
                            </table>
                        </div>
                        <div class="row" id="power-row2" style="padding-left: 50px;">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAgreen.png" class="vrla-img">
                            <img src="img/VRLAred.png" class="vrla-img">
                        </div>
                        <div class="row" style="padding-left: 50px;">
                            <table style="color: #0c0c0c;">
                                <tr>
                                    <td class="vrla-text">13</td>
                                    <td class="vrla-text">14</td>
                                    <td class="vrla-text">15</td>
                                    <td class="vrla-text">16</td>
                                    <td class="vrla-text">17</td>
                                    <td class="vrla-text">18</td>
                                    <td class="vrla-text">19</td>
                                    <td class="vrla-text">20</td>
                                    <td class="vrla-text">21</td>
                                    <td class="vrla-text">22</td>
                                    <td class="vrla-text">23</td>
                                    <td class="vrla-text">24</td>
                                </tr>
                            </table>
                        </div>
                        <div class="row" style="padding-left: 50px;">
                            <table id="params-unb" class="table">
                                <tr>
                                    <td>
                                        <table style="color:black;">
                                            <tr>
                                                <th>电压：</th>
                                                <td>51.0 V</td>
                                                <br/>
                                                <th>平均内阻：</th>
                                                <td>0.4 mΩ</td>
                                            </tr>
                                            <tr>
                                                <th>电流：</th>
                                                <td>208.1 A</td>
                                                <br/>
                                                <th>最高电压：</th>
                                                <td>NO.15</td>
                                            </tr>
                                            <tr>
                                                <th>温度1：</th>
                                                <td>24.6 °C</td>
                                                <br/>
                                                <th>最低电压：</th>
                                                <td>NO.21</td>
                                            </tr>
                                            <tr>
                                                <th>温度2：</th>
                                                <td>28.1 °C</td>
                                                <br/>
                                                <th>最高内阻：</th>
                                                <td>NO.21</td>
                                            </tr>
                                            <tr>
                                                <th>温度3：</th>
                                                <td>25.0 °C</td>
                                                <br/>
                                                <th>最低内阻：</th>
                                                <td>NO.51</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <div id="chart-p1" class="col-md-2 col-xs-6 chart-item-gray"
                                             style="width:150px; height: 150px;"></div>
                                        <div id="chart-p2" class="col-md-2 col-xs-6 chart-item-gray"
                                             style="width:150px; height: 150px;"></div>
                                        <div id="chart-p3" class="col-md-2 col-xs-6 chart-item-gray"
                                             style="width:150px; height: 150px;"></div>
                                    </td>
                                </tr>
                            </table>

                            <!-- cjy 蓄电池-->
                            <button id="onlineanalysis" onclick="getOnlineBatteryData()">实时数据分析</button>
                            <button id="histom" onclick="getHistomData()">柱状图</button>

                            <div id="onlinebattery-div" class="online-battery" style="display: none;border-width: 1px;">
                                <button onclick="closeonlinebattery()" class="button-primary button-pill button-small">
                                    关闭
                                </button>
                                <table>
                                    <thead>
                                    <th>数据编号</th>
                                    <th>电池组号</th>
                                    <th>电池只号</th>
                                    <th>电压/V</th>
                                    <th>内阻/mΩ</th>
                                    <th>温度</th>
                                    <th>时间</th>
                                    <th>首次记录内阻/mΩ</th>
                                    <th>偏差百分比</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>3</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>1</td>
                                        <td>4</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>1</td>
                                        <td>5</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>1</td>
                                        <td>6</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>1</td>
                                        <td>7</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>1</td>
                                        <td>8</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>1</td>
                                        <td>9</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>1</td>
                                        <td>10</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>1</td>
                                        <td>11</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>1</td>
                                        <td>12</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>1</td>
                                        <td>13</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>1</td>
                                        <td>14</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>1</td>
                                        <td>15</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>1</td>
                                        <td>16</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>1</td>
                                        <td>17</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>1</td>
                                        <td>18</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>1</td>
                                        <td>19</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>1</td>
                                        <td>20</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>1</td>
                                        <td>21</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>1</td>
                                        <td>22</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>1</td>
                                        <td>23</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>1</td>
                                        <td>24</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                        <td>0.0</td>
                                        <td>0000 00:00:00</td>
                                        <td>0.00</td>
                                        <td>0.00</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="onlinebattery-div2" class="online-battery"
                                 style="display: none;border-width: 1px;">
                                <button onclick="closeonlinebattery2()" class="button-primary button-pill button-small">
                                    关闭
                                </button>
                                <div id="eventbar1" style="width:700px; height: 300px;">
                                </div>
                                <div id="eventbar2" style="width:700px; height: 300px;">
                                </div>
                            </div>

                            <script type="text/javascript">
                                function getOnlineBatteryData() {
                                    $('#onlinebattery-div').css('display', 'block');

                                    $.ajax({
                                        type: "post",
                                        url: "getOnlineBatteryData",
                                        dataType: "json",
                                        data: {
                                            did: '8'
                                        },
                                        async: false,
                                        success: function (result) {
                                            console.log("sucss");


                                        }
                                    });
                                }

                                function closeonlinebattery() {
                                    $('#onlinebattery-div').css('display', 'none');
                                }

                                function getHistomData() {
                                    $('#onlinebattery-div2').css('display', 'block');

                                    $.ajax({
                                        type: "post",
                                        url: "getOnlineBatteryData",
                                        dataType: "json",
                                        data: {
                                            did: '8'
                                        },
                                        async: false,
                                        success: function (result) {
                                            console.log("sucss");

                                        }
                                    });
                                }

                                function closeonlinebattery2() {
                                    $('#onlinebattery-div2').css('display', 'none');
                                }

                                var eventChart1 = echarts.init(document.getElementById('eventbar1'));
                                var eventChart2 = echarts.init(document.getElementById('eventbar2'));

                                var option1 = {
                                    color: ['#1c9a4c'],
                                    xAxis: {
                                        type: 'category',
                                        data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24']
                                    },
                                    yAxis: {
                                        type: 'value'
                                    },
                                    series: [{
                                        data: [2.1, 2.0, 2.13, 2.39, 2.14, 2.11, 2.130, 2.1, 2.0, 2.13, 2.39, 2.14, 2.11, 2.130, 2.1, 2.0, 2.13, 2.39, 2.14, 2.11, 2.130, 2.1, 2, 02],
                                        type: 'bar'
                                    }]
                                };
                                var option2 = {
                                    color: ['#1c9a4c'],
                                    xAxis: {
                                        type: 'category',
                                        data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24']
                                    },
                                    yAxis: {
                                        type: 'value'
                                    },
                                    series: [{
                                        data: [2.1, 2.0, 2.13, 2.39, 2.14, 2.11, 2.130, 2.1, 2.0, 2.13, 2.39, 2.14, 2.11, 2.130, 2.1, 2.0, 2.13, 2.39, 2.14, 2.11, 2.130, 2.1, 2, 02],
                                        type: 'bar'
                                    }]
                                };

                                eventChart1.setOption(option1);
                                eventChart2.setOption(option2);

                            </script>
                            <!-- cjy 蓄电池-->

                        </div>
                    </div>

                    <div id="item4" class="col-md-2 col-xs-6 item-container"
                         style="background: white; border-radius: 0 0 15px 15px; height:580px;">
                        <div class="row"></div>
                        <div class="row" style="color: black;">
                            温湿度
                            <div class="col-md-2 col-xs-6 chart-item-gray" style="width:45%; height: 230px;">
                                <div id="ktjc-bar1" class="col-md-3 col-xs-6 chart-item"
                                     style="width: 35%;height: 200px;">
                                </div>
                                <table style="width: 20%;height: 200px;">
                                    <tbody>
                                    <tr>
                                        <th>回风温度</th>
                                        <td>93.12 ℃</td>
                                        <br/>
                                        <th>温度设定值</th>
                                        <td>8.12 ℃</td>
                                    </tr>
                                    <tr>
                                        <th>回风湿度</th>
                                        <td>20.22 %</td>
                                        <br/>
                                        <th>湿度设定值</th>
                                        <td>75.22 %</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            空调温湿度变化曲线
                            <div id="chart-ktwd" class="col-md-2 col-xs-6 chart-item-gray"
                                 style="width:40%; height: 450px;">
                                <div class="row chart-item" id="item-ktwd" style="height: 250px;"></div>
                                图例:正常<img src="img/success.png"/> 报警 <img src="img/err.png"/><br/>
                                过滤网阻塞：<img src="img/success.png"/> 压缩机高压：<img src="img/success.png"/>加湿器故障：<img
                                    src="img/success.png"/><br/>
                                风机状态：<img src="img/err.png"/> 压缩机低压：<img src="img/err.png"/><br/>
                                风机过敏：<img src="img/err.png"/> 压缩机2高压：<img src="img/err.png"/><br/>
                                气流丢失：<img src="img/err.png"/> 压缩机2低压：<img src="img/err.png"/><br/>
                            </div>
                        </div>
                        <div class="row">
                            <table>
                                <tbody>
                                <tr>
                                    <th>加热/制冷</th>
                                    <th>加湿/除湿</th>
                                    <th> 风机</th>
                                    <th> 风机</th>
                                </tr>
                                <tr>
                                    <td><img src="img/hot.jpg"/></td>
                                    <td><img src="img/wet.jpg"/></td>
                                    <td><img src="img/fengji.jpg"/></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <script type="text/javascript">
                            var min = [0, 0, 0];
                            var max = [220, 100, 10];
                            var splitNumber = [11, 5, 5];

                            var eventChart1 = echarts.init(document.getElementById('ktjc-bar1'));
                            var eventChart2 = echarts.init(document.getElementById('item-ktwd'));
                            var option1 = {
                                tooltip: {},
                                toolbox: {
                                    show: false
                                },
                                series: [{
                                    name: '温度',
                                    type: 'gauge',
                                    center: ['35%', '50%'],
                                    z: 3,
                                    min: min[0],
                                    max: max[0],
                                    startAngle: 270,
                                    endAngle: 0,
                                    splitNumber: splitNumber[0],
                                    radius: '60%',
                                    axisLine: {
                                        lineStyle: {
                                            width: 2
                                        }
                                    },
                                    axisTick: {
                                        length: 1,
                                        lineStyle: {
                                            color: 'auto'
                                        }
                                    },
                                    splitLine: {
                                        length: 5,
                                        lineStyle: {
                                            color: 'auto'
                                        }
                                    },
                                    axisLabel: {},
                                    title: {
                                        fontWeight: 'bolder',
                                        fontSize: 15,
                                        offsetCenter: [0, '80%']
                                    },
                                    pointer: {
                                        width: 3
                                    },
                                    detail: {
                                        fontSize: 20,
                                        offsetCenter: [0, '65%']
                                    },
                                    data: [{
                                        value: 40.1,
                                        name: '温度'
                                    }]
                                }, {
                                    name: '湿度',
                                    type: 'gauge',
                                    center: ['50%', '60%'],
                                    radius: '45%',
                                    startAngle: 90,
                                    endAngle: -145,
                                    min: min[1],
                                    max: max[1],
                                    splitNumber: splitNumber[1],
                                    axisLine: {
                                        lineStyle: {
                                            width: 2
                                        }
                                    },
                                    axisTick: {
                                        length: 1,
                                        lineStyle: {
                                            color: 'auto'
                                        }
                                    },
                                    splitLine: {
                                        length: 4,
                                        lineStyle: {
                                            color: 'auto'
                                        }
                                    },
                                    pointer: {
                                        width: 2
                                    },
                                    title: {
                                        fontSize: 15,
                                        offsetCenter: [0, '130%']
                                    },
                                    detail: {
                                        fontSize: 20,
                                        offsetCenter: [0, '65%']
                                    },
                                    data: [{
                                        value: 32.2,
                                        name: '湿度'
                                    }]
                                }]
                            };
                            var option2 = {
                                tooltip: {
                                    trigger: 'axis'
                                },
                                legend: {
                                    data: ['温度', '湿度']
                                },
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
                                    {
                                        name: '温度',
                                        type: 'line',
                                        showSymbol: false,
                                        hoverAnimation: false,
                                        data: Recordtem,
                                        encode: {x: "time", y: "温度"}
                                    },
                                    {
                                        name: '湿度',
                                        type: 'line',
                                        showSymbol: false,
                                        hoverAnimation: false,
                                        data: Recordwet,
                                        encode: {x: "time", y: "湿度"}
                                    }
                                ]
                            };
                            eventChart1.setOption(option1);
                            eventChart2.setOption(option2);

                            var Recordtem = []; //
                            var Recordwet = []; //
                            setInterval(function () {
                                getTemWet();
                            }, 1000);

                            function getTemWet() {
                                var did = $("#monitorpnt").val();

                                if (did != null && did != "") {
                                    $.ajax({
                                        type: "post",
                                        url: "getTemWet",
                                        data: {did: did},
                                        dataType: "json",
                                        success: function (data) {
                                            addData(JSON.parse(data));
                                            updateTemWet();
                                        }
                                    });
                                }
                            }

                            function addData(newRecord) {
                                // 构造1条记录
                                var time = new Date();

                                var tem = newRecord["allU"][0]["tem"].toFixed(2);
                                var wet = newRecord["allU"][0]["wet"].toFixed(2);

                                if (Recordtem.length >= 72) {  //页面最多放每72条数据
                                    Recordtem.shift();
                                    Recordwet.shift();
                                }

                                Recordtem.push({name: time, value: [time, tem]});
                                Recordwet.push({name: time, value: [time, wet]});
                            }

                            // 更新Uabc图
                            function updateTemWet() {
                                eventChart2.setOption({
                                    series: [
                                        {data: Recordtem},
                                        {data: Recordwet}
                                    ]
                                });
                            }

                        </script>
                    </div>

                    <div id="item5" style="background: white; border-radius: 0 0 15px 15px; height:580px;">
                    </div>

                    <div id="item6" style="background: white; border-radius: 0 0 15px 15px; height:580px;">
                    </div>

                    <div id="item7" style="background: white; border-radius: 0 0 15px 15px; height:580px;">
                    </div>

                    <div id="noticecon">
                        <table align="right">
                            <tr>

                            </tr>

                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Javascript Libraries -->
<script type="text/javascript">
    $(document).ready(function () {
        $.get("./css/serial number.xml", function (data) {
            //console.log(data);
            $(data).find("taxrate").each(function () {
                var Person = $(this);
                var titles = Person.find("lab").text();
                var links = Person.find("num").text();
                console.log(titles + '-----');
                $("#noticecon").find('tr').append('<td><lable >' + titles + '</lable></td><td><lable>' + links + '</lable></td>');

            });

        });
    })
</script>
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
<script src="js/jstree.js"></script>
<script src="js/echarts/echarts.min.js"></script>
<script src="js/echarts.js"></script>

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
                    } else
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
                    } else
                        $('#comproom_code').append("<option value='" + list[i].rid + "' >" + list[i].rname + "</option>");
                }
            }
        });
    }

</script>

<!-- 动态加载菜单项 -->
<script type="text/javascript">
    var menulist = "<%=session.getAttribute("menulist")%>";
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

    for (var i = 0; i < cbidstr.length; i++) {

        var menuname = "";
        if (cbidstr[i] == " province.jsp") {
            isSystemMng = false;
            menuname = "集中监控";
        } else if (cbidstr[i] == " efficiencyInstruction.jsp") {
            isSystemMng = false;
            menuname = "动力设施";
        } else if (cbidstr[i] == " onlineDetect.jsp") {
            isSystemMng = false;
            menuname = "在线监测";
        } else if (cbidstr[i] == ' efficiencyAnalysis.jsp') {
            isSystemMng = false;
            menuname = "动力分析";
        }
        /*else if(cbidstr[i] == ' efficiencyAssessment.jsp'){
            isSystemMng = false;
            menuname = "动力评估";
        }*/
        else if (cbidstr[i] == ' reportChart.jsp') {
            isSystemMng = false;
            menuname = "报表功能";
        } else if (cbidstr[i] == ' history.jsp') {
            isSystemMng = false;
            menuname = "历史曲线";
        } else if (cbidstr[i].search('systemMng.jsp')) {

            //对字符串分段处理（2或3段）
            var substr = cbidstr[i].split("/");

            if (substr.length == 2) {
                ulist.push(substr[1]);
            } else {
                ulist.push(substr[1]);
                u2list.push(substr[2]);
            }

            if (!isNewSystemMng) {//第一条systemMng的
                isNewSystemMng = true;
                menuname = "系统管理";
                $('#ulbar').append("<li><a href='systemMng.jsp' id='menuurl'>" + menuname + "</a></li>");
            }
            isSystemMng = true;
        }
        if (!isSystemMng) $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'>" + menuname + "</a></li>");
    }

    for (var i = 1; i <= 8; i++) {
        var ustr = "item" + i;

        for (var j = 0; j < ulist.length; j++) {
            if (ustr == ulist[j]) {
                break;
            }
            if (j == ulist.length - 1) {
                $("#" + ustr + "").remove();
            }
        }
    }

    for (var i = 1; i <= 9; i++) {
        var ustr;
        if (i < 7)
            ustr = "secsubItem" + i;
        else
            ustr = "tridsubItem" + i;

        for (var j = 0; j < u2list.length; j++) {
            if (ustr == u2list[j]) {
                break;
            }
            if (j == u2list.length - 1) {
                $("#" + ustr + "").remove();
            }
        }
    }

</script>

<!-- 切换子菜单-->
<script type="text/javascript">
    $("#item1").show();
    $("#item2").hide();
    $("#item3").hide();
    $("#item4").hide();
    $("#item5").hide();
    $("#item6").hide();
    $("#item7").hide();

    $(document).ready(function () {
        $("#subItem1").click(function () {
            $("#item1").show();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
        });
        $("#subItem2").click(function () {
            $("#item1").hide();
            $("#item2").show();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
        });
        $("#subItem3").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").show();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
        });
        $("#subItem4").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").show();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
        });
        $("#subItem5").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").show();
            $("#item6").hide();
            $("#item7").hide();
        });
        $("#subItem6").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").show();
            $("#item7").hide();
        });
        $("#subItem7").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").show();
        });
    });
</script>

<!-- 切换子菜单subItem效果-->
<script type="text/javascript">
    $(function () {
        $("#ulItem li").click(function () {
            $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式selected
            $(this).addClass('active');                            // 添加当前元素的样式
        });
    });
</script>

<!-- 上传图片功能 -->
<script>
    // 上传图片前预览
    function uploadImage(file) {
        $("#submit").css('display', 'inline-block');
        var userrole = "<%=session.getAttribute("userrole")%>";
        if (userrole === "1") {
            var MAXWIDTH = 1200;  // 最大图片宽度
            var MAXHEIGHT = 360;  // 最大图片高度
            if (file.files && file.files[0]) {
                var img = document.getElementById('preview');
                img.onload = function () {
                    var rect = getZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                    img.width = rect.width;
                    img.height = rect.height;
                };
                var reader = new FileReader();
                reader.onload = function (evt) {
                    img.src = evt.target.result;
                };
                reader.readAsDataURL(file.files[0]);
            } else {
                //兼容IE
                alert("您的浏览器版本过低, 可能会出现一些页面bug.");
                file.select();
                var src = document.selection.createRange().text;
                var img = document.getElementById('preview');
                img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            }
        } else {
            alert("抱歉, 您没有权限进行此操作, 请联系管理员!")
        }
    }

    // 获取缩放的尺寸
    function getZoomParam(maxWidth, maxHeight, width, height) {
        var param = {top: 0, left: 0, width: width, height: height};
        if (width > maxWidth || height > maxHeight) {
            rateWidth = width / maxWidth;
            rateHeight = height / maxHeight;
            if (rateWidth > rateHeight) {
                param.width = maxWidth;
                param.height = Math.round(height / rateWidth);
            } else {
                param.width = Math.round(width / rateHeight);
                param.height = maxHeight;
            }
        }
        param.left = Math.round((maxWidth - param.width) / 2);
        param.top = Math.round((maxHeight - param.height) / 2);
        return param;
    }
</script>

<script>

    var ttt = 111;

    //获取检测点列表
    function getMonitorPoints() {

        var computerroom = $("#comproom_code option:selected").val();
        var mpcname = $("#monitorpnt").val();

        if (!computerroom) {
            alert("请先选择机房，再选择检测点");
        } else if (!mpcname) { //若没有获取过，获取
            var hisvalue = $('#his-mpid-select').val();

            if (hisvalue == null) {
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
                                $('#monitorpnt').append("<option value='" + rt[i].did + "' selected='selected'>" + rt[i].name + "</option>");
                            else
                                $('#monitorpnt').append("<option value='" + rt[i].did + "' >" + rt[i].name + "</option>");
                        }
                    }
                });
            }
        }
    }


    //负载率
    var eventCharts1 = echarts.init(document.getElementById('chart-s1'));
    var eventCharts2 = echarts.init(document.getElementById('chart-s2'));
    var eventCharts3 = echarts.init(document.getElementById('chart-s3'));

    var options1 = {
        title: {
            text: '负载率',
            textStyle: {
                fontSize: 20,
                color: '#000'
            }
        },
        color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [{
            type: 'category',
            data: [''],
            axisTick: {
                alignWithLabel: true
            }
        }],
        yAxis: [{
            type: 'value'
        }],
        series: [
            //backgorond label
            {
                name: '',
                type: 'bar',
                barWidth: '10%',
                data: [50],
                itemStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 0, 1,
                            [
                                {
                                    offset: 0,
                                    color: 'rgba(255, 0, 0, 1)'
                                }, //定义颜色
                                {
                                    offset: 0.5,
                                    color: 'rgba(255, 255, 0, 1)'
                                },
                                {
                                    offset: 1,
                                    color: 'rgba(0, 255, 0, 1)'
                                }
                            ]
                        )
                    }
                }
            }]
    };
    var options2 = {
        title: {
            text: '电池电压',
            textStyle: {
                fontSize: 20,
                color: '#000'
            }
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} %'
        },
        series: [
            {
                name: '仪表盘',
                type: 'gauge',
                startAngle: 180,
                endAngle: 0,
                data: [{value: '15.79', name: ''}],
                radius: '80%',
                center: ['50%', '50%'],
                min: 0,
                max: 700,
                splitNumber: 2,
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        width: 10,
                        color: [[0.2, '#62c87f'], [0.8, '#5d9cec'], [1, '#f15755']]
                    }
                },
                axisTick: {            // 坐标轴小标记
                    length: 13,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: 'auto'
                    }
                },
                splitLine: {           // 分隔线
                    length: 18,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        color: 'auto'
                    }
                },
                axisLabel: {
                    color: '#666',
                },
                detail: {
                    formatter: '{value}V',
                    fontSize: 24,
                    offsetCenter: [0, '85%']
                },
                title: {
                    fontSize: 12,
                    color: '#999',
                    offsetCenter: [0, '55%']
                },
                pointer: {
                    width: 3            // 指针大小
                }
            }
        ]
    };
    var options3 = {
        title: {
            text: '输出频率',
            textStyle: {
                fontSize: 20,
                color: '#000'
            }
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} %'
        },
        series: [
            {
                name: '仪表盘',
                type: 'gauge',
                startAngle: '265',
                endAngle: '-85',
                data: [{value: '65.79', name: ''}],
                radius: '80%',
                center: ['50%', '50%'],
                min: 40,
                max: 70,
                splitNumber: 10,
                axisLine: {            // 坐标轴线
                    lineStyle: {       // 属性lineStyle控制线条样式
                        width: 5,
                        //  color: [[0.2, '#62c87f'], [0.8, '#5d9cec'], [1, '#f15755']]
                    }
                },
                axisTick: {            // 坐标轴小标记
                    length: 13,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle控制线条样式
                        color: 'auto'
                    }
                },
                splitLine: {           // 分隔线
                    length: 5,        // 属性length控制线长
                    lineStyle: {       // 属性lineStyle（详见lineStyle）控制线条样式
                        color: 'auto'
                    }
                },
                axisLabel: {
                    color: '#666',
                },
                detail: {
                    formatter: '{value}V',
                    fontSize: 24,
                    offsetCenter: [0, '85%']
                },
                title: {
                    fontSize: 12,
                    color: '#999',
                    offsetCenter: [0, '55%']
                },
                pointer: {
                    width: 2            // 指针大小
                }
            }
        ]
    };

    eventCharts1.setOption(options1);
    eventCharts2.setOption(options2);
    eventCharts3.setOption(options3);

    //power
    var eventChartp1 = echarts.init(document.getElementById('chart-p1'));
    var eventChartp2 = echarts.init(document.getElementById('chart-p2'));
    var eventChartp3 = echarts.init(document.getElementById('chart-p3'));

    var optionp1 = {
        backgroundColor: "#ffffff",
        color: ["#37A2DA", "#32C5E9", "#67E0E3"],
        series: [{
            name: '业务指标',
            type: 'gauge',
            detail: {
                formatter: '{value}V'
            },
            axisLine: {
                show: true,
                lineStyle: {
                    width: 3,
                    shadowBlur: 0,
                    color: [
                        [0.3, '#67e0e3'],
                        [0.7, '#37a2da'],
                        [1, '#fd666d']
                    ]
                }
            },
            splitLine: {
                length: 5,
                lineStyle: {
                    color: 'auto'
                }
            },
            detail: {
                fontSize: 20
            },
            data: [{
                value: 50,
                name: '电压',
            }]
        }]
    };
    var optionp2 = {
        backgroundColor: "#ffffff",
        color: ["#37A2DA", "#32C5E9", "#67E0E3"],
        series: [{
            name: '业务指标',
            type: 'gauge',
            detail: {
                formatter: '{value}A'
            },
            axisLine: {
                show: true,
                lineStyle: {
                    width: 3,
                    shadowBlur: 0,
                    color: [
                        [0.3, '#67e0e3'],
                        [0.7, '#37a2da'],
                        [1, '#fd666d']
                    ]
                }
            },
            splitLine: {
                length: 5,
                lineStyle: {
                    color: 'auto'
                }
            },
            detail: {
                fontSize: 20
            },
            data: [{
                value: 43,
                name: '电流',
            }]
        }]
    };
    var optionp3 = {
        backgroundColor: "#ffffff",
        color: ["#37A2DA", "#32C5E9", "#67E0E3"],
        series: [{
            name: '业务指标',
            type: 'gauge',
            detail: {
                formatter: '{value}℃'
            },
            axisLine: {
                show: true,
                lineStyle: {
                    width: 3,
                    shadowBlur: 0,
                    color: [
                        [0.3, '#67e0e3'],
                        [0.7, '#37a2da'],
                        [1, '#fd666d']
                    ]
                }
            },
            splitLine: {
                length: 5,
                lineStyle: {
                    color: 'auto'
                }
            },
            detail: {
                fontSize: 20
            },
            data: [{
                value: 30,
                name: '温度',
            }]
        }]
    };

    eventChartp1.setOption(optionp1);
    eventChartp2.setOption(optionp2);
    eventChartp3.setOption(optionp3);

</script>


<script>

    function randomData() {
        now = new Date(+now + oneDay);
        value = value + Math.random() * 21 - 10;
        return {
            name: now.toString(),
            value: [
                [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
                Math.round(value)
            ]
        }
    }

    var data = [];
    var Recordu1 = []; //
    var Recordu2 = []; //
    var Recordu3 = []; //
    var now = +new Date(1997, 9, 3);
    var oneDay = 24 * 3600 * 1000;
    var value = Math.random() * 1000;
    for (var i = 0; i < 1000; i++) {
        data.push(randomData());
    }
    // echarts图表容器
    var eventChart1 = echarts.init(document.getElementById('item1-graph'));
    var option1 = {
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['Uab', 'Ubc', 'Uac']
        },
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
            {
                name: 'Uab',
                type: 'line',
                showSymbol: false,
                hoverAnimation: false,
                data: Recordu1,
                encode: {x: "time", y: "Uab"}
            },
            {
                name: 'Ubc',
                type: 'line',
                showSymbol: false,
                hoverAnimation: false,
                data: Recordu2,
                encode: {x: "time", y: "Ubc"}
            },
            {
                name: 'Uac',
                type: 'line',
                showSymbol: false,
                hoverAnimation: false,
                data: Recordu3,
                encode: {x: "time", y: "Uac"}
            }
        ]
    };
    eventChart1.setOption(option1);

    setInterval(function () {
        getUabc();
        getValueUI();
    }, 1000);

    function getUabc() {
        var did = $("#monitorpnt").val();

        if (did != null && did != "") {
            $.ajax({
                type: "post",
                url: "getUabc",
                data: {did: did},
                dataType: "json",
                success: function (data) {
                    addData(JSON.parse(data));
                    updateUabc();
                }
            });
        }
    }

    function addData(newRecord) {
        // 构造1条记录
        var time = new Date();

        var U1 = newRecord["allU"][0]["u1"].toFixed(2);
        var U2 = newRecord["allU"][0]["u2"].toFixed(2);
        var U3 = newRecord["allU"][0]["u3"].toFixed(2);

        if (Recordu1.length >= 72) {  //页面最多放每72条数据
            Recordu1.shift();
            Recordu2.shift();
            Recordu3.shift();
        }

        Recordu1.push({name: time, value: [time, U1]});
        Recordu2.push({name: time, value: [time, U2]});
        Recordu3.push({name: time, value: [time, U3]});
    }

    // 更新Uabc图
    function updateUabc() {
        eventChart1.setOption({
            series: [
                {data: Recordu1},
                {data: Recordu2},
                {data: Recordu3}
            ]
        });
    }

    function getValueUI() {
        var did = $("#monitorpnt").val();

        if (did != null && did != "") {
            $.ajax({
                type: "post",
                url: "getValueUI",
                data: {did: did},
                dataType: "json",
                success: function (data) {
                    var newRecord = JSON.parse(data);

                    var U1 = newRecord["allU"][0]["u1"].toFixed(2);
                    var U2 = newRecord["allU"][0]["u2"].toFixed(2);
                    var U3 = newRecord["allU"][0]["u3"].toFixed(2);

                    var I1 = newRecord["allU"][0]["i1"].toFixed(2);
                    var I2 = newRecord["allU"][0]["i2"].toFixed(2);
                    var I3 = newRecord["allU"][0]["i3"].toFixed(2);

                    $("#U1").attr("value", U1);
                    $("#U2").attr("value", U2);
                    $("#U3").attr("value", U3);
                    $("#I1").attr("value", I1);
                    $("#I2").attr("value", I2);
                    $("#I3").attr("value", I3);
                }
            });
        }
    }

</script>

</body>

</html>