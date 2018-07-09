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

    <title>移动能效管理平台</title>

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
    <link rel="stylesheet" href="css/custom-echart-toolbar.css">

    <!-- Ztree -->
    <%--<link rel="stylesheet" href="/css/zTree/demo.css" type="text/css">--%>
    <link rel="stylesheet" href="/css/zTree/zTreeStyle/zTreeStyle.css" type="text/css">


</head>
<%--<style>
    .selected{font-weight:bold; background: #ff99cc; color:#fff;}
    .active{font-weight:bold; background: #10212E; color:#0ff;}
</style>--%>


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
                    <%--<ul id="treeDemo" class="ztree"></ul>--%>
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
                            <td><button id="test" onclick="test()">测试'谐波'</button></td>
                            <td><button id="test2" onclick="test2()">测试'参数值'</button></td>
                            <td><button id="test3" onclick="test3()">测试'三相电压'</button></td>
                            <td><button id="test4" onclick="test4()">测试"趋势图rms'</button></td>
                            <td><button id="test5" onclick="test5()">测试"趋势图thd'</button></td>
                            <td><button id="test6" onclick="test6()">测试"趋势图cf'</button></td>
                            <td><button id="test7" onclick="test7()">测试"趋势图Hz'</button></td>
                            <td><button id="test8" onclick="test8()">测试"趋势图unb%'</button></td>

                        <td><button id="test9" onclick="test9()">测试"趋势图W'</button></td>
                        <td><button id="test10" onclick="test10()">测试"趋势图VA'</button></td>
                        <td><button id="test11" onclick="test11()">测试"趋势图VAR'</button></td>
                        <td><button id="test12" onclick="test12()">测试"趋势图PF'</button></td>
                        <td><button id="test13" onclick="test13()">测试"趋势图DPF'</button></td>
                        <td><button id="test14" onclick="test14()">测试"趋势图TAN'</button></td>
                        <td><button id="test15" onclick="test15()">测试"趋势图PST'</button></td>
                        <td><button id="test16" onclick="test16()">测试"趋势图PLT'</button></td>

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
                <li class="active">
                    <a href="onlineDetect.jsp" id='menuurl'>
                        <i class="fa fa-bar-chart-o"></i>
                        <span> 在线监测 </span>
                    </a>
                </li>
                <li>
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

            <!-- Breadcrumb -->
            <ol class="breadcrumb hidden-xs">
                <li>
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">指标监控</a>
                </li>
                <li>关键指标</li>
            </ol>


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
                                <table class="table table-bordered">
                                    <caption>基本参数</caption>
                                    <tr>
                                        <th>U1</th>
                                        <td>222.65V</td>
                                    </tr>
                                    <tr>
                                        <th>U2</th>
                                        <td>225.99V</td>
                                    </tr>
                                    <tr>
                                        <th>U3</th>
                                        <td>226.59V</td>
                                    </tr>
                                    <tr>
                                        <th>U4</th>
                                        <td>0.4772V</td>
                                    </tr>
                                    <tr>
                                        <th>I1</th>
                                        <td>57.008A</td>
                                    </tr>
                                    <tr>
                                        <th>I2</th>
                                        <td>63.827A</td>
                                    </tr>
                                    <tr>
                                        <th>I3</th>
                                        <td>51.269A</td>
                                    </tr>
                                    <tr>
                                        <th>I4</th>
                                        <td>2.2547mA</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table class="table table-bordered">
                                    <caption>功率参数</caption>
                                    <tr>
                                        <th></th>
                                        <th>相1</th>
                                        <th>相2</th>
                                        <th>相3</th>
                                        <th>相4</th>
                                    </tr>
                                    <tr>
                                        <th>P(W)</th>
                                        <td>10.961kW</td>
                                        <td>11.980kW</td>
                                        <td>9.1567kW</td>
                                        <td>32.099kW</td>
                                    </tr>
                                    <tr>
                                        <th>Q(Var)</th>
                                        <td>6.2886Var</td>
                                        <td>6.2886Var</td>
                                        <td>6.2886Var</td>
                                        <td>6.2886Var</td>
                                    </tr>
                                    <tr>
                                        <th>S(VA)</th>
                                        <td>12.687kVA</td>
                                        <td>12.687kVA</td>
                                        <td>12.687kVA</td>
                                        <td>12.687kVA</td>
                                    </tr>
                                    <tr>
                                        <th>PF</th>
                                        <td>0.8640</td>
                                        <td>0.8640</td>
                                        <td>0.8640</td>
                                        <td>0.8640</td>
                                    </tr>
                                    <tr>
                                        <th>Cos PHI</th>
                                        <td>0.8683</td>
                                        <td>0.8683</td>
                                        <td>0.8683</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1 col-xs-12">
                                <table class="table table-bordered">
                                    <caption>&nbsp;</caption>
                                    <tr>
                                        <th>不平衡度</th>
                                        <td>0.7301%</td>
                                    </tr>
                                    <tr>
                                        <th>频率</th>
                                        <td>49.984Hz</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table class="table table-bordered">
                                    <caption>闪变</caption>
                                    <tr>
                                        <th></th>
                                        <th>U1</th>
                                        <th>U2</th>
                                        <th>U3</th>
                                    </tr>
                                    <tr>
                                        <th>|f|</th>
                                        <td>0.0856</td>
                                        <td>0.0856</td>
                                        <td>0.0856</td>
                                    </tr>
                                    <tr>
                                        <th>Pst</th>
                                        <td>0.3349</td>
                                        <td>0.3349</td>
                                        <td>0.3349</td>
                                    </tr>
                                    <tr>
                                        <th>Plt</th>
                                        <td>0.4910</td>
                                        <td>0.4910</td>
                                        <td>0.4910</td>
                                    </tr>
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
    <script type="text/javascript" src="js/echarts/echarts.min.js"></script>
    <%--<script type="text/javascript">

        $(document).ready(function () {
            $(".c1").animate({
                height: "70%"
            }, 1000);
            $(".c2").animate({
                height: "50%"
            }, 1000);
            $(".c3").animate({
                height: "33%"
            }, 1000);
            $(".c4").animate({
                height: "23%"
            }, 1000);
            $(".c5").animate({
                height: "13%"
            }, 1000)
            //$('#container1').hotSpot();
        });
        // 基于准备好的dom，初始化echarts实例
        var myChart3 = echarts.init(document.getElementById('energyLost'));
        var option3 = {
            title: {
                text: '2016-02-27'
            },
            tooltip: {
                trigger: 'axis',
                textStyle: { color: '#fff' }
            },
            legend: {
                data: ['单位信息流量综合能耗', '']
            },
            toolbox: {
                show: true,
                feature: {
                    //dataZoom: {},
                    //dataView: {readOnly: false},
                    //magicType: {type: ['line', 'bar']},
                    //restore: {},
                    saveAsImage: {}
                }
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: ['00:00', '04:00', '08:00', '12:00', '16:00', '20:00'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    axisLabel: {
                        formatter: '{value} kgce',
                        textStyle: { color: '#fff' }
                    }
                },
                {
                    type: 'value',
                    axisLabel: {
                        formatter: '{value} °C',
                        textStyle: { color: '#fff' }
                    },
                    splitLine: { show: false },

                }
            ],
            series: [

                {
                    name: '单位信息流量综合能耗',
                    type: 'bar',
                    data: [100, 150, 120, 130, 180, 175],
                    barWidth: '50',
                    itemStyle: {
                        normal: {
                            color: function (params) {
                                // build a color map as your need.
                                var colorList = [
                                    '#C1232B', '#B5C334', '#FCCE10', '#E87C25', '#27727B',
                                    '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
                                    '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
                                ];
                                return colorList[params.dataIndex]
                            },
                            label: {
                                show: true,
                                position: 'top',
                                formatter: '{c}'
                            }
                        }
                    }
                },
                // {
                // name:'温度',
                //  type:'line',
                //  data:[11, 11, 15, 13, 12, 13],
                //   markPoint : {
                //      data : [
                //          {type : 'max', name: '最大值'},
                //          {type : 'min', name: '最小值'}
                //      ],
                //      itemStyle:{normal:{'color':'rgba(250,0,0,0.8)'}}
                //   },
                //  markLine : {
                //      data : [
                //          {type : 'average', name: '平均值'}
                //     ]
                //  },
                //   yAxisIndex: 1
                // }

            ]
        };
        myChart3.setOption(option3);
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('test'));

        // 指定图表的配置项和数据
        var option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                    type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            legend: {
                data: ['主设备能耗', '机房总能耗'],
                textStyle: { color: '#fff' }
            },

            grid: {
                left: '4%',
                right: '4%',
                bottom: '4%',
                containLabel: true
            },

            xAxis: [
                {
                    type: 'category',
                    data: ['机房A', '机房B', '机房C', '机房D', '机房E', '机房F'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }

                }
            ],
            yAxis: [
                {
                    type: 'value',
                    splitLine: {
                        show: true,
                        lineStyle: {
                            width: 1,
                            type: 'dotted'
                        }
                    },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            axis: {
                splitLine: { show: false }
            },
            series: [
                {
                    name: '主设备能耗',
                    type: 'line',
                    stack: 'PUE',
                    itemStyle: { normal: { label: { show: true, position: 'insideRight' } } },
                    data: [16, 10, 20, 13, 12, 15]
                },
                {
                    name: '机房总能耗',
                    type: 'line',
                    stack: 'PUE',
                    itemStyle: { normal: { label: { show: true, position: 'insideRight' } } },
                    data: [14, 7, 16, 11, 9, 12]
                }
            ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

        //营业厅能耗
        var hallChart = echarts.init(document.getElementById('hallLost'));
        var option3 = {
            tooltip: {
                trigger: 'axis',
                textStyle: { color: '#fff' }
            },
            legend: {
                data: ['营业厅能耗', '']
            },
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '4%',
                right: '4%',
                bottom: '4%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: ['营业厅1', '营业厅2', '营业厅3', '营业厅4', '营业厅5', '营业厅6'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    splitNumber: 4,
                    splitLine: {
                        show: true,
                        lineStyle: {
                            width: 1,
                            type: 'dotted'
                        }
                    },
                    axisLabel: {
                        formatter: '{value}',
                        textStyle: { color: '#fff' }
                    }
                }

            ],
            series: [
                {
                    name: '营业厅能耗',
                    type: 'line',
                    data: [10, 7, 19, 13, 18, 20],
                    itemStyle: {
                        normal: {
                            label: {
                                show: true,
                                position: 'top',
                                formatter: '{c}'
                            }
                        }
                    }
                }
            ]
        };
        hallChart.setOption(option3);

        //基站能耗
        var stationChart = echarts.init(document.getElementById('stationLost'));
        var stationOption = {
            tooltip: {
                trigger: 'axis',
                textStyle: { color: '#fff' }
            },
            legend: {
                data: ['基站能耗', '']
            },
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '4%',
                right: '4%',
                bottom: '4%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: ['基站1', '基站2', '基站3', '基站4'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    axisLabel: {
                        formatter: '{value}',
                        textStyle: { color: '#fff' }
                    },
                    splitLine: {
                        show: true,
                        lineStyle: {
                            width: 1,
                            type: 'dotted'
                        }
                    }
                }
            ],
            series: [

                {
                    name: '基站能耗',
                    type: 'bar',
                    data: [100, 150, 120, 80],
                    barWidth: '30',
                    itemStyle: {
                        normal: {
                            color: function (params) {
                                // build a color map as your need.
                                var colorList = [
                                    '#C1232B', '#B5C334', '#FCCE10', '#E87C25', '#27727B',
                                    '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
                                    '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
                                ];
                                return colorList[params.dataIndex]
                            },
                            label: {
                                show: true,
                                position: 'top',
                                formatter: '{c}'
                            }
                        }
                    }
                }
            ]
        };
        stationChart.setOption(stationOption);

        //办公楼总体能耗
        var bChart = echarts.init(document.getElementById('buildingLost'));
        var bOption = {
            tooltip: {
                trigger: 'axis',
                textStyle: { color: '#fff' }
            },
            legend: {
                data: ['办公楼总体能耗', '']
            },
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '4%',
                right: '4%',
                bottom: '4%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: ['办公楼'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    axisLabel: {
                        formatter: '{value}',
                        textStyle: { color: '#fff' }
                    },
                    splitLine: {
                        show: true,
                        lineStyle: {
                            width: 1,
                            type: 'dotted'
                        }
                    }
                }
            ],
            series: [

                {
                    name: '办公楼总体能耗',
                    type: 'bar',
                    data: [300],
                    barWidth: '50',
                    itemStyle: {
                        normal: {
                            color: function (params) {
                                // build a color map as your need.
                                var colorList = [
                                    '#B5C334', '#FCCE10', '#E87C25', '#27727B',
                                    '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
                                    '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
                                ];
                                return colorList[params.dataIndex]
                            },
                            label: {
                                show: true,
                                position: 'top',
                                formatter: '{c}'
                            }
                        }
                    }
                }
            ]
        };
        bChart.setOption(bOption);

        //每层能耗
        var fChart = echarts.init(document.getElementById('floorLost'));
        var fOption = {
            tooltip: {
                trigger: 'axis',
                textStyle: { color: '#fff' }
            },
            legend: {
                data: ['每层能耗', '']
            },
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '4%',
                right: '4%',
                bottom: '4%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: ['-1楼', '1楼', '2楼', '3楼', '4楼', '5楼'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    splitNumber: 4,
                    splitLine: {
                        show: true,
                        lineStyle: {
                            width: 1,
                            type: 'dotted'
                        }
                    },
                    axisLabel: {
                        formatter: '{value}',
                        textStyle: { color: '#fff' }
                    }
                }

            ],
            series: [
                {
                    name: '营业厅能耗',
                    type: 'line',
                    data: [10, 37, 39, 23, 18, 20],
                    itemStyle: {
                        normal: {
                            label: {
                                show: true,
                                position: 'top',
                                formatter: '{c}'
                            }
                        }
                    }
                }
            ]
        };
        fChart.setOption(fOption);
        //部门能耗
        var dChart = echarts.init(document.getElementById('departmentLost'));
        var dOption = {
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b}: {c}kwh ({d}%)",
                textStyle: { color: '#fff' }
            },
            legend: {
                orient: 'vertical',
                x: 'left',
                data: ['研发', '运营', '后勤', '人力', '供应'],
                textStyle: { color: '#fff' }
            },
            series: [
                {
                    name: '',
                    type: 'pie',
                    radius: ['30%', '50%'],
                    center: ['65%', '70%'],
                    avoidLabelOverlap: true,
                    label: {
                        normal: {
                            show: true,
                            formatter: '{b}:{c}kwh({d}%)',
                            position: 'left'
                        }
                    },
                    labelLine: {
                        normal: {
                            show: true
                        }
                    },
                    data: [
                        { value: 23, name: '研发' },
                        { value: 40, name: '运营' },
                        { value: 30, name: '后勤' },
                        { value: 10, name: '人力' },
                        { value: 15, name: '供应' },
                    ]
                }
            ]
        };
        dChart.setOption(dOption);

        //部门能耗排名
        var rChart = echarts.init(document.getElementById('departmentRank'));
        var rOption = {
            tooltip: {
                trigger: 'axis',
                textStyle: { color: '#fff' }
            },
            legend: {
                data: ['部门能耗排名', '']
            },
            toolbox: {
                show: true,
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '4%',
                right: '4%',
                bottom: '4%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: ['运营', '后勤', '研发', '供应', '人力'],
                    splitLine: { show: false },
                    axisLabel: { textStyle: { color: '#fff' } }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    axisLabel: {
                        formatter: '{value}',
                        textStyle: { color: '#fff' }
                    },
                    splitLine: {
                        show: true,
                        lineStyle: {
                            width: 1,
                            type: 'dotted'
                        }
                    }
                }
            ],
            series: [

                {
                    name: '基站能耗',
                    type: 'bar',
                    data: [40, 30, 23, 15, 10],
                    barWidth: '30',
                    itemStyle: {
                        normal: {
                            color: function (params) {
                                // build a color map as your need.
                                var colorList = [
                                    '#C1232B', '#B5C334', '#FCCE10', '#E87C25', '#27727B',
                                    '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
                                    '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
                                ];
                                return colorList[params.dataIndex]
                            },
                            label: {
                                show: true,
                                position: 'top',
                                formatter: '{c}'
                            }
                        }
                    }
                }
            ]
        };
        rChart.setOption(rOption);

    </script>--%>

    <script type="text/javascript" src="/js/zTree/jquery-1.4.4.min.js"></script>

    <script>
        var provinceid="<%=session.getAttribute("probank")%>";

        if(provinceid){//第一次进入这个页面，没有获取过
            //alert("0"+provinceid);
            $("#province_code").empty();
            $('#province_code').append("<option value='" + provinceid + "' >" + provinceid + "</option>");
        }
        else{
        }

        /*加载市下拉选*/
        function getCity() {
            alert("11");
            var pname = $("#province_code").val();

            $("#city_code").empty();
            $("#comproom_code").empty();

            alert("22");

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

    <script type="text/javascript">

        //function jhjTabClick(name){
            $(document).ready(function(){
                $("#subItem1").click(function(){
                    $("#item1").show();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").hide();
                });
                $("#subItem2").click(function(){
                    $("#item1").hide();
                    $("#item2").show();
                    $("#item3").hide();
                    $("#item4").hide();
                });
                $("#subItem3").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").show();
                    $("#item4").hide();
                });
                $("#subItem4").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").show();
                });
            });
        //}
    </script>

    <script>
        $(function(){

            $("#ulItem li").click(function() {

                $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式selected

                $(this).addClass('active');                            // 添加当前元素的样式

            });

        });
    </script>

    <script>

    </script>

    <%--两个echarts版本 --%>
    <script src="js/echarts/echarts.min.js"></script>
    <script src="js/echarts.js"></script>

    <%--趋势图 --%>
    <script type="text/javascript">
        function randomData_rms() {
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

        function randomData_thd() {
            now = new Date(+now + oneDay);
            value = value + Math.random() * 21 - 10;
            return {
                name: now.toString(),
                value: [
                    [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
                    0.8*Math.round(value)
                ]
            }
        }

        var data_rms = [];
        var data_thd = [];
        var now = +new Date(1997, 9, 3);
        var oneDay = 24 * 3600 * 1000;
        var value = Math.random() * 1000;
        for (var i = 0; i < 1000; i++) {
            data_rms.push(randomData_rms());
            data_thd.push(randomData_thd());
           // alert(datas);
        }

        // 1.初始化
        var eventChart1 = echarts.init(document.getElementById('item1-graph'));
        // 2.指定图表的配置项和数据
        var option1 = {
            tooltip: {
                trigger: 'axis',
                formatter: function (params) {
                    params = params[0];
                    var date = new Date(params.name);
                    return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
                },
                axisPointer: {
                    animation: false
                }
            },
            legend: {
                data:['RMS','THD']
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
                {
                    name: 'RMS',
                    type: 'line',
                    showSymbol: false,
                    hoverAnimation: false,
                    data: data_rms
                },
                {
                    name: 'THD',
                    type: 'line',
                    showSymbol: false,
                    hoverAnimation: false,
                    data: data_thd
                }
            ]
        };
        // 3.使用刚指定的配置项和数据显示图表。
        eventChart1.setOption(option1);

        // 4.设置时间间隔（可选）
        setInterval(function () {

            for (var i = 0; i < 5; i++) {
                data_rms.shift();
                data_rms.push(randomData_rms());
                data_thd.shift();
                data_thd.push(randomData_thd());
            }

            eventChart1.setOption({
                series: [
                    {
                        name: 'RMS',
                        type: 'line',
                        showSymbol: false,
                        hoverAnimation: false,
                        data: data_rms
                    },
                    {
                        name: 'THD',
                        type: 'line',
                        showSymbol: false,
                        hoverAnimation: false,
                        data: data_thd
                    }
                ]
            });
        }, 1000);

    </script>
    <%--谐波 --%>
    <script type="text/javascript">
        // 1.初始化
        var eventChart2 = echarts.init(document.getElementById('item2'));
        // 2.指定图表的配置项和数据
        var option2 = {
            title: {
                //text: '未来一周气温变化',
                subtext: '传感器'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:['U1','U2','U3','U4','I1','I2','I3','I4']
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
            xAxis:  {
                type: 'category',
                boundaryGap: false,
                data: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,
                       20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,
                       37,38,39,40,41,42,43,44,45,46,47,48,49]
            },
            yAxis: {
                type: 'value',
                axisLabel: {
                    formatter: '{value}'
                }
            }
            // series: [
            //     {
            //         name:'U1',
            //         type:'line',
            //         // data:[11, 11, 15, 13, 12, 13, 10],
            //         data: []
            //         /*markPoint: {
            //             data: [
            //                 {type: 'max', name: '最大值'},
            //                 {type: 'min', name: '最小值'}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'}
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'U2',
            //         type:'line',
            //         // data:[1, -2, 2, 5, 3, 2, 0],
            //         data: []
            //         /*markPoint: {
            //             data: [
            //                 {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'},
            //                 [{
            //                     symbol: 'none',
            //                     x: '90%',
            //                     yAxis: 'max'
            //                 }, {
            //                     symbol: 'circle',
            //                     label: {
            //                         normal: {
            //                             position: 'start',
            //                             formatter: '最大值'
            //                         }
            //                     },
            //                     type: 'max',
            //                     name: '最高点'
            //                 }]
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'U3',
            //         type:'line',
            //         // data:[4, -9, 15, 5, 2, 3, 10],
            //         data: []
            //        /* markPoint: {
            //             data: [
            //                 {type: 'max', name: '最大值'},
            //                 {type: 'min', name: '最小值'}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'}
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'U4',
            //         type:'line',
            //         // data:[19, 11, 15, 13, 12, 10, 6],
            //         data: []
            //         /*markPoint: {
            //             data: [
            //                 {type: 'max', name: '最大值'},
            //                 {type: 'min', name: '最小值'}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'}
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'I1',
            //         type:'line',
            //         // data:[1, 7, 15, 13, 2, 3, 1],
            //         data: []
            //        /* markPoint: {
            //             data: [
            //                 {type: 'max', name: '最大值'},
            //                 {type: 'min', name: '最小值'}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'}
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'I2',
            //         type:'line',
            //         // data:[1, -2, 2, 5, 3, 2, 0],
            //         data: []
            //        /* markPoint: {
            //             data: [
            //                 {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'},
            //                 [{
            //                     symbol: 'none',
            //                     x: '90%',
            //                     yAxis: 'max'
            //                 }, {
            //                     symbol: 'circle',
            //                     label: {
            //                         normal: {
            //                             position: 'start',
            //                             formatter: '最大值'
            //                         }
            //                     },
            //                     type: 'max',
            //                     name: '最高点'
            //                 }]
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'I3',
            //         type:'line',
            //         // data:[1, -9, 15, 3, 12, 3, 10],
            //         data: []
            //         /*markPoint: {
            //             data: [
            //                 {type: 'max', name: '最大值'},
            //                 {type: 'min', name: '最小值'}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'}
            //             ]
            //         }*/
            //     },
            //     {
            //         name:'I4',
            //         type:'line',
            //         // data:[9, 11, 15, 13, 0, 10, 6],
            //         data: []
            //         /*markPoint: {
            //             data: [
            //                 {type: 'max', name: '最大值'},
            //                 {type: 'min', name: '最小值'}
            //             ]
            //         },
            //         markLine: {
            //             data: [
            //                 {type: 'average', name: '平均值'}
            //             ]
            //         }*/
            //     }
            // ]
        };
        // 3.使用刚指定的配置项和数据显示图表。
        // 配置option
        eventChart2.setOption(option2);
        // 获取数据
        getDataXb(1);

        // 获取谐波数据
        function getDataXb(mpid) {
            $.ajax({
                type: "post",
                url: "getXB",
                data: {monitorpointid: mpid},
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
    <%--三相不平衡度 --%>
    <script type="text/javascript">
        // 测试数据
        var gaugePointerColor=["#ff0000","#0000ff","#ffff00"];
        var sxbphdlegend=["U1","U2","U3","V1","V2","V3","A1","A2","A3"];
        //幅值的最大值
        var maxAmplitude=400;
        // sxbphdData用来暂存三相不平衡度数据
        var sxbphdData=null;
        var eventChart3=echarts.init($("#item3-graph")[0]);
        // 初始配置项
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
                            color: [[0.5,"#ccc"],[1,"#ccc"]],
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
        // 右侧按钮的事件绑定
        $("#item3-sidebar ol li button").each(function(){
            $(this).click(function(){
                $("#item3-sidebar ol li button").removeClass("active");
                $(this).addClass("active");
                for(var i=0;i<sxbphdlegend.length;i++){
                    if(sxbphdlegend[i].indexOf(this.value)>=0){
                        // 显示对应的系列
                        eventChart3.dispatchAction({
                            type: "legendSelect",
                            name: sxbphdlegend[i]
                        });
                    }
                    else{
                        // 隐藏其他系列
                        eventChart3.dispatchAction({
                            type: "legendUnSelect",
                            name: sxbphdlegend[i]
                        });
                    }
                }
                // 更新图左侧文字
                updateSxdyt2(sxbphdData);
            });
        });
        // 配置option
        eventChart3.setOption(option3);
        // 模拟获取数据
        getDataSxdy(1);
        // 获取三相电压、电流数据
        function getDataSxdy(mpid) {
            $.ajax({
                type: "post",
                url: "getSXDY",
                data: {monitorpointid: mpid},
                dataType: "json",
                success: function (data) {
                    // 数据先暂存起来
                    sxbphdData=JSON.parse(data);
                    updateSxdyt(sxbphdData);
                    // 设置显示的系列
                    $("#item3-sidebar ol li button.active").trigger("click");
                },
                error: function(){
                    alert("获取三相电压数据失败");
                }
            });
        }
        // 更新三相电压、电流图
        function updateSxdyt(data) {
            // 更新图左侧文字
            updateSxdyt2(data);
            // 计算指针长度，并用数组存起来
            var pointerLength=[];
            pointerLength.push(floatToPercent(data[0]["u1"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["u2"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["u3"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["v1"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["v2"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["v3"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["a1"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["a2"]/maxAmplitude));
            pointerLength.push(floatToPercent(data[0]["a3"]/maxAmplitude));
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
            $("#item3-realtime span").html(dateFormat(new Date(data[0]["time"]),"yyyy-mm-dd  hh:MM:ss"));

        }
        // 更新三相电压、电流图左侧显示的文字
        function updateSxdyt2(data){
            // 获取被选中按钮的value值
            var value = $("#item3-sidebar ol li button.active").attr("value");
            // console.log(value);
            switch (value){
                case "U" :
                case "V" :
                case "A" : {
                    // 更新幅值
                    $("#item3-text-name1").html(value+"1");
                    $("#item3-text-value1").html(data[0][value.toLowerCase()+"1"]);
                    $("#item3-text-name2").html(value+"2");
                    $("#item3-text-value2").html(data[0][value.toLowerCase()+"2"]);
                    $("#item3-text-name3").html(value+"3");
                    $("#item3-text-value3").html(data[0][value.toLowerCase()+"3"]);
                    // 更新相位差
                    $("#item3-text-diff1").html(data[0]["angle"+value+"2"] - data[0]["angle"+value+"1"]);
                    $("#item3-text-diff2").html(data[0]["angle"+value+"3"] - data[0]["angle"+value+"2"]);
                    $("#item3-text-diff3").html(data[0]["angle"+value+"1"] - data[0]["angle"+value+"3"]);
                    break;
                }
                case "1" :
                case "2" :
                case "3" : {
                    // 更新幅值
                    $("#item3-text-name1").html("U"+value);
                    $("#item3-text-value1").html(data[0]["u"+value]);
                    $("#item3-text-name2").html("V"+value);
                    $("#item3-text-value2").html(data[0]["v"+value]);
                    $("#item3-text-name3").html("A"+value);
                    $("#item3-text-value3").html(data[0]["a"+value]);
                    // 隐藏相位差
                    $("#item3-text ol.diff").hide();
                    break;
                }
                default : {

                }
            }
        }
        // 浮点数转成百分比，保留一位小数，返回字符串
        function floatToPercent(num){
            return (new Number(num)*100).toFixed(1)+"%";
        }
        // 日期格式化
        function dateFormat(date,fmt){
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

    <!-- test-->
    <script>
        function test(){
            alert("谐波");

        var monitorpoint = 1;

        $.ajax({
            type: "post",
            url: "getXB",
            data: {monitorpointid: monitorpoint},
            dataType : "json",
            success: function (data) {
                alert(data);
                // window.console.log(typeof data);
                // window.console.log(data[0]);
                /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                var obj = eval("(" + data + ")");
                for (var i = 0; i < obj.length; i++) {
                    $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                }*/
            },
            error: function () {
                alert("失败");
            }
        });
        }
    </script>

    <script>
        function test2(){
            alert("参数值");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getParameter",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test3-->
    <script>
        function test3(){
            alert("三相电压");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getSXDY",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    window.console.log(typeof data);
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test4-->
    <script>
        function test4(){
            alert("RMS");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstRMS",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test5-->
    <script>
        function test5(){
            alert("THD");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstTHD",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test6-->
    <script>
        function test6(){
            alert("CF");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstCF",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test7-->
    <script>
        function test7(){
            alert("Hz");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstHz",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test8-->
    <script>
        function test8(){
            alert("unb%");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstUNB",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test9-->
    <script>
        function test9(){
            alert("W");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstW",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test10-->
    <script>
        function test10(){
            alert("VA");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstVA",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test11-->
    <script>
        function test11(){
            alert("Var");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstVar",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test12-->
    <script>
        function test12(){
            alert("PF");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstPF",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test13-->
    <script>
        function test13(){
            alert("DPF");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstDPF",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test14-->
    <script>
        function test14(){
            alert("Tan");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstTan",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test15-->
    <script>
        function test15(){
            alert("Pst");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstPst",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- test16-->
    <script>
        function test16(){
            alert("Plt");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getQstPlt",
                data: {monitorpointid: monitorpoint},
                dataType : "json",
                success: function (data) {
                    alert(data);
                    /*$('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
                    }*/
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>






</body>

</html>