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

                        <div id = "item1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is qushitu
                        </div>
                        <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is q2
                        </div>
                        <div id = "item3" style="display:none;">
                            this is q3
                        </div>
                        <div id = "item4" style="display:none;">
                            this is q4
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


    <script src="js/echarts/echarts.min.js"></script>

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
        var eventChart1 = echarts.init(document.getElementById('item1'));
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
        option2 = {
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
                // data: ['周一','周二','周三','周四','周五','周六','周日']
                data:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]

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
        // 3.创建空图表
        eventChart2.setOption(option2);
        getData_Xb(1);

        // 获取谐波数据
        function getData_Xb(mpid) {
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
            var series=["u1Xb","u2Vb","u3Xb","u4Xb","i1Xb","i2Xb","i3Xb","i4Xb"];
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