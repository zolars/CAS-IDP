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
    <link rel="stylesheet" href="css/pick-pcc.min.1.0.1.css" />
    <link rel="stylesheet" href="css/mycss.css">

    <!-- bootstrap datepicker时间选择控件 -->
    <link href="bootstrap-timepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- jquery -->
    <script type="text/javascript" src="bootstrap-timepicker/js/jquery-1.8.3.min.js" charset="UTF-8"></script>

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
        <a class="logo pull-left" href="province.jsp">IDP数据中心动力管控系统</a>

        <div class="media-body">
            <div class="media" id="top-menu">
                <div class="pull-left location-select">
                    <select class="form-control location-select-item" id="province_code" name="province_code" onchange="getCity()">
                        <option value="">请选择</option>
                    </select>

                    <select class="form-control location-select-item" id="city_code" name="city_code" onchange="getComproom()">
                        <option value="">请选择</option>
                    </select>

                    <select class="form-control location-select-item" id="comproom_code" name="comproom_code">
                        <option value="">请选择</option>
                    </select>
                </div>


                <!-- 注销按钮 -->
                <div class="pull-right">
                    <li><a href="index.jsp">注销</a></li>
                </div>

                <div class="pull-right">欢迎用户${username}登录</div>

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

            <!-- Quick Stats -->
            <div class="block-area">
                <!-- Time choose -->
                <div class="row">

                    <div class="col-md-4">
                        <div class="container">
                            <form action="" class="form-horizontal"  role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <label for="dtp_input1" class="col-md-2 control-label">开始日期</label>
                                        <div class="input-group date form_datetime col-md-5" data-date="2018-07-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                                            <input id="firstDate" class="form-control" size="16" type="text" value="2018-01-01 00:00:00" readonly>
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                        </div>
                                        <input type="hidden" id="dtp_input1" value="" /><br/>
                                    </div>

                                    <div class="form-group">
                                        <label for="dtp_input2" class="col-md-2 control-label">结束日期</label>
                                        <div class="input-group date form_datetime col-md-5" data-date="2019-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                                            <input id="lastDate" class="form-control" size="16" type="text" value="2018-12-01 00:00:00" readonly>
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                        </div>
                                        <input type="hidden" id="dtp_input2" value="" /><br/>
                                    </div>

                                </fieldset>

                                <!-- 刷新按钮 -->
                                <div class="row" >
                                    <button id="refresh-btn" class="btn btn-primary" data-loading-text="Loading..."
                                            type="button"> 刷新
                                    </button>
                                    <script>
                                        $(document).ready(function() {
                                            $("#refresh-btn").click(function() {
                                                $(this).button('loading').delay(500).queue(function() {
                                                    alert("刷新成功!");
                                                    $(this).button('reset');
                                                    $(this).dequeue();
                                                });
                                            });
                                        });
                                    </script>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div id="eventbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>

                    <div id="alarmbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;">
                    </div>

                    <div id="assessbar" class="col-md-2 col-xs-6" style="width:30%; height: 200px;text-align:center">
                        <h>评估结果</h>
                        <table id="assesstable" name="assesstable"  cellspacing="0" cellpadding="0" >
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

            <hr class="whiter"/>

        </section>
    </section>

    <!-- Javascript Libraries -->

    <!-- echarts -->
    <script src="js/echarts.js"></script>

    <!-- All JS functions -->
    <script src="js/functions.js"></script>

    <!-- 省\市\机房下拉菜单-->
    <script type="text/javascript">

        /*加载省下拉选*/
        var provinceid = "<%=session.getAttribute("probank")%>";
        //console.log("provinceid "+provinceid);
        if(provinceid == "null"){
            //第一次进入这个页面，未获取过province
            var provinceidc = window.location.search.match(new RegExp("[\?\&]prov=([^\&]+)", "i"));
            //对第一个结果进行URI解码
            var provinceid_pre = decodeURI(provinceidc[1]);

            $.ajax({
                type: "post",
                url: "setProvince",
                data: {provid: provinceid_pre},
                dataType : "json",
                success: function (data) {
                    $('#province_code').append("<option value='" + provinceid_pre + "' >" + provinceid_pre + "</option>");
                },
                error: function () {
                    $('#province_code').append("<option value='" + provinceid_pre + "' >" + provinceid_pre + "</option>");
                }
            });
        }
        else{
            //非第一次进入这个页面，获取过province
            $('#province_code').append("<option value='" + provinceid + "' >" + provinceid + "</option>");
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

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#city_code').append("<option value='" + obj[i].cbname + "' >" + obj[i].cbname + "</option>");
                    }
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
                    var list = data.allcomputerroom;

                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                    for (var i = 0; i < list.length; i++) {
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

        var provinceidc = window.location.search.match(new RegExp("[\?\&]prov=([^\&]+)", "i"));
        var pname = decodeURI(provinceidc[1]);
        var stime = $("#firstDate").val();
        var etime = $("#lastDate").val();

        $.ajax({
            type: "post",
            url: "getOneProvinceMapData",
            data: {
                pname: pname,
                stime: stime,
                etime: etime
            },
            dataType : "json",
            success: function (data) {
                //[1,2,3,4,1,1,1,1,3,2001]: event1, event2,event3, event4, alarm1, alram2, alarm3, alartm4, degree(R:1,Y:2,G:3)，cbid

                var obj = eval('(' + data + ')');
                var list = obj.oplist;

                var xdata = [];
                var eventdata = [];
                var alarmdata = [];
                var degree = [];

                for(var i = 0; i < list.length; i++){
                    xdata[i] = list[i][9];

                    eventdata[i] = list[i][0] +list[i][1] +list[i][2] +list[i][3];
                    alarmdata[i] = list[i][4] +list[i][5] +list[i][6] +list[i][7];

                    degree[i] = list[i][8];
                }

                // 指定图表的配置项和数据
                var eventoption = {
                    title: {
                        text: '事件'
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
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
                        data: eventdata
                    }]
                };

                // 指定图表的配置项和数据
                var alarmoption = {
                    title: {
                        text: '告警'
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
                        text: '能效'
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
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
                        data: [0, 0, 0, 0]
                    }]
                };

                // 指定图表的配置项和数据
                var nhoption = {
                    title: {
                        text: '能耗'
                    },
                    tooltip: {},
                    xAxis: {
                        data: xdata
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
                        data: [0, 0, 0, 0]
                    }]
                };

                // 使用刚指定的配置项和数据显示图表。
                eventChart.setOption(eventoption);
                alarmChart.setOption(alarmoption);
                nxChart.setOption(nxoption);
                nhChart.setOption(nhoption);

                // 显示评估等级
                var table = $("#assesstable");
                table.empty();
                for (var i = 0; i < degree.length; i++) {
                    if(degree[i] == 1)
                        table.append('<tr><td><img src="/img/icon/BAD.jpeg"/></td></tr>');
                    if(degree[i] == 2)
                        table.append('<tr><td><img src="/img/icon/NORMAL.jpg"/></td></tr>');
                    if(degree[i] == 3)
                        table.append('<tr><td><img src="/img/icon/GOOD.jpeg"/></td></tr>');
                }

            }
        });
    </script>

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
            alert("starttime:"+$(this).val());
        });
        $("#lastDate").change(function() {
            $('.lastDate').datetimepicker('setEndDate', $(this).val());
            alert("endtime:"+$(this).val());
        });
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

    <script type="text/javascript">

        /*function asyncRequest() {
            var alertmsg = "<%=session.getAttribute("alert")%>";
            if(alertmsg != "null") {
                alert("if"+alertmsg);
            }
        }*/
        function asyncRequest() {
            $.ajax({
                type: "post",
                url: "getAlert",
                data: {},
                dataType: "json",
                success: function (data) {
                   alert(data);
                }
            });
        }

        var intervalTimer = window.setInterval(asyncRequest, 1500000);

        // clearInterval(intervalTimer)

    </script>


</body>

</html>