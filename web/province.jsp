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
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap-3.3.4.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/font-awesome.4.6.0.css" type="text/css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/media-player.css">
    <link rel="stylesheet" href="css/calendar.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/generics.css">
    <link rel="stylesheet" href="css/jquery.hotspot.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css"/>
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="css/header.css">

    <!-- bootstrap datepicker时间选择控件 -->
    <link href="bootstrap-timepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- jquery -->
    <script type="text/javascript" src="bootstrap-timepicker/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <!--告警弹窗-->
    <script type="text/javascript" src = "js/websocketconnect.js"></script>

    <style>
        .datetimepicker {
            background: black !important;
        }

        .file {
            position: relative;
            display: inline-block;
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 20px;
        }

        .file input {
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
        }

        .file:hover {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }
    </style>

</head>

<body id="skin-blur-blue">

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>

<%
    String userid = (String) session.getAttribute("userid");
    if (userid == null) {
%>
<script>
    alert('您还未登录或您的认证已过期, 请先登陆.');
    window.location.href = 'http://localhost:8082/index.jsp';
</script>
<%
} else {
%>
<script>
    function getUrlParam(name) {
        var reg = new RegExp(name); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg);  //匹配目标参数
        if (r != null) return true;
        return false; //返回参数值
    }

    if (!getUrlParam('prov=')) {
        window.location.href = 'http://localhost:8082/province.jsp?prov=' + $.cookie('province_name');
    }
</script>
<%
    }
%>

<header id="header" class="media">
    <div class="header-left">
        <a href="" id="menu-toggle"></a>
        <img src="/img/index/logo.jpg" alt="">
    </div>
    <div class="header-right">
        <div class="media" id="top-menu">
            <div class="pull-left location-select">
                <select class="form-control location-select-item" id="province_code" name="province_code">
                    <option value="">未指定</option>
                </select>

                <script>
                    $("#province_code").change(function () {
                        var options = $("#province_code option:selected");
                        $.cookie('opinion1', options.text(), {expires: 1, path: '/'});
                        getCity();
                    })
                </script>

                <select class="form-control location-select-item" id="city_code" name="city_code">
                    <option value="">未指定</option>
                </select>

                <script>
                    $("#city_code").change(function () {
                        var options = $("#city_code option:selected");
                        $.cookie('opinion2', options.text(), {expires: 1, path: '/'});
                        getComproom();
                    })

                </script>

                <select class="form-control location-select-item" id="comproom_code" name="comproom_code">
                    <option value="">未指定</option>
                </select>

                <script>
                    $("#comproom_code").change(function () {
                        var options = $("#comproom_code option:selected");
                        $.cookie('opinion3', options.text(), {expires: 1, path: '/'});
                        if (options.index() !== 0) {
                            $('#second-page').css('display', 'block');
                            $('#first-page').css('display', 'none');
                        } else {
                            $('#second-page').css('display', 'none');
                            $('#first-page').css('display', 'block');
                        }
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

        <h4 class="page-title">关键信息集中监控</h4>

        <!-- Time choose -->
        <div class="block-area">
            <div class="row">
                <div class="container">
                    <form action="" class="form-horizontal" role="form">
                        <fieldset>
                            <div class="form-group">
                                <label for="dtp_input1" class="control-label">开始日期</label>
                                <div class="input-group date form_datetime" data-date-format="yyyy-mm-dd hh:ii:ss"
                                     data-link-field="dtp_input1">
                                    <input id="firstDate" class="form-control" size="16" type="text" readonly>
                                    <span class="input-group-addon"><span
                                            class="glyphicon glyphicon-th"></span></span>
                                </div>
                                <input type="hidden" id="dtp_input1" value=""/><br/>
                            </div>

                            <div class="form-group">
                                <label for="dtp_input2" class="control-label">结束日期</label>
                                <div class="input-group date form_datetime" data-date-format="yyyy-mm-dd hh:ii:ss"
                                     data-link-field="dtp_input1">
                                    <input id="lastDate" class="form-control" size="16" type="text" readonly>
                                    <span class="input-group-addon"><span
                                            class="glyphicon glyphicon-th"></span></span>
                                </div>
                                <input type="hidden" id="dtp_input2" value=""/><br/>
                            </div>
                            <!-- 刷新按钮 -->
                            <button id="refresh-btn" class="btn-primary" data-loading-text="Loading..." type="button">
                                刷新
                            </button>
                        </fieldset>

                    </form>
                </div>
            </div>
        </div>

        <!-- Quick Stats -->
        <div id="first-page" class="block-area">

            <div class="row">

                <div id="eventbar" class="col-md-2 col-xs-6 chart-item" style="width:30%; height: 200px;">
                </div>

                <div id="alarmbar" class="col-md-2 col-xs-6 chart-item" style="width:30%; height: 200px;">
                </div>

                <div id="assessbar" class="col-md-2 col-xs-6 chart-item"
                     style="width:30%; height: 200px;text-align:center">
                    <div class="chart-item-title">评估结果</div>
                    <table id="assesstable" name="assesstable" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="padding-right: 30px;"><img id="r1t0" src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img id="r1t1" src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img id="r1t2" src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img id="r1t3" src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img id="r1t4" src="/img/icon/GOOD.png"/></td>
                        </tr>
                        <tr>
                            <td id="r2t0" style="font-size: 12px;color: black;"></td>
                            <td id="r2t1" style="font-size: 12px;color: black;"></td>
                            <td id="r2t2" style="font-size: 12px;color: black;"></td>
                            <td id="r2t3" style="font-size: 12px;color: black;"></td>
                            <td id="r2t4" style="font-size: 12px;color: black;"></td>
                        </tr>
                        <tr style="height: 28px;"></tr>
                        <tr>
                            <td style="padding-right: 30px;"><img src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/icon/GOOD.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/icon/GOOD.png"/></td>
                        </tr>
                        <tr>
                            <td style="font-size: 12px;color: black;"></td>
                            <td style="font-size: 12px;color: black;"></td>
                            <td style="font-size: 12px;color: black;"></td>
                            <td style="font-size: 12px;color: black;"></td>
                            <td style="font-size: 12px;color: black;"></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div id="nxbar" class="col-md-2 col-xs-6 chart-item" style="width:30%; height: 200px;">
                </div>

                <div id="nhbar" class="col-md-2 col-xs-6 chart-item" style="width:30%; height: 200px;">
                </div>

                <div id="nullbar" class="col-md-2 col-xs-6 chart-item" style="width:30%; height: 200px;">
                </div>
            </div>

        </div>

        <div id="second-page">

            <div class="row">
                <!--上传并显示图片-管理员专属-->
                <div class="col-md-2 col-xs-6 chart-item"
                     style="
                         width: 30%;
                         height: 200px;
                         -webkit-tap-highlight-color: transparent;
                         user-select: none;
                         position: relative;
                     ">

                    <img id="preview" src="/upload/ElectricSystemImg.jpg" alt="" width="507px;" height="175px;"/>
                    <form action="uploadOne" method="post" enctype="multipart/form-data">
                        <a class="file">选择文件
                            <input type="file" name="uploadFile" onchange="uploadImage(this)">
                        </a>
                        <a id="submit" style="display:none;" class="file">上传
                            <input type="submit">
                        </a>
                    </form>


                </div>

                <div id="devicebar" class="col-md-2 col-xs-6 chart-item"
                     style="width: 30%; height: 200px; text-align:center">
                    <table id="devicetable" name="devicetable" cellspacing="0" cellpadding="0">
                        <tr style="height: 8px;"></tr>
                        <tr>
                            <td style="padding-right: 30px;"><img src="/img/1.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/2.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/3.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/4.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/5.png"/></td>
                        </tr>
                        <tr>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000" id="ctrlstatus">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                        </tr>
                        <tr style="height: 18px;"></tr>
                        <tr>
                            <td style="padding-right: 30px;"><img src="/img/6.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/6.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/6.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/6.png"/></td>
                            <td style="padding-right: 30px;"><img src="/img/6.png"/></td>
                        </tr>
                        <tr>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                            <td style="font-size: 12px;color: #000000">状态：良</td>
                        </tr>
                    </table>
                </div>

                <div id="" class="col-md-2 col-xs-6 chart-item" style="width: 30%; height: 200px;">
                </div>

            </div>
            <div class="row">

                <div id="tempbar" class="col-md-2 col-xs-6 chart-item" style="width: 30%;height: 200px;">
                </div>

                <div id="humidbar" class="col-md-2 col-xs-6 chart-item" style="width: 30%;height: 200px;">
                </div>

                <div id="panelbar" class="col-md-2 col-xs-6 chart-item" style="width: 30%;height: 200px;">
                </div>

            </div>

        </div>

        <hr class="whiter"/>

    </section>
</section>

<!-- Javascript Libraries -->

<!-- echarts -->
<script src="js/echarts.js"></script>

<!-- All JS functions -->
<script src="js/functions.js"></script>

<script>
    $(document).ready(function () {
        $("#refresh-btn").click(function () {
            $(this).button('loading').delay(500).queue(function () {
                var provinceidc = window.location.search.match(new RegExp("[\?\&]prov=([^\&]+)", "i"));
                var pname = decodeURI(provinceidc[1]);
                var stime = $("#firstDate").val();
                var etime = $("#lastDate").val();
                var cbname = $("#comproom_code option:selected").val();

                getOneProvinceMapData(pname, stime, etime);
                getEnvironmentInfo(cbname);
                getCtrlStatus(cbname, stime, etime);

                $(this).button('reset');
                $(this).dequeue();
            });
        });

        $('#second-page').css('display', 'none');
    });
</script>

<!-- 省\市\机房下拉菜单-->
<script type="text/javascript">
    /*加载省下拉选*/

    //读取cookie中已存的机房配置
    var opinion1 = $.cookie('province_name');

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
        var opinion2 = $.cookie('opinion2');

        $("#city_code").empty();
        $("#comproom_code").empty();

        $.ajax({
            type: "post",
            url: "getCityTree",
            data: {provinceid: pname},
            dataType: "json",
            success: function (data) {

                $('#city_code').append("<option value='' selected='selected' >" + '未指定' + "</option>");
                $('#comproom_code').append("<option value='' selected='selected' >" + '未指定' + "</option>");

                var obj = eval("(" + data + ")");
                for (var i = 0; i < obj.length; i++) {
                    if (obj[i].cbname == opinion2) {
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

        $("#comproom_code").empty();

        $.ajax({
            type: "post",
            url: "getCompTree",
            data: {cityid: cname},
            dataType: "json",
            success: function (data) {
                var list = data.allcomputerroom;

                $('#comproom_code').append("<option value='' selected='selected' >" + '未指定' + "</option>");
                for (var i = 0; i < list.length; i++) {
                    if (list[i].rname == opinion3) {
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

<!-- 初始化工作-->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var eventChart = echarts.init(document.getElementById('eventbar'));
    var alarmChart = echarts.init(document.getElementById('alarmbar'));
    var nxChart = echarts.init(document.getElementById('nxbar'));
    var nhChart = echarts.init(document.getElementById('nhbar'));
    var tempChart = echarts.init(document.getElementById('tempbar'));
    var humidChart = echarts.init(document.getElementById('humidbar'));
    var panelChart = echarts.init(document.getElementById('panelbar'));


    window.onresize = function () {
        $("#eventChart").width($('#eventbar').width());
        $("#alarmChart").width($('#alarmbar').width());
        $("#nxChart").width($('#nxbar').width());
        $("#nhChart").width($('#nhbar').width());
        $("#tempChart").width($('#tempbar').width());
        $("#humidChart").width($('#humidbar').width());
        $("#panelChart").width($('#panelbar').width());

        eventChart.resize();
        alarmChart.resize();
        nxChart.resize();
        nhChart.resize();
        tempChart.resize();
        humidChart.resize();
        panelChart.resize();
    };

    var provinceidc = window.location.search.match(new RegExp("[\?\&]prov=([^\&]+)", "i"));
    var pname = decodeURI(provinceidc[1]);
    var cbname = $("#comproom_code option:selected").val();

    $("#firstDate").val(getFormatDate(-1));
    $("#lastDate").val(getFormatDate(0));

    var stime = $("#firstDate").val();
    var etime = $("#lastDate").val();

    getOneProvinceMapData(pname, stime, etime);
    getEnvironmentInfo(cbname);
    getCtrlStatus(cbname, stime, etime);

    //获取事件、告警、评估等级
    function getOneProvinceMapData(pname, stime, etime) {
        $.ajax({
            type: "post",
            url: "getOneProvinceMapData",
            data: {
                pname: pname,
                stime: stime,
                etime: etime
            },
            dataType: "json",
            success: function (data) {
                //[1,2,3,4,1,1,1,1,3,2001]: event1, event2,event3, event4, alarm1, alram2, alarm3, alartm4, degree(R:1,Y:2,G:3)，cbid
                var obj = eval('(' + data + ')');
                var list = obj.oplist;

                var xdata = [];
                var eventdata = [];
                var alarmdata = [];
                var degree = [];

                for (var i = 0; i < list.length; i++) {
                    xdata[i] = list[i][9];

                    eventdata[i] = parseInt(list[i][0]) + parseInt(list[i][1]) + parseInt(list[i][2]) + parseInt(list[i][3]);
                    alarmdata[i] = parseInt(list[i][4]) + parseInt(list[i][5]) + parseInt(list[i][6]) + parseInt(list[i][7]);

                    degree[i] = list[i][8];
                }

                // 指定事件的图表的配置项和数据
                var eventoption = {
                    title: {
                        text: '事件',
                        subtext: '威胁分布',
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
                    },
                    yAxis: {},
                    series: [{
                        name: '个数',
                        type: 'bar',
                        itemStyle: {
                            normal: {
                                color: '#3EA3D8'
                            }
                        },
                        data: eventdata
                    }]
                };

                // 指定告警的图表的配置项和数据
                var alarmoption = {
                    title: {
                        text: '告警',
                        subtext: '风险',
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
                    },
                    yAxis: {},
                    series: [{
                        name: '个数',
                        type: 'bar',
                        data: alarmdata
                    }]
                };

                // 指定图表的配置项和数据
                var nxoption = {
                    title: {
                        text: '能效',
                        subtext: 'PUE统计',
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
                    },
                    yAxis: {},
                    series: [{
                        name: '个数',
                        type: 'bar',
                        itemStyle: {
                            normal: {
                                color: '#44764B'
                            }
                        },
                        data: [0, 0, 0, 0]
                    }]
                };

                // 指定图表的配置项和数据
                var nhoption = {
                    title: {
                        text: '能耗',
                        subtext: '用电统计',
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
                    },
                    yAxis: {},
                    series: [{
                        name: '个数',
                        type: 'bar',
                        itemStyle: {
                            normal: {
                                color: '#9F842F'
                            }
                        },
                        data: [0, 0, 0, 0]
                    }]
                };

                //指定仪表盘的图表的配置项和数据
                var paneloption = {
                    tooltip: {
                        formatter: "{a} <br/>{b} : {c}%"
                    },
                    series: [
                        {
                            name: '',
                            type: 'gauge',
                            min: 1,
                            max: 3,
                            detail: {formatter: '{value}'},
                            data: [{value: degree[0], name: '评估等级'}]
                        }
                    ]
                };

                //指定评估结果块的数据
                for (var i = 0; i < xdata.length; i++) {
                    if (degree[i] == '1') {
                        $("#r1t" + i).attr("src", "/img/icon/GOOD.png");
                    }
                    if (degree[i] == '2') {
                        $("#r1t" + i).attr("src", "/img/icon/NORMAL.png");
                    }
                    if (degree[i] == '3') {
                        $("#r1t" + i).attr("src", "/img/icon/BAD.png");
                    }

                    document.getElementById("r2t" + i).innerHTML = xdata[i];
                }

                // 使用刚指定的配置项和数据显示图表。
                eventChart.setOption(eventoption);
                alarmChart.setOption(alarmoption);
                nxChart.setOption(nxoption);
                nhChart.setOption(nhoption);
                panelChart.setOption(paneloption);
            }
        });
    }

    function getEnvironmentInfo(cbname) {
        //获取温度、湿度
        $.ajax({
            type: "post",
            url: "getOneComputerroomMapData",
            data: {
                compname: cbname
            },
            dataType: "json",
            success: function (data) {

                var obj = eval('(' + data + ')');
                var list = obj.oplist;

                var tempdata = [];
                var humiddata = [];
                var xdata = [];

                for (var i = 0; i < list.length; i++) {
                    var k = true;
                    for (var j = 0; j < xdata.length; j++) {
                        if (xdata[j] == list[i][0]) {
                            k = false;
                        }
                    }
                    if (k) {
                        xdata[xdata.length++] = list[i][0];
                        tempdata[tempdata.length++] = list[i][1];
                        humiddata[humiddata.length++] = list[i][2];
                    }
                }

                //指定温度的图表的配置项和数据
                var tempoption = {
                    title: {
                        text: '温度',
                        subtext: '温度监测'
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
                    },
                    yAxis: {},
                    series: [{
                        name: '数值',
                        type: 'bar',
                        itemStyle: {
                            normal: {
                                color: '#3EA3D8'
                            }
                        },
                        data: tempdata
                    }]
                };

                //指定湿度的图表的配置项和数据
                var humidoption = {
                    title: {
                        text: '湿度',
                        subtext: '湿度监测'
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
                    },
                    yAxis: {},
                    series: [{
                        name: '数值',
                        type: 'bar',
                        itemStyle: {
                            normal: {
                                color: '#3EA3D8'
                            }
                        },
                        data: humiddata
                    }]
                };

                // 使用刚指定的配置项和数据显示图表。
                tempChart.setOption(tempoption);
                humidChart.setOption(humidoption);
            }
        });
    }

    function getCtrlStatus(cbname, stime, etime) {
        //获取治理设备状态
        $.ajax({
            type: "post",
            url: "getOneCtrlData",
            data: {
                compname: cbname,
                stime: stime,
                etime: etime
            },
            dataType: "json",
            success: function (data) {
                var obj = eval('(' + data + ')');
                var list = obj.rt;
                if (list == true)
                    document.getElementById("ctrlstatus").innerHTML = "状态：告警";
                else
                    document.getElementById("ctrlstatus").innerHTML = "状态：良";
            }
        });
    }

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

<!-- 时间选择器-->
<script type="text/javascript" src="bootstrap-timepicker/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap-timepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap-timepicker/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
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
</script>

<!-- 动态加载菜单项 -->
<script type="text/javascript">
    var menulist = "<%=session.getAttribute("menulist")%>";
    var cbidstr = menulist.split(",");
    var isSystemMng = false;
    var isNewSystemMng = false;

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
        }
        else if (cbidstr[i] == " efficiencyDevice.jsp") {
            isSystemMng = false;
            menuname = "动力设施";
        }
        else if (cbidstr[i] == " onlineDetect.jsp") {
            isSystemMng = false;
            menuname = "在线监测";
        }
        else if (cbidstr[i] == ' efficiencyAnalysis.jsp') {
            isSystemMng = false;
            menuname = "动力分析";
        }
        else if (cbidstr[i] == ' efficiencyAssessment.jsp') {
            isSystemMng = false;
            menuname = "动力评估";
        }
        else if (cbidstr[i] == ' reportChart.jsp') {
            isSystemMng = false;
            menuname = "报表功能";
        }
        else if (cbidstr[i] == ' history.jsp') {
            isSystemMng = false;
            menuname = "历史曲线";
        }
        else if (cbidstr[i].search('systemMng.jsp')) {

            if (!isNewSystemMng) {//第一条systemMng的
                isNewSystemMng = true;
                menuname = "系统管理";
                $('#ulbar').append("<li><a href='systemMng.jsp' id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
            }
            isSystemMng = true;
        }

        if (!isSystemMng) $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
    }
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
        }
        else {
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


</body>

</html>