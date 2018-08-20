<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    <link href="css/jstree-default/style.css" rel="stylesheet"/>

</head>

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
            <!-- Main Widgets -->
            <div class="block-area">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem2">•历史曲线</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem3">•知识库</a>
                            </li>
                        </ul>

                        <%--<div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            历史曲线
                            <button id="test" onclick="test()">测试'查看历史曲线'</button>
                        </div>--%>

                        <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            <button id="test" onclick="test()">测试'查看历史曲线'</button>
                            <div class="col-md-2">
                                <select id='item2-menu' class="form-control">
                                    <option value="item2-1">电压/电流</option>
                                    <option value="item2-2">频率</option>
                                    <option value="item2-3">功率</option>
                                    <option value="item2-4">浪涌/塌陷</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select  class="form-control" name="" id="">
                                    <option value="">监测点1</option>
                                </select>
                            </div>
                            <div class="clearfix"></div>
                            <ul>
                                <li id='item2-1'>
                                    <div id="item2-UI-ctrl">
                                        <ul>
                                            <li class="mark-ctrl">
                                                <input type="checkbox" name="" id="" value='max'>最大值
                                                <input type="checkbox" name="" id="" value='min'>最小值
                                                <input type="checkbox" name="" id="" value='average'>平均值
                                            </li>
                                            <li class="series-ctrl">
                                                <input class="default-show" type="checkbox" name="" value="u1">U1
                                                <input type="checkbox" name="" value="u2">U2
                                                <input type="checkbox" name="" value="u3">U3
                                                <input type="checkbox" name="" value="u4">U4
                                                <input class="default-show" type="checkbox" name="" value="i1">I1
                                                <input type="checkbox" name="" value="i2">I2
                                                <input type="checkbox" name="" value="i1">I3
                                                <input type="checkbox" name="" value="i4">I4
                                                <input type="checkbox" name="" value="i">I
                                            </li>

                                        </ul>
                                    </div>
                                    <div id='item2-UI' style='width: 100%;height: 500px;'></div>
                                </li>
                                <li id='item2-2'>
                                    <div id='item2-HZ-ctrl'>
                                        <input type="checkbox" name="" id="" value='max'>最大值
                                        <input type="checkbox" name="" id="" value='min'>最小值
                                        <input type="checkbox" name="" id="" value='average'>平均值
                                    </div>
                                    <div id='item2-HZ' style='width: 100%;height: 500px;'></div>
                                </li>
                                <li id='item2-3'>
                                    <div id='item2-P-ctrl'>
                                        <ul>
                                            <li class="mark-ctrl">
                                                <input type="checkbox" name="" id="" value='max'>最大值
                                                <input type="checkbox" name="" id="" value='min'>最小值
                                                <input type="checkbox" name="" id="" value='average'>平均值
                                            </li>
                                            <li class="series-ctrl">
                                                <input class="default-show" type="checkbox" name="" id="" value='p1'>P1
                                                <input type="checkbox" name="" id="" value='p2'>P2
                                                <input type="checkbox" name="" id="" value='p3'>P3
                                                <input type="checkbox" name="" id="" value='p'>P
                                                <input class="default-show" type="checkbox" name="" id="" value='s1'>S1
                                                <input type="checkbox" name="" id="" value='s2'>S2
                                                <input type="checkbox" name="" id="" value='s3'>S3
                                                <input type="checkbox" name="" id="" value='s'>S
                                                <input type="checkbox" name="" id="" value='q1'>Q1
                                                <input type="checkbox" name="" id="" value='q2'>Q2
                                                <input type="checkbox" name="" id="" value='q3'>Q3
                                                <input type="checkbox" name="" id="" value='q'>Q
                                                <input class="default-show" type="checkbox" name="" id="" value='pf1'>PF1
                                                <input type="checkbox" name="" id="" value='pf2'>PF2
                                                <input type="checkbox" name="" id="" value='pf3'>PF3
                                                <input type="checkbox" name="" id="" value='pf'>PF
                                                <input class="default-show" type="checkbox" name="" id="" value='dpf1'>DPF1
                                                <input type="checkbox" name="" id="" value='dpf2'>DPF2
                                                <input type="checkbox" name="" id="" value='dpf3'>DPF3
                                                <input type="checkbox" name="" id="" value='dpf'>DPF
                                            </li>
                                        </ul>
                                    </div>
                                    <div id='item2-P' style='width: 100%;height: 500px;'></div>
                                </li>
                                <li id='item2-4'>
                                    <div></div>
                                    <div></div>
                                </li>
                            </ul>
                        </div>

                        <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            知识库
                            <!-- 动态加载知识库项 -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div id="jstree"></div>
                                    <div id="nodeid" style="display: none"></div>

                                    <div class="btn-group">
                                        <button id = "button-update-kl" type="button" class="btn btn-sm btn-alt">修改知识</button>
                                        <button id = "button-delete-kl" type="button" class="btn btn-sm btn-alt">删除知识</button>
                                        <button id = "button-add-kl" type="button" class="btn btn-sm btn-alt">添加知识</button>
                                        <button id = "button-upload-kl" type="button" class="btn btn-sm btn-alt">上传到总服务器</button>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="btn-group">
                                        <button id = "button-addtreenode-kl"  type="button" class="btn btn-sm btn-alt">添加树节点</button>
                                        <button id = "button-treenode-kl"  type="button" class="btn btn-sm btn-alt">修改树节点</button>
                                        <button id = "button-deletetreenode-kl"  type="button" class="btn btn-sm btn-alt">删除树节点</button>
                                    </div>
                                </div>

                                <div class=="col-md-8" >
                                    标题<textarea id='node-tilte-text' style="height: 50px;color: #1c2d3f"></textarea>
                                </div>
                                <div class=="col-md-8" >
                                    内容<textarea id='content-text' style="height: 120px;color: #1c2d3f"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>

    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <script src="js/jquery-3.3.1.js"></script>
    <!-- jQuery Library -->

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

    <!-- 省\市\机房下拉菜单-->
    <script type="text/javascript">
        /*加载省下拉选*/
        var provinceid="<%=session.getAttribute("probank")%>";
        if(provinceid){
            $('#province_code').append("<option value='" + provinceid + "' >" + provinceid + "</option>");
        }

        /*加载市下拉选*/
        function getCity() {
            var pname="<%=session.getAttribute("probank")%>";

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

    <!-- 切换子菜单-->
    <script type="text/javascript">
        $("#item2").show();
        $("#item3").hide();

        $(document).ready(function(){
            $("#subItem2").click(function(){
                $("#item2").show();
                $("#item3").hide();
            });
            $("#subItem3").click(function(){
                $("#item2").hide();
                $("#item3").show();
            });
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

    <!-- 根据类型、监测点、时间范围查看历史曲线 -->
    <script type="text/javascript">
        function test(){
            alert("根据类型、监测点、时间范围查看历史曲线");

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getParameterHis",
                data: {
                    monitorpointid: monitorpoint,
                    checktype: "电压/电流", //频率 功率 浪涌/塌陷
                    starttime: "2018-2-1 10：00：00",  // 2018-2-1 10：00：00
                    endtime: "2018-7-5 10：00：00"  // 2018-7-5 10：00：00
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                },
                error: function () {
                    alert("失败");
                }
            });
        }
    </script>

    <!-- 动态加载菜单项 -->
    <!-- jstree-->
    <script type="text/javascript">

        $(function () {
            $('#jstree').jstree({
                "core": {
                    "themes": {
                        "responsive": false
                    },
                    "check_callback": true,
                    'data': function (obj, callback) {
                        var jsonstr = "[]";
                        var jsonarray = eval('(' + jsonstr + ')');
                        $.ajax({
                            url: "getKnowledgeTree",
                            dataType: "json",
                            async: false,
                            success: function (result) {
                                var arrays = result.allkltree;
                                for (var i = 0; i < arrays.length; i++) {
                                    var arr = {
                                        "id": arrays[i].kid,
                                        "parent": arrays[i].parentkid == "0" ? "#" : arrays[i].parentkid,
                                        "text": arrays[i].kname
                                    }
                                    jsonarray.push(arr);
                                }
                            }
                        });
                        callback.call(this, jsonarray);
                    },
                }
            })
        });

        $('button').on('click', function () {
            $('#jstree').jstree(true).select_node('child_node_1');
            $('#jstree').jstree('select_node', 'child_node_1');
            $.jstree.reference('#jstree').select_node('child_node_1');
        });

        // 事件处理-查看知识
        $('#jstree').bind("activate_node.jstree", function (obj, e) {
            // 获取当前节点，根据节点kid找到数据库中存储的内容
            var currentNode = e.node;

            $.ajax({
                type: "post",
                url: "getKnowledgeTreeNodeContent",
                data: {kid: currentNode.id},
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var rt = obj.knowledgenode;
                    $("#content-text").val("");
                    $("#content-text").val(rt.content);
                }
            });
            //当前点击的节点的id存到一个隐藏的div中
            $("#nodeid").val(currentNode.id);
        });

        // 事件处理-修改知识
        $('#button-update-kl').click(function(){
            var tmpcurrentNode=$("#content-text").val();
            var tmpNodeKid=$("#nodeid").val();

            $.ajax({
                type: "post",
                url: "updateKnowledgeTreeNodeContent",
                data: {
                    kid: tmpNodeKid,
                    tmpContent: tmpcurrentNode
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                }
            });

        });

        // 事件处理-删除知识
        $('#button-delete-kl').click(function(){
            var tmpNodeKid=$("#nodeid").val();

            $.ajax({
                type: "post",
                url: "deleteKnowledgeTreeNodeContent",
                data: {
                    kid: tmpNodeKid,
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                }
            });
        });

        // 事件处理-添加知识
        $('#button-add-kl').click(function(){
            var tmpNodeKid=$("#nodeid").val();
            var tmpcurrentNode=$("#content-text").val();

            $.ajax({
                type: "post",
                url: "addKnowledgeTreeNodeContent",
                data: {
                    kid: tmpNodeKid,
                    tmpcontent: tmpcurrentNode
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                }
            });
        });

        // 事件处理-上传到总服务器
        $('#button-upload-kl').click(function(){
            var tmpNodeKid=$("#nodeid").val();
            var tmpcurrentNode=$("#content-text").val();

            $.ajax({
                type: "post",
                url: "uploadKnowledgeTree",
                data: {
                    kid: tmpNodeKid,
                    tmpContent: tmpcurrentNode
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                },
            });
        });

        // 事件处理-添加树节点,所选节点下尾部追加
        $('#button-addtreenode-kl').click(function(){
            var tmpNodeKid=$("#nodeid").val();
            var tmpcurrentNodeTitle=$("#node-tilte-text").val();
            var tmpcurrentNode=$("#content-text").val();

            $.ajax({
                type: "post",
                url: "addKnowledgeTreeNodeStruct",
                data: {
                    kid: tmpNodeKid,
                    kname: tmpcurrentNodeTitle,
                    kcontent: tmpcurrentNode

                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                }
             });
        });

        // 事件处理-修改树节点
        $('#button-treenode-kl').click(function(){
            var tmpNodeKid=$("#nodeid").val();
            var tmpcurrentNodeTitle=$("#node-tilte-text").val();

            $.ajax({
                type: "post",
                url: "updateKnowledgeTreeNodeStruct",
                data: {
                    kid: tmpNodeKid,
                    kname: tmpcurrentNodeTitle
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                }
            });
        });

        // 事件处理-删除树节点
        $('#button-deletetreenode-kl').click(function(){
            var tmpNodeKid=$("#nodeid").val();

            $.ajax({
                type: "post",
                url: "deleteKnowledgeTreeNodeStruct",
                data: {
                    kid: tmpNodeKid
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                    //刷新树
                    $('#jstree').jstree(true).refresh();
                }
            });
        });
    </script>

    <!-- echarts图表绘制 -->
    <script src="js/echarts.js"></script>
    <script>
        (function(){
            //绘制图表需要的全局变量声明
            var eventChart1 = echarts.init(document.getElementById('item2-UI'));
            var eventChart2 = echarts.init(document.getElementById('item2-HZ'));
            var eventChart3 = echarts.init(document.getElementById('item2-P'));
            var chart1Legend=['u1','u2','u3','u4','i1','i2','i3','i4','i'];
            var chart3Legend=['p1','p2','p3','p','s1','s2','s3','s','q1','q2','q3','q',
                'pf1','pf2','pf3','pf','dpf1','dpf2','dpf3','dpf'];
            var markPointUI={//电压\电流图最大值、最小值标注点
                label: {formatter: '{a}{b}:{c}'},
                data: []
            };
            var markLineUI={//电压\电流图平均值标注线
                label: {formatter: '{a}{b}:{c}'},
                data: []
            };
            var markPointHZ={//频率图最大值、最小值标注点
                label: {formatter: '{a}{b}:{c}'},
                data: []
            };
            var markLineHZ={//频率图平均值标注线
                label: {formatter: '{a}{b}:{c}'},
                data: []
            };
            var markPointP={//功率图最大值、最小值标注点
                label: {formatter: '{a}{b}:{c}'},
                data: []
            };
            var markLineP={//功率图平均值标注线
                label: {formatter: '{a}{b}:{c}'},
                data: []
            };
            var option1 = {
                legend: {
                    show: false,
                    data: chart1Legend
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
                    //电压U
                    {
                        name: "u1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "u1"}
                    },
                    {
                        name: "u2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "u2"}
                    },
                    {
                        name: "u3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "u3"}
                    },
                    {
                        name: "u4", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "u4"}
                    },
                    //电流I
                    {
                        name: "i1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "i1"}
                    },
                    {
                        name: "i2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "i2"}
                    },
                    {
                        name: "i3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "i3"}
                    },
                    {
                        name: "i4", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "i4"}
                    },
                    {
                        name: "i", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointUI, markLine: markLineUI,
                        encode: {x: "time", y: "i"}
                    }
                ]
            };
            var option2 = {
                legend: {
                    show: false
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
                    //频率hz
                    {
                        name: 'hz',type: 'bar',
                        markPoint: markPointHZ, markLine: markLineHZ,
                        encode: {x: 'time',y:'hz'}
                    }
                ]
            };
            var option3 = {
                legend: {
                    show: false,
                    data: chart3Legend
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
                    //功率P
                    {
                        name: "p1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "p1"}
                    },
                    {
                        name: "p2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "p2"}
                    },
                    {
                        name: "p3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "p3"}
                    },
                    {
                        name: "p", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "p"}
                    },
                    //功率S
                    {
                        name: "s1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "s1"}
                    },
                    {
                        name: "s2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "s2"}
                    },
                    {
                        name: "s3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "s3"}
                    },
                    {
                        name: "s", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "s"}
                    },
                    //功率Q
                    {
                        name: "q1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "q1"}
                    },
                    {
                        name: "q2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "q2"}
                    },
                    {
                        name: "q3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "q3"}
                    },
                    {
                        name: "q", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "q"}
                    },
                    //功率PF
                    {
                        name: "pf1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "pf1"}
                    },
                    {
                        name: "pf2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "pf2"}
                    },
                    {
                        name: "pf3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "pf3"}
                    },
                    {
                        name: "pf", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "pf"}
                    },
                    //功率DPF
                    {
                        name: "dpf1", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "dpf1"}
                    },
                    {
                        name: "dpf2", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "dpf2"}
                    },
                    {
                        name: "dpf3", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "dpf3"}
                    },
                    {
                        name: "dpf", type: "line", smooth: true, showSymbol: false,
                        markPoint: markPointP, markLine: markLineP,
                        encode: {x: "time", y: "dpf"}
                    }
                ]
            };
            //事件绑定函数
            function eventBanding(){
                //绑定历史曲线菜单切换事件
                $('#item2-menu').change(function(){
                    $('#item2>ul>li').hide();
                    $('#'+$(this).val()).show();
                });
                //触发历史曲线菜单切换事件
                $('#item2-menu').trigger('change');
                //绑定UI图电压U、电流Icheckbox点击事件
                $('#item2-UI-ctrl ul li.series-ctrl input:checkbox').each(function(){
                    $(this).click(function () {
                        if(this.checked){
                            eventChart1.dispatchAction({
                                type: "legendSelect",
                                name: this.value
                            });
                        }
                        else{
                            eventChart1.dispatchAction({
                                type: "legendUnSelect",
                                name: this.value
                            });
                        }
                    });
                });
                //绑定UI图最大值、最小值、平均值checkbox点击事件
                $('#item2-UI-ctrl ul li.mark-ctrl input:checkbox').each(function(){
                    $(this).click(function(){
                        if(this.checked){
                            switch(this.value){
                                case 'max':markPointUI.data.unshift({name:'最大值',type: 'max'});break;//最大值标注配置项添加在数组头
                                case 'min':markPointUI.data.push({name:'最小值',type: 'min'});break;//最小值标注配置项添加在数组尾
                                case 'average':markLineUI.data.push({name:'平均值',type: 'average'});break;//平均值标注配置项添加
                                default: break;
                            }
                        }
                        else{
                            switch(this.value){
                                case 'max':markPointUI.data.shift();break;//移除最大值标注配置项
                                case 'min':markPointUI.data.pop();break;//移除最小值标注配置项
                                case 'average':markLineUI.data.pop();break;//移除平均值标注配置项
                                default: break;
                            }
                        }
                        eventChart1.setOption(option1);
                    });
                });
                //绑定评率图最大值、最小值、平均值checkbox点击事件
                $('#item2-HZ-ctrl input:checkbox').each(function(){
                    $(this).click(function(){
                        if(this.checked){
                            switch(this.value){
                                case 'max':markPointHZ.data.unshift({name:'最大值',type: 'max'});break;//最大值标注配置项添加在数组头
                                case 'min':markPointHZ.data.push({name:'最小值',type: 'min'});break;//最小值标注配置项添加在数组尾
                                case 'average':markLineHZ.data.push({name:'平均值',type: 'average'});break;//平均值标注配置项添加
                                default: break;
                            }
                        }
                        else{
                            switch(this.value){
                                case 'max':markPointHZ.data.shift();break;//移除最大值标注配置项
                                case 'min':markPointHZ.data.pop();break;//移除最小值标注配置项
                                case 'average':markLineHZ.data.pop();break;//移除平均值标注配置项
                                default: break;
                            }
                        }
                        eventChart2.setOption(option2);
                    });
                });
                //绑定功率图各种功率P的checkbox点击事件
                $('#item2-P-ctrl ul li.series-ctrl input:checkbox').each(function(){
                    $(this).click(function () {
                        if(this.checked){
                            eventChart3.dispatchAction({
                                type: "legendSelect",
                                name: this.value
                            });
                        }
                        else{
                            eventChart3.dispatchAction({
                                type: "legendUnSelect",
                                name: this.value
                            });
                        }
                    });
                });
                //绑定功率图最大值、最小值、平均值checkbox点击事件
                $('#item2-P-ctrl ul li.mark-ctrl input:checkbox').each(function(){
                    $(this).click(function(){
                        if(this.checked){
                            switch(this.value){
                                case 'max':markPointP.data.unshift({name:'最大值',type: 'max'});break;//最大值标注配置项添加在数组头
                                case 'min':markPointP.data.push({name:'最小值',type: 'min'});break;//最小值标注配置项添加在数组尾
                                case 'average':markLineP.data.push({name:'平均值',type: 'average'});break;//平均值标注配置项添加
                                default: break;
                            }
                        }
                        else{
                            switch(this.value){
                                case 'max':markPointP.data.shift();break;//移除最大值标注配置项
                                case 'min':markPointP.data.pop();break;//移除最小值标注配置项
                                case 'average':markLineP.data.pop();break;//移除平均值标注配置项
                                default: break;
                            }
                        }
                        eventChart3.setOption(option3);
                    });
                });
            }
            //绘制图表
            function drawCharts(){
                //设置初始配置项
                eventChart1.setOption(option1);
                eventChart2.setOption(option2);
                eventChart3.setOption(option3);
                //设置曲线图初始不显示
                chart1Legend.forEach(function(item){
                    eventChart1.dispatchAction({
                        type: "legendUnSelect",
                        name: item
                    });
                });
                chart3Legend.forEach(function(item){
                    eventChart3.dispatchAction({
                        type: "legendUnSelect",
                        name: item
                    });
                });
            }
            //获取数据，并更新图
            function getData(rawData){
                var data=[
                    {'time' :'2018-08-15','u1': 23,'u2': 24,'u3' :25,'u4': 26,'i1': 100,'i2': 300,'i3': 400,'i4' :500,'i' :250,'hz': 220,'p1': 100,'p2': 200,'p3': 300,'p': 400,'s1': 500,
                        's2': 600,'s3': 700,'s': 800, 'q1': 900,'q2': 1000,'q3': 1100, 'q': 1200,
                        'pf1': 1300,'pf2': 1400, 'pf3': 1500, 'pf': 1600, 'dpf1': 1700,'dpf2': 1800,'dpf3':1900,'dpf': 2000},
                    {'time' :'2018-08-16','u1': 50,'u2': 24,'u3' :55,'u4': 26,'i1': 200,'i2': 300,'i3': 400,'i4' :700,'i' :250,'hz': 440,'p1': 200,'p2': 200,'p3': 300,'p': 400,'s1': 500,
                        's2': 600,'s3': 700,'s': 800, 'q1': 900,'q2': 1000,'q3': 1100, 'q': 1200,
                        'pf1': 1300,'pf2': 1400, 'pf3': 1500, 'pf': 1600, 'dpf1': 1700,'dpf2': 1800,'dpf3':1900,'dpf': 2000},
                    {'time' :'2018-08-17','u1': 99,'u2': 24,'u3' :300,'u4': 26,'i1': 300,'i2': 300,'i3': 400,'i4' :900,'i' :250,'hz': 330,'p1': 300,'p2': 200,'p3': 300,'p': 400,'s1': 500,
                        's2': 600,'s3': 700,'s': 800, 'q1': 900,'q2': 1000,'q3': 1100, 'q': 1200,
                        'pf1': 1300,'pf2': 1400, 'pf3': 1500, 'pf': 1600, 'dpf1': 1700,'dpf2': 1800,'dpf3':1900,'dpf': 2000},
                    {'time' :'2018-08-18','u1': 20,'u2': 24,'u3' :200,'u4': 26,'i1': 400,'i2': 300,'i3': 400,'i4' :1000,'i':250,'hz': 220,'p1': 400,'p2': 200,'p3': 300,'p': 400,'s1': 500,
                        's2': 600,'s3': 700,'s': 800, 'q1': 900,'q2': 1000,'q3': 1100, 'q': 1200,
                        'pf1': 1300,'pf2': 1400, 'pf3': 1500, 'pf': 1600, 'dpf1': 1700,'dpf2': 1800,'dpf3':1900,'dpf': 2000}
                ];
                /*UI图表部分*/
                eventChart1.setOption({dataset: {source: data}});
                $('#item2-UI-ctrl input.default-show').each(function(){//显示默认的曲线系列
                    $(this).trigger('click');
                });
                /*频率HZ图表部分*/
                eventChart2.setOption({dataset: {source: data}});
                /*功率P图表部分*/
                eventChart3.setOption({dataset: {source: data}});
                $('#item2-P-ctrl input.default-show').each(function(){//显示默认的曲线系列
                    $(this).trigger('click');
                });
            }
            //为item2下所有的ul赋予样式list-style:none
            $('#item2 ul').css('list-style', 'none');
            eventBanding();
            drawCharts();
            getData();
        })();
    </script>
</body>

</html>