<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="grabData.DataOnline" %>
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
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <link rel="stylesheet" href="css/jquery.hotspot.css">
    <link href="css/menu.css" rel="stylesheet">
    <link rel="stylesheet" href="css/custom-echart-toolbar.css">
    <link href="css/mycss.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header.css">


    <style>
        #myDropDown {
            color: black;
            width: 40px;
        }
    </style>

</head>

<body id="skin-blur-blue">

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>
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

            <!-- Main Widgets -->
            <div class="block-area">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li class="active" style="width:20%">
                                <a data-toggle="tab" id="subItem1">•趋势图</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem2">•谐波</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem3">•三相电压不平衡度</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem4">•参数值</a>
                            </li>
                            <li style="width:20%">
                                <a data-toggle="tab" id="subItem5">•实时图形</a>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="pull-left location-select">
                            <select class="form-control location-select-item" id="monitorpnt" name="monitorpnt" onclick="getMonitorPoints()">
                                <option value="">选择检测点</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div id = "item1" class="col-md-12" style="height: 600px;">
                        <div class="row">
                            <div class="col-md-11">
                                <div id="item1-params-list" class="row">
                                    <div class="clearfix"></div>
                                    <ol>
                                        <li><button class="btn btn-default active" value="rms">RMS</button></li>
                                        <li><button class="btn btn-default" value="thd">THD</button></li>
                                        <li><button class="btn btn-default" value="cf">CF</button></li>
                                        <li><button class="btn btn-default" value="hz">Hz</button></li>
                                        <li><button class="btn btn-default" value="p">W</button></li>
                                        <li><button class="btn btn-default" value="s">VA</button></li>
                                        <li><button class="btn btn-default" value="q">Var</button></li>
                                        <li><button class="btn btn-default" value="pf">PF</button></li>
                                        <li><button class="btn btn-default" value="unb">unb</button></li>
                                        <li><button class="btn btn-default" value="pst">Pst</button></li>
                                        <li><button class="btn btn-default" value="plt">Plt</button></li>
                                        <li><button class="btn btn-default" value="vh">Vh</button></li>
                                        <li><button class="btn btn-default" value="ah">Ah</button></li>
                                    </ol>
                                </div>
                                <select id="myDropDown" style="display: none">
                                    <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option>
                                    <option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option>
                                    <option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option>
                                    <option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option>
                                    <option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option><option value="50">50</option>
                                </select>
                                <div id="item1-params-text" class="row">
                                        <div class="clearfix"></div>
                                        <ol>
                                            <li><button class="btn btn-default" value="average">AVG</button></li>
                                            <li><button class="btn btn-default" value="min">MIN</button></li>
                                            <li><button class="btn btn-default" value="max">MAX</button></li>
                                        </ol>
                                </div>
                                <div class="row" id="item1-graph" style="height: 550px;"></div>
                            </div>
                            <div id="item1-sidebar" class="col-md-1">
                                <div class="clearfix"></div>
                                <ol>
                                    <li>
                                        <button value="U" class="btn btn-default active">3U</button>
                                    </li>
                                    <li>
                                        <button value="V" class="btn btn-default">3V</button>
                                    </li>
                                    <li>
                                        <button value="I" class="btn btn-default">3A</button>
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
                                <ol class="unb">
                                    <li><span id="item3-text-nameunb">Uunb</span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="item3-text-valueunb"></span><span>%</span></li>
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
                                <table id="params-basic" class="table table-bordered">
                                    <caption>基本参数</caption>
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table id="params-power" class="table table-bordered">
                                    <caption>功率参数</caption>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1 col-xs-12">
                                <table id="params-unb" class="table table-bordered">
                                    <caption>&nbsp;</caption>
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table id="params-shanbian" class="table table-bordered">
                                    <caption>闪变</caption>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-md-offset-1 col-xs-12">
                                <table id="params-shunbian" class="table table-bordered">
                                </table>
                            </div>
                            <div class="col-md-7 col-xs-12">
                                <table id="params-lytx" class="table table-bordered">
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id = "item5" class="col-md-12" style="height: 600px;width: 800px;">
                        <div class="row">
                            通道选择
                            <div class="row" id="item4-graph" style="height: 550px;"></div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </section>

    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <!--<script src="js/jquery-3.3.1.js"></script>-->

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
    <script src="js/echarts/echarts.min.js"></script>
    <script src="js/echarts.js"></script>

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

    <!-- 切换子菜单-->
    <script type="text/javascript">
            $(document).ready(function(){
                $("#subItem1").click(function(){
                    $("#item1").show();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").hide();
                    $("#item5").hide();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataQst(mpcname);
                });
                $("#subItem2").click(function(){
                    $("#item1").hide();
                    $("#item2").show();
                    $("#item3").hide();
                    $("#item4").hide();
                    $("#item5").hide();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataXb(mpcname);
                });
                $("#subItem3").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").show();
                    $("#item4").hide();
                    $("#item5").hide();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataSxdy(mpcname);
                });
                $("#subItem4").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").show();
                    $("#item5").hide();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getDataParams(mpcname);
                });
                $("#subItem5").click(function(){
                    $("#item1").hide();
                    $("#item2").hide();
                    $("#item3").hide();
                    $("#item4").hide();
                    $("#item5").show();
                    //切换子菜单时，从后台读取数据
                    var mpcname = $("#monitorpnt").val();
                    if(mpcname) getOnlineWave(mpcname);
                });
                $("#subItem1").trigger("click");
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

    <!-- 动态加载检测点(设备)列表 -->
    <script type="text/javascript">
        //city 动态改变,computerroom清空
        document.getElementById("comproom_code").addEventListener('change', function () {
            $('#monitorpnt').empty();
        });

        //获取检测点列表
        function getMonitorPoints(){

            var computerroom = $("#comproom_code option:selected").val();
            var mpcname = $("#monitorpnt").val();

            if(!computerroom){
                alert("请先选择机房，再选择检测点");
            }
            else if(!mpcname) { //若没有获取过，获取
                $.ajax({
                    type: "post",
                    url: "getMonitorPoints",
                    data: {
                        computerroom: computerroom
                    },
                    dataType : "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.allmpdata;
                        for (var i = 0; i < rt.length; i++) {
                            $('#monitorpnt').append("<option value='" + rt[i].did + "' >" + rt[i].name + "</option>");
                        }
                    }
                });
            }
        }
    </script>

    <%--图表中使用到的变量声明--%>
    <script type="text/javascript">
        // 全局变量、暂存数据的变量、配置项变量
        var qstRecords = []; // 暂存趋势图数据
        var qstLegend=[
            "rmsU1","rmsU2","rmsU3","rmsI1","rmsI2","rmsI3",
            "thdU1","thdU2","thdU3","thdI1","thdI2","thdI3",
            "cfU1","cfU2","cfU3","cfI1","cfI2","cfI3",
            "hz",
            "p1","p2","p3", "s1","s2","s3", "q1","q2","q3",
            "pf1","pf2","pf3",
            "dpf1","dpf2","dpf3",
            "tan1","tan2","tan3",
            "unb",
            "pstU1","pstU2","pstU3",
            "pltU1","pltU2","pltU3",
            "vh1", "vh2", "vh3", "vh4", "vh5", "vh6", "vh7", "vh8", "vh9", "vh10",
            "vh11", "vh12", "vh13", "vh14", "vh15", "vh16", "vh17", "vh18", "vh19", "vh20",
            "vh21", "vh22", "vh23", "vh24", "vh25", "vh26", "vh27", "vh28", "vh29", "vh30",
            "vh31", "vh32", "vh33", "vh34", "vh35", "vh36", "vh37", "vh38", "vh39", "vh40",
            "vh41", "vh42", "vh43", "vh44", "vh45", "vh46", "vh47", "vh48", "vh49", "vh50"
            ];//趋势图图例
        var gaugePointerColor = ["#ff0000", "#0000ff", "#ffff00"]; // 三相不平衡度表的指针颜色
        var sxbphdlegend = ["U1", "U2", "U3", "V1", "V2", "V3", "A1", "A2", "A3"]; // 三相不平衡度表的图例
        var maxAmplitude = 400; // 三相不平衡度表中幅值的最大值，用来计算指针长度
        var dataSxbphd = null; // 暂存三相不平衡度表中的数据
        var markPoint={//趋势图最大值、最小值标注
            label: {formatter: '{a}{b}:{c}'},
            data: []
        };
        var markLine={//趋势图平均值标注
            label: {formatter: '{a}{b}:{c}'},
            data: []
        };

        // 各个图的配置项
        var option1 = {
            legend: {
                show: false,
                data: qstLegend
            },
            // 数据窗口缩放
            dataZoom: [
                {
                    type: 'slider',
                    show: true,
                    xAxisIndex: [0],
                    start: 0,
                    end: 100
                },
                {
                    type: 'slider',
                    show: true,
                    yAxisIndex: [0],
                    start: 0,
                    end: 100
                },
                {
                    type: 'inside',
                    xAxisIndex: [0],
                    start: 0,
                    end: 100
                },
                {
                    type: 'inside',
                    yAxisIndex: [0],
                    start: 0,
                    end: 100
                }
            ],
            xAxis: {
                type: 'time',
                splitLine: {
                    show: false
                }
            },
            yAxis: {
                type: 'value',
                scale: true,
                boundaryGap: [0, '100%'],
                splitLine: {
                    show: false
                }
            },
            series: [
                // RMS
                {
                    name: "rmsU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsU1"}
                },
                {
                    name: "rmsU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsU3"}
                },
                {
                    name: "rmsU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsU3"}
                },
                {
                    name: "rmsI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsI1"}
                },
                {
                    name: "rmsI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsI2"}
                },
                {
                    name: "rmsI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "rmsI3"}
                },
                // THD
                {
                    name: "thdU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdU1"}
                },
                {
                    name: "thdU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdU3"}
                },
                {
                    name: "thdU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdU3"}
                },
                {
                    name: "thdI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdI1"}
                },
                {
                    name: "thdI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdI2"}
                },
                {
                    name: "thdI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "thdI3"}
                },
                // CF
                {
                    name: "cfU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "cfU1"}
                },
                {
                    name: "cfU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "cfU3"}
                },
                {
                    name: "cfU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "cfU3"}
                },
                {
                    name: "cfI1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "cfI1"}
                },
                {
                    name: "cfI2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "cfI2"}
                },
                {
                    name: "cfI3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "cfI3"}
                },
                // Hz
                {
                    name: "hz", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "hz"}
                },
                // W
                {
                    name: "p1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "p1"}
                },
                {
                    name: "p2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "p2"}
                },
                {
                    name: "p3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "p3"}
                },
                // VA
                {
                    name: "s1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "s1"}
                },
                {
                    name: "s2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "s2"}
                },
                {
                    name: "s3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "s3"}
                },
                // Var
                {
                    name: "q1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "q1"}
                },
                {
                    name: "q2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "q2"}
                },
                {
                    name: "q3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "q3"}
                },
                // PF
                {
                    name: "pf1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pf1"}
                },
                {
                    name: "pf2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pf2"}
                },
                {
                    name: "pf3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pf3"}
                },
                // DPF
                {
                    name: "dpf1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "dpf1"}
                },
                {
                    name: "dpf2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "dpf2"}
                },
                {
                    name: "dpf3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "dpf3"}
                },
                // Tan
                {
                    name: "tan1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "tan1"}
                },
                {
                    name: "tan2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "tan2"}
                },
                {
                    name: "tan3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "tan3"}
                },
                // unb
                {
                    name: "unb", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "unb"}
                },
                // Pst
                {
                    name: "pstU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pstU1"}
                },
                {
                    name: "pstU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pstU2"}
                },
                {
                    name: "pstU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pstU3"}
                },
                // Plt
                {
                    name: "pltU1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pltU1"}
                },
                {
                    name: "pltU2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pltU2"}
                },
                {
                    name: "pltU3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,
                    markPoint: markPoint, markLine: markLine,
                    encode: {x: "time", y: "pltU3"}
                },
                //Vh
                {name: "vh1", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh2", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh3", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh4", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh5", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh6", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh7", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh8", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh9", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh10", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh11", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh12", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh13", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh14", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh15", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh16", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh17", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh18", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh19", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh20", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh21", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh22", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh23", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh24", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh25", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh26", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh27", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh28", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh29", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh30", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh31", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh32", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh33", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh34", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh35", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh36", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh37", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh38", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh39", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh40", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh41", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh42", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh43", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh44", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh45", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh46", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh47", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh48", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh49", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,},
                {name: "vh50", type: "line", smooth: true, showSymbol: true, hoverAnimation: false,}
            ]
        };
        var option2 = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['U1', 'U2', 'U3', 'U4', 'I1', 'I2', 'I3', 'I4']
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
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
                    20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
                    37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49]
            },
            yAxis: {
                type: 'value',
                scale: true,
                axisLabel: {
                    formatter: '{value}'
                }
            }
        };
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
                {name: "U1", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    axisLabel: {show: false,},
                    itemStyle: {color: gaugePointerColor[0]},
                    title: {show: false},
                    detail: {show: false}
                },
                {name: "U2", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: {length: pointerLength[1]},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[1]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[1]}]
                },
                {name: "U3", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: {length: pointerLength[2] },
                    //指针样式
                    itemStyle: {color: gaugePointerColor[2]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[2]}]
                },
                {
                    name: "V1", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: { length: pointerLength[3] },
                    //指针样式
                    itemStyle: {color: gaugePointerColor[0]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[3]}]
                },
                {name: "V2", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: {length: pointerLength[4]},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[1]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[4]}]
                },
                {name: "V3", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: {   length: pointerLength[5]},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[2]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[5]}]
                },
                {name: "A1", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: {     length: pointerLength[6] },
                    //指针样式
                    itemStyle: {color: gaugePointerColor[0]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[6]}]
                },
                {name: "A2", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99, splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}
                    },
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: {
                    //     length: pointerLength[7]
                    // },
                    //指针样式
                    itemStyle: {color: gaugePointerColor[1]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[7]}]
                },
                {name: "A3", type: "gauge", min: 0, max: 360, startAngle: 0, endAngle: 359.99,
                    //分割段数
                    splitNumber: 12,
                    //分隔线
                    splitLine: {show: true, length: "10%", lineStyle: {width: 4}},
                    //仪表盘轴线
                    axisLine: {show: true, lineStyle: {color: [[0.5, "#ccc"], [1, "#ccc"]], width: 10}},
                    //刻度线
                    axisTick: {show: true, splitNumber: 2, length: "5%", lineStyle: {width: 2}},
                    //刻度标签
                    axisLabel: {show: false,},
                    //指针
                    // pointer: { length: pointerLength[8]},
                    //指针样式
                    itemStyle: {color: gaugePointerColor[2]},
                    title: {show: false},
                    detail: {show: false}
                    // data:[{value: pointerAngle[8]}]
                }
            ]
        };

        var option4 = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    label: {
                        backgroundColor: '#283b56'
                    }
                }
            },
            legend: {
                data:['U1', 'U2', 'U3', 'U4', 'I1', 'I2', 'I3', 'I4']
            },
            dataZoom: {
                show: false,
                start: 0,
                end: 100
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: true,
                    data: (function (){
                        var now = new Date();
                        var res = [];
                        var len = 10;
                        while (len--) {
                            res.unshift(now.toLocaleTimeString().replace(/^\D*/,''));
                            now = new Date(now - 2000);
                        }
                        return res;
                    })()
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    scale: true,
                    max: 300,
                    min: -300,
                    boundaryGap: [0.2, 0.2]
                }
            ],
            series: [
                {
                    name:'U1',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'U2',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'U3',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'U4',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I1',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I2',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I3',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                },
                {
                    name:'I4',
                    type:'line',
                    smooth: 'true',
                    data:(function (){
                        var res = [0,0,0,0,0,0,0,0,0,0];
                        return res;
                    })()
                }
            ]
        };

        // echarts图表容器
        var eventChart1 = echarts.init(document.getElementById('item1-graph'));
        var eventChart2 = echarts.init(document.getElementById('item2'));
        var eventChart3 = echarts.init(document.getElementById('item3-graph'));
        var eventChart4 = echarts.init(document.getElementById('item4-graph'));

        //事件绑定函数
        function eventBanding(){
            // 三相不平衡度表右侧按钮事件绑定
            $("#item3-sidebar ol li button").each(function () {
                $(this).click(function () {
                    $("#item3-sidebar ol li button").removeClass("active");
                    $(this).addClass("active");
                    for (var i = 0; i < sxbphdlegend.length; i++) {
                        if (sxbphdlegend[i].indexOf(this.value) >= 0) {
                            // 显示对应的系列
                            eventChart3.dispatchAction({
                                type: "legendSelect",
                                name: sxbphdlegend[i]
                            });
                        }
                        else {
                            // 隐藏其他系列
                            eventChart3.dispatchAction({
                                type: "legendUnSelect",
                                name: sxbphdlegend[i]
                            });
                        }
                    }
                    // 更新图左侧文字
                    updateSxdyt2(dataSxbphd);
                });
            });
            // 绑定趋势图上方button点击事件
            $("#item1-params-list ol li button").click(function(){
                var self=this;
                $("#item1-params-list ol li button").removeClass("active");
                $(this).addClass("active");
                if(this.value === "ah" || this.value === "vh") {
                    $("#myDropDown")[0].style.display = "block";
                } else {
                    $("#myDropDown")[0].style.display = "none";
                }
                qstLegend.forEach(function(item){
                    if(0===item.indexOf(self.value)){
                        eventChart1.dispatchAction({
                            type: "legendSelect",
                            name: item
                        });
                    }
                    else{
                        eventChart1.dispatchAction({
                            type: "legendUnSelect",
                            name: item
                        });
                    }
                });
            });
            $("#item1-params-text ol li button").click(function () {
                $(this).toggleClass("active");
                if($(this).hasClass("active")){
                    switch(this.value){
                        case 'max':markPoint.data.unshift({name:'最大值',type: 'max'});break;//最大值标注配置项添加在数组头
                        case 'min':markPoint.data.push({name:'最小值',type: 'min'});break;//最小值标注配置项添加在数组尾
                        case 'average':markLine.data.push({name:'平均值',type: 'average'});break;//平均值标注配置项添加
                        default: break;
                    }
                }
                else{
                    switch(this.value){
                        case 'max':markPoint.data.shift();break;//移除最大值标注配置项
                        case 'min':markPoint.data.pop();break;//移除最小值标注配置项
                        case 'average':markLine.data.pop();break;//移除平均值标注配置项
                        default: break;
                    }
                }
                eventChart1.setOption(option1);
            });
            // 绑定趋势图 右侧U\V\A button选择栏事件
            $("#item1-sidebar ol li button").each(function () {
                $(this).click(function () {
                    var currentLegend,self=this;
                    $("#item1-sidebar ol li button").removeClass("active");
                    $(this).addClass("active");
                    $('#item1-params-list ol li button').each(function(){
                        if($(this).hasClass("active")){
                            currentLegend=this.value;
                            return false;
                        }
                    });

                    qstLegend.forEach(function(item){
                        if(0===item.indexOf(currentLegend) && item.indexOf(self.value)>=0){
                            eventChart1.dispatchAction({
                                type: "legendSelect",
                                name: item
                            });
                        }
                        else{
                            eventChart1.dispatchAction({
                                type: "legendUnSelect",
                                name: item
                            })
                        }
                    });
                });
            });
            $("#item1-params-list ol li button.active").trigger("click");//默认显示rms数据
            $("#item1-sidebar ol li button.active").trigger("click");
        };
    </script>

    <%--趋势图相关函数 --%>
    <script type="text/javascript">

        var dataSource1 = new Array(3);// = [820, 932, 901, 934, 1290, 1330, 1320];
        var dataSource2 = new Array(3);
        var dataSource3 = new Array(3);

        // 获取趋势图数据
        function getDataQst(did) {
            $.ajax({
                type: "post",
                url: "getQst",
                data: {did: did},
                dataType: "json",
                success: function (data) {
                    addData(qstRecords, JSON.parse(data));
                    updateQst(qstRecords);

                    //更新数据
                    var nRecord = JSON.parse(data);
                    var vb = nRecord["allVh"];

                    dataSource1[0] = vb[0][0];
                    dataSource1[1] = vb[0][1];
                    dataSource1[2] = vb[0][2];

                    dataSource2[0] = vb[1][0];
                    dataSource2[1] = vb[1][1];
                    dataSource2[2] = vb[1][2];

                    dataSource3[0] = vb[2][0];
                    dataSource3[1] = vb[2][1];
                    dataSource3[2] = vb[2][2];
                }
            });
        }

        //选择1~50次中的某一次，echarts显示相应的折线
        $("#myDropDown").change(function(){
            var opt=$("#myDropDown").val();
            var selectValue = 'vh' + opt;
            var myOption = eventChart1.getOption();
            //var dataSource = [820, 932, 901, 934, 1290, 1330, 1320];
            alert("datascr1"+dataSource1);
            alert("datascr2"+dataSource2);
            alert("datascr3"+dataSource3);
            myOption.series.forEach(function (item, index) {
                if(item.name === selectValue) {
                    myOption.series[index].data = dataSource1;
                    eventChart1.setOption(myOption);
                }
            })
        });

        // 更新趋势图
        function updateQst(data) {
            eventChart1.setOption({
                dataset: {source: data}
            });
        }
        // 添加数据
        function addData(qstRecords, newRecord) {
            if (qstRecords.length > (60 * 12)) {
                qstRecords.shift();
                qstRecords.shift();
                qstRecords.shift();
            }
            // 构造3条记录
            for(var i = 0; i < 3; i++){
                var oneRecord = {
                    time: newRecord["allHZ"][i]["time"],
                    // RMS
                    rmsU1: newRecord["allRMS"][i]["u1"],
                    rmsU2: newRecord["allRMS"][i]["u2"],
                    rmsU3: newRecord["allRMS"][i]["u3"],
                    rmsI1: newRecord["allRMS"][i]["i1"],
                    rmsI2: newRecord["allRMS"][i]["i2"],
                    rmsI3: newRecord["allRMS"][i]["i3"],
                    // THD
                    thdU1: newRecord["allTHD"][i]["u1"],
                    thdU2: newRecord["allTHD"][i]["u2"],
                    thdU3: newRecord["allTHD"][i]["u3"],
                    thdI1: newRecord["allTHD"][i]["i1"],
                    thdI2: newRecord["allTHD"][i]["i2"],
                    thdI3: newRecord["allTHD"][i]["i3"],
                    // CF
                    cfU1: newRecord["allCF"][i]["u1"],
                    cfU2: newRecord["allCF"][i]["u2"],
                    cfU3: newRecord["allCF"][i]["u3"],
                    cfI1: newRecord["allCF"][i]["i1"],
                    cfI2: newRecord["allCF"][i]["i2"],
                    cfI3: newRecord["allCF"][i]["i3"],
                    // Hz
                    hz: newRecord["allHZ"][i]["hz"],
                    // W
                    p1: newRecord["allW"][i]["p1"],
                    p2: newRecord["allW"][i]["p2"],
                    p3: newRecord["allW"][i]["p3"],
                    // VA
                    s1: newRecord["allVA"][i]["s1"],
                    s2: newRecord["allVA"][i]["s2"],
                    s3: newRecord["allVA"][i]["s3"],
                    // Var
                    q1: newRecord["allVAR"][i]["q1"],
                    q2: newRecord["allVAR"][i]["q2"],
                    q3: newRecord["allVAR"][i]["q3"],
                    // PF
                    pf1: newRecord["allPF"][i]["pf1"],
                    pf2: newRecord["allPF"][i]["pf2"],
                    pf3: newRecord["allPF"][i]["pf3"],
                    // DPF
                    dpf1: newRecord["allDPF"][i]["cosPhi1"],
                    dpf2: newRecord["allDPF"][i]["cosPhi2"],
                    dpf3: newRecord["allDPF"][i]["cosPhi3"],
                    // Tan
                    tan1: newRecord["allTAN"][i]["tan1"],
                    tan2: newRecord["allTAN"][i]["tan2"],
                    tan3: newRecord["allTAN"][i]["tan3"],
                    // unb
                    unb: newRecord["allUNB"][i]["unb"],
                    // Pst
                    pstU1: newRecord["allPST"][i]["pstU1"],
                    pstU2: newRecord["allPST"][i]["pstU2"],
                    pstU3: newRecord["allPST"][i]["pstU3"],
                    // Plt
                    pltU1: newRecord["allPLT"][i]["pltU1"],
                    pltU2: newRecord["allPLT"][i]["pltU2"],
                    pltU3: newRecord["allPLT"][i]["pltU3"],
                    // vh
                    vh1: newRecord["allVh"][i][0],
                    vh2: newRecord["allVh"][i][1],
                    vh3: newRecord["allVh"][i][2],
                    vh4: newRecord["allVh"][i][3],
                    vh5: newRecord["allVh"][i][4],
                    vh6: newRecord["allVh"][i][5],
                    vh7: newRecord["allVh"][i][6]// ,
                   /* vh8: newRecord["allVh"][i]["vh8"],
                    vh9: newRecord["allVh"][i]["vh9"],
                    vh10: newRecord["allVh"][i]["vh10"],
                    vh11: newRecord["allVh"][i]["vh11"],
                    vh12: newRecord["allVh"][i]["vh12"],
                    vh13: newRecord["allVh"][i]["vh13"],
                    vh14: newRecord["allVh"][i]["vh14"],
                    vh15: newRecord["allVh"][i]["vh15"],
                    vh16: newRecord["allVh"][i]["vh16"],
                    vh17: newRecord["allVh"][i]["vh17"],
                    vh18: newRecord["allVh"][i]["vh18"],
                    vh19: newRecord["allVh"][i]["vh19"],
                    vh20: newRecord["allVh"][i]["vh20"],
                    vh21: newRecord["allVh"][i]["vh21"],
                    vh22: newRecord["allVh"][i]["vh22"],
                    vh23: newRecord["allVh"][i]["vh23"],
                    vh24: newRecord["allVh"][i]["vh24"],
                    vh25: newRecord["allVh"][i]["vh25"],
                    vh26: newRecord["allVh"][i]["vh26"],
                    vh27: newRecord["allVh"][i]["vh27"],
                    vh28: newRecord["allVh"][i]["vh28"],
                    vh29: newRecord["allVh"][i]["vh29"],
                    vh30: newRecord["allVh"][i]["vh30"],
                    vh31: newRecord["allVh"][i]["vh31"],
                    vh32: newRecord["allVh"][i]["vh32"],
                    vh33: newRecord["allVh"][i]["vh33"],
                    vh34: newRecord["allVh"][i]["vh34"],
                    vh35: newRecord["allVh"][i]["vh35"],
                    vh36: newRecord["allVh"][i]["vh36"],
                    vh37: newRecord["allVh"][i]["vh37"],
                    vh38: newRecord["allVh"][i]["vh38"],
                    vh39: newRecord["allVh"][i]["vh39"],
                    vh40: newRecord["allVh"][i]["vh40"],
                    vh41: newRecord["allVh"][i]["vh41"],
                    vh42: newRecord["allVh"][i]["vh42"],
                    vh43: newRecord["allVh"][i]["vh43"],
                    vh44: newRecord["allVh"][i]["vh44"],
                    vh45: newRecord["allVh"][i]["vh45"],
                    vh46: newRecord["allVh"][i]["vh46"],
                    vh47: newRecord["allVh"][i]["vh47"],
                    vh48: newRecord["allVh"][i]["vh48"],
                    vh49: newRecord["allVh"][i]["vh49"],
                    vh50: newRecord["allVh"][i]["vh50"]*/
                    // Ah
                };
                qstRecords.push(oneRecord);
            }
        }
    </script>

    <%--谐波图相关函数 --%>
    <script type="text/javascript">
        // 获取谐波数据
        function getDataXb(did) {
            $.ajax({
                type: "post",
                url: "getXB",
                data: {
                    did: did,
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var ndata = obj.nowpowerxb;

                    updateXbt(ndata);
                }
            });
        }
        // 更新谐波图
        function updateXbt(obj) {

            var series=["u1Xb","u2Xb","u3Xb","u4Xb","i1Xb","i2Xb","i3Xb","i4Xb"];
            var res=[];//二维数组

            for(var i=0;i<series.length;i++){
                    var temp=[];    //一维数组
                    for(var j=1;j< 50 + 1;j++){
                        var jindx = series[i] + j;
                        temp.push(parseFloat(obj[jindx]));
                    }
                    res.push(temp);
            }
            eventChart2.setOption({
                series: [{name: "U1", type: 'line', data: res[0]},
                    {name: "U2", type: 'line', data: res[1]},
                    {name: "U3", type: 'line', data: res[2]},
                    {name: "U4", type: 'line', data: res[3]},
                    {name: "I1", type: 'line', data: res[4]},
                    {name: "I2", type: 'line', data: res[5]},
                    {name: "I3", type: 'line', data: res[6]},
                    {name: "I4", type: 'line', data: res[7]}
                ]
            });
        }
    </script>

    <%--三相不平衡度表相关函数 --%>
    <script type="text/javascript">
        // 获取三相电压、电流数据
        function getDataSxdy(did) {
            $.ajax({
                type: "post",
                url: "getSXDY",
                data: {did: did},
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    dataSxbphd = obj.nowpowersxdy;
                    updateSxdyt(dataSxbphd);
                    // 设置显示的系列
                    $("#item3-sidebar ol li button.active").trigger("click");
                }
            });
        }

        // 更新三相电压、电流图
        function updateSxdyt(data) {
            // 更新图左侧文字
            updateSxdyt2(data);
            // 计算指针长度，并用数组存起来
            var pointerLength = [];
            pointerLength.push(floatToPercent(data["u1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["u2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["u3"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["v1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["v2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["v3"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["a1"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["a2"] / maxAmplitude));
            pointerLength.push(floatToPercent(data["a3"] / maxAmplitude));
            // 更新图
            eventChart3.setOption({
                series: [
                    {
                        name: "U1",
                        pointer: {length: pointerLength[0]},
                        data: [{value: data["angleU1"]}]
                    },
                    {
                        name: "U2",
                        pointer: {length: pointerLength[1]},
                        data: [{value: data["angleU2"]}]
                    },
                    {
                        name: "U3",
                        pointer: {length: pointerLength[2]},
                        data: [{value: data["angleU3"]}]
                    },
                    {
                        name: "V1",
                        pointer: {length: pointerLength[3]},
                        data: [{value: data["angleV1"]}]
                    },
                    {
                        name: "V2",
                        pointer: {length: pointerLength[4]},
                        data: [{value: data["angleV2"]}]
                    },
                    {
                        name: "V3",
                        pointer: {length: pointerLength[5]},
                        data: [{value: data["angleV3"]}]
                    },
                    {
                        name: "A1",
                        pointer: {length: pointerLength[6]},
                        data: [{value: data["angleA1"]}]
                    },
                    {
                        name: "A2",
                        pointer: {length: pointerLength[7]},
                        data: [{value: data["angleA2"]}]
                    },
                    {
                        name: "A3",
                        pointer: {length: pointerLength[8]},
                        data: [{value: data["angleA3"]}]
                    }
                ]
            });
        }
        // 更新三相电压、电流图左侧显示的文字
        function updateSxdyt2(data) {
            // 获取被选中按钮的value值
            var value = $("#item3-sidebar ol li button.active").attr("value");

            switch (value) {
                case "U" :
                case "V" :
                case "A" : {
                    // 更新幅值
                    $("#item3-text-name1").html(value + "1");
                    $("#item3-text-value1").html(data[value.toLowerCase() + "1"].toFixed(2));
                    $("#item3-text-name2").html(value + "2");
                    $("#item3-text-value2").html(data[value.toLowerCase() + "2"].toFixed(2));
                    $("#item3-text-name3").html(value + "3");
                    $("#item3-text-value3").html(data[value.toLowerCase() + "3"].toFixed(2));
                    $("#item3-text-nameunb").html(value + "unb");
                    $("#item3-text-valueunb").html(data[value.toLowerCase() + "unb"].toFixed(2));
                    // 更新相位差
                    $("#item3-text ol.diff").show();
                    $("#item3-text-diff1").html((data["angle" + value + "2"] - data["angle" + value + "1"]).toFixed(2));
                    $("#item3-text-diff2").html((data["angle" + value + "3"] - data["angle" + value + "2"]).toFixed(2));
                    $("#item3-text-diff3").html((data["angle" + value + "1"] - data["angle" + value + "3"]).toFixed(2));
                    break;
                }
                case "1" :
                case "2" :
                case "3" : {
                    // 更新幅值
                    $("#item3-text-name1").html("U" + value);
                    $("#item3-text-value1").html(data["u" + value].toFixed(2));
                    $("#item3-text-name2").html("V" + value);
                    $("#item3-text-value2").html(data["v" + value].toFixed(2));
                    $("#item3-text-name3").html("A" + value);
                    $("#item3-text-value3").html(data["a" + value].toFixed(2));
                    // 隐藏相位差
                    $("#item3-text ol.diff").hide();
                    break;
                }
                default : {
                }
            }
        }
        // 浮点数转成百分比，保留一位小数，返回字符串
        function floatToPercent(num) {
            return (new Number(num) * 100).toFixed(1) + "%";
        }
    </script>

    <%--参数值表格相关函数--%>
    <script type="text/javascript">
        // 获取参数值
        function getDataParams(did) {
            $.ajax({
                type: "post",
                url: "getParameter",
                data: {did: did},
                success: function(data){
                    var obj = JSON.parse(data);
                    var rt = obj.nowpowerparm;
                    updateParams(rt);
                }
            })
        }
        // 更新参数值表格
        function updateParams(data) {

            $("#params-basic").html(
                "<caption>基本参数</caption>"+
                "<tr><th>U1</th><td>"+data["u1"].toFixed(2)+"</td></tr>"+
                "<tr><th>U2</th><td>"+data["u2"].toFixed(2)+"</td></tr>"+
                "<tr><th>U3</th><td>"+data["u3"].toFixed(2)+"</td></tr>"+
                "<tr><th>U4</th><td>"+data["u4"].toFixed(2)+"</td></tr>"+
                "<tr><th>I1</th><td>"+data["i1"].toFixed(2)+"</td></tr>"+
                "<tr><th>I2</th><td>"+data["i2"].toFixed(2)+"</td></tr>"+
                "<tr><th>I3</th><td>"+data["i3"].toFixed(2)+"</td></tr>"+
                "<tr><th>I4</th><td>"+data["i4"].toFixed(2)+"</td></tr>"
            );
            $("#params-power").html(
                "<caption>功率参数</caption>"+
                "<tr><th></th><th>相1</th><th>相2</th><th>相3</th><th>总和</th></tr>"+
                "<tr><th>P(W)</th><td>"+data["p1"].toFixed(2)+"</td><td>"+data["p2"].toFixed(2)+"</td><td>"+data["p3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["p1"])+parseFloat(data["p2"])+parseFloat(data["p3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>Q(Var)</th><td>"+data["q1"].toFixed(2)+"</td><td>"+data["q2"].toFixed(2)+"</td><td>"+data["q3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["q1"])+parseFloat(data["q2"])+parseFloat(data["q3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>S(VA)</th><td>"+data["s1"].toFixed(2)+"</td><td>"+data["s2"].toFixed(2)+"</td><td>"+data["s3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["s1"])+parseFloat(data["s2"])+parseFloat(data["s3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>PF</th><td>"+data["pf1"].toFixed(2)+"</td><td>"+data["pf2"].toFixed(2)+"</td><td>"+data["pf3"].toFixed(2)+"</td><td>"+Number(parseFloat(data["pf1"])+parseFloat(data["pf2"])+parseFloat(data["pf3"])).toFixed(2)+"</td></tr>"+
                "<tr><th>Cos PHI</th><td>"+data["cosPhi1"].toFixed(2)+"</td><td>"+data["cosPhi2"].toFixed(2)+"</td><td>"+data["cosPhi3"].toFixed(2)+"</td><td></td></tr>"
            );
            $("#params-unb").html(
                "<caption>&nbsp;</caption>"+
               /* "<tr><th>不平衡度</th><td>"+data["unb"].toFixed(2)+"</td></tr>"+*/
                "<tr><th>频率</th><td>"+data["hz"].toFixed(2)+"</td></tr>"
            );
            $("#params-shanbian").html(
                "<caption>闪变</caption>"+
                "<tr><th></th><th>U1</th><th>U2</th><th>U3</th></tr>"+
                "<tr><th>|f|</th><td>"+data["iflU1"].toFixed(2)+"</td><td>"+data["iflU2"].toFixed(2)+"</td><td>"+data["iflU3"].toFixed(2)+"</td></tr>"+
                "<tr><th>Pst</th><td>"+data["pstU1"].toFixed(2)+"</td><td>"+data["pstU2"].toFixed(2)+"</td><td>"+data["pstU3"].toFixed(2)+"</td></tr>"+
                "<tr><th>Plt</th><td>"+data["pltU1"].toFixed(2)+"</td><td>"+data["pltU2"].toFixed(2)+"</td><td>"+data["pltU3"].toFixed(2)+"</td></tr>"
            );
        }
    </script>

    <%--在线监测模块各个图表初始化--%>
    <script type="text/javascript">
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

        function chartsInit(){
            // 初始化图表
            eventChart1.setOption(option1);
            eventChart2.setOption(option2);
            eventChart3.setOption(option3);
            eventChart4.setOption(option4);

            eventBanding();
            // 按指定时间间隔5s 更新图表
            setInterval(function () {
                getDataQst($("#monitorpnt").val());
                getDataXb($("#monitorpnt").val());
                getDataSxdy($("#monitorpnt").val());
                getDataParams($("#monitorpnt").val());
                getOnlineWave($("#monitorpnt").val());
            },5000);


            // 更新时间 每2s
            setInterval(function () {
                $("#item3-realtime span").html(getNowFormatDate());
            },2000);
        }
        chartsInit();

    </script>

    <%--实时图形--%>
    <script type="text/javascript">
        function getOnlineWave(did){

            var data0 = 0;
            var data1 = 0;
            var data2 = 0;
            var data3 = 0;
            var data4 = 0;
            var data5 = 0;
            var data6 = 0;
            var data7 = 0;

            $.ajax({
                type: "post",
                url: "getXBwave",
                data: {
                    did: did
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);

                    data0 = obj.nowpowerwave['u1'];
                    data1 = obj.nowpowerwave['u2'];
                    data2 = obj.nowpowerwave['u3'];
                    data3 = obj.nowpowerwave['u4'];
                    data4 = obj.nowpowerwave['i1'];
                    data5 = obj.nowpowerwave['i2'];
                    data6 = obj.nowpowerwave['i3'];
                    data7 = obj.nowpowerwave['i4'];

                    axisData = (new Date()).toLocaleTimeString().replace(/^\D*/,'');

                    var odata0 = option4.series[0].data;
                    var odata1 = option4.series[1].data;
                    var odata2 = option4.series[2].data;
                    var odata3 = option4.series[3].data;
                    var odata4 = option4.series[4].data;
                    var odata5 = option4.series[5].data;
                    var odata6 = option4.series[6].data;
                    var odata7 = option4.series[7].data;

                    odata0.shift();
                    odata0.push(data0);
                    odata1.shift();
                    odata1.push(data1);
                    odata2.shift();
                    odata2.push(data2);
                    odata3.shift();
                    odata3.push(data3);
                    odata4.shift();
                    odata4.push(data4);
                    odata5.shift();
                    odata5.push(data5);
                    odata6.shift();
                    odata6.push(data6);
                    odata7.shift();
                    odata7.push(data7);

                    option4.xAxis[0].data.shift();
                    option4.xAxis[0].data.push(axisData);

                    eventChart4.setOption(option4);
                }
            });
        }
    </script>


    <%--选择监测点时，从后台读取相应数据--%>
    <script type="text/javascript"f>
    $("#monitorpnt").change(function(){
        var opt=$("#monitorpnt").val();
        if(opt) {
            if ($("#item1").is(":visible"))
                getDataQst(opt);
            else if ($("#item2").is(":visible"))
                getDataXb(opt);
            else if ($("#item3").is(":visible"))
                getDataSxdy(opt);
            else if ($("#item4").is(":visible"))
                getDataParams(opt);
            else if ($("#item5").is(":visible"))
                getOnlineWave(opt);
        }
    });
    </script>


</body>

</html>