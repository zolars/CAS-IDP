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
                                            <input id="firstDate" class="form-control" size="16" type="text" value="" readonly>
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                        </div>
                                        <input type="hidden" id="dtp_input1" value="" /><br/>
                                    </div>

                                    <div class="form-group">
                                        <label for="dtp_input2" class="col-md-2 control-label">结束日期</label>
                                        <div class="input-group date form_datetime col-md-5" data-date="2019-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                                            <input id="lastDate" class="form-control" size="16" type="text" value="" readonly>
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                        </div>
                                        <input type="hidden" id="dtp_input2" value="" /><br/>
                                    </div>

                                </fieldset>
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

            <hr class="whiter"/>

        </section>
    </section>

    <!-- Javascript Libraries -->

    <!-- echarts -->
    <script src="js/echarts.js"></script>

    <!-- All JS functions -->
    <script src="js/functions.js"></script>

    <script type="text/javascript">
       /* function getQueryString(name) {
            var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
            if (result == null || result.length < 1) {
                return "";
            }
            //对第一个结果进行URI解码
            return decodeURI(result[1]);
            //return result[1];
        }*/
    </script>

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
           // console.log("provinceid_pre "+provinceid_pre);
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
                    $('#comproom_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = eval("(" + data + ")");
                    for (var i = 0; i < obj.length; i++) {
                        $('#comproom_code').append("<option value='" + obj[i].rname + "' >" + obj[i].rname + "</option>");
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

        //处理第一个和最后一个
        cbidstr[0] = cbidstr[0].substring(1);
        cbidstr[0] = " " + cbidstr[0];

        var idx = cbidstr.length - 1;
        var len = cbidstr[idx].length;
        cbidstr[idx] = cbidstr[idx].substring(0, len - 1);

        for(var i = 0; i < cbidstr.length; i++){

            var menuname = "";
            if(cbidstr[i] == ' province.jsp')
                menuname = "集中监控";

            else if(cbidstr[i] == ' efficiencyDevice.jsp')
                menuname = "动力设施";

            else if(cbidstr[i] == ' onlineDetect.jsp')
                menuname = "在线监测";

            else if(cbidstr[i] == ' efficiencyAnalysis.jsp')
                menuname = "动力分析";

            else if(cbidstr[i] == ' efficiencyAssessment.jsp')
                menuname = "动力评估";

            else if(cbidstr[i] == ' reportChart.jsp')
                menuname = "报表功能";

            else if(cbidstr[i] == ' history.jsp') //userMng.jsp'
                menuname = "历史曲线";

            else if(cbidstr[i] == ' systemMng.jsp')
                menuname = "系统管理";

            $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
        }
    </script>


</body>

</html>