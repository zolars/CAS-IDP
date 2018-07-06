<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 引入struts的标签库-->


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
    <link href="css/calendar.css" rel="stylesheet">
    <link href="css/media-player.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/icons.css" rel="stylesheet">
    <link href="css/generics.css" rel="stylesheet">
    <link href="css/menu.css" rel="stylesheet">

    <!-- Ztree -->
    <%--<link rel="stylesheet" href="/css/zTree/demo.css" type="text/css">--%>
    <link rel="stylesheet" href="/css/zTree/zTreeStyle/zTreeStyle.css" type="text/css">


</head>

<body id="skin-blur-blue">
    <header id="header" class="media">
        <a href="" id="menu-toggle"></a>
        <a class="logo pull-left" href="province.jsp">移动能效管理平台</a>

        <div class="media-body">
            <div class="media" id="top-menu">

                <div class="pull-left">
                  <%--  <ul id="treeDemo" class="ztree"></ul>--%>
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

            <!-- Breadcrumb -->
            <ol class="breadcrumb hidden-xs">
                <li>
                    <a href="#">主页</a>
                </li>
                <li>
                    <a href="#">管理</a>
                </li>
                <li class="active">用户管理</li>
            </ol>


            <!-- Main Widgets -->
            <div class="block-area">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs" id="ulItem">
                            <li class="active" style="width:25%">
                                <a data-toggle="tab" id="subItem1">•权限</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem2">•历史曲线</a>
                            </li>
                            <li style="width:25%">
                                <a data-toggle="tab" id="subItem3">•知识库</a>
                            </li>
                        </ul>

                        <td><button id="test" onclick="test()">测试'查看历史曲线'</button></td>

                        <div id = "item1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 权限
                        </div>
                        <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 历史曲线
                        </div>
                        <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 知识库
                        </div>
                    </div>
                </div>
            </div>

            <h4 class="page-title">用户管理</h4>

            <!-- Deafult Table -->
            <div class="block-area" id="defaultStyle">
                <div class="row">
                    <div class="col-md-6">
                        <div class="tile">
                            <h2 class="tile-title">所有用户</h2>
                            <table id="userinfotablehead">
                                <thead>
                                <tr>
                                    <th><div style="padding-left:20px;">序号</div></th>
                                    <th><div style="padding-left:20px;">用户名</div></th>
                                    <th><div style="padding-left:20px;">姓名</div></th>
                                    <th><div style="padding-left:20px;">所属银行</div></th>
                                    <th><div style="padding-left:20px;">角色</div></th>
                                </tr>
                                </thead>
                            </table>
                            <table id="userinfotable">
                            </table>
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-alt" onClick="getALLUserInfomation()" >查看所有用户</button>
                                <button type="button" class="btn btn-sm btn-alt">新增</button>
                                <button type="button" class="btn btn-sm btn-alt">修改</button>
                                <button type="button" class="btn btn-sm btn-alt">删除</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tile">
                            <h2 class="tile-title">用户信息</h2>
                            <table class="table tile">
                                <thead>
                                    <tr>
                                        <th>属性名</th>
                                        <th>属性值</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>用户名</td>
                                        <td>Jhon </td>

                                    </tr>
                                    <tr>
                                        <td>姓名</td>
                                        <td>张三</td>

                                    </tr>
                                    <tr>
                                        <td>所属公司</td>
                                        <td>青海移动</td>

                                    </tr>
                                    <tr>
                                        <td>角色</td>
                                        <td>值班班长</td>

                                    </tr>
                                    <tr>
                                        <td>邮箱</td>
                                        <td>zhangsan@163.com</td>

                                    </tr>
                                    <tr>
                                        <td>移动电话</td>
                                        <td>15689567895</td>
                                    </tr>
                                    <tr>
                                        <td>办公电话</td>
                                        <td>564896</td>
                                    </tr>
                                    <tr>
                                        <td>家庭电话</td>
                                        <td>7899466</td>
                                    </tr>
                                    <tr>
                                        <td>职务</td>
                                        <td>班长</td>
                                    </tr>
                                    <tr>
                                        <td>级别</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </section>
        <br/>
        <br/>
    </section>

    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <script src="js/jquery-1.10.2.js"></script>
    <!-- jQuery Library -->

    <!-- Bootstrap -->
    <script src="js/bootstrap-3.3.4.js"></script>
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

    <script type="text/javascript" src="/js/zTree/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/js/zTree/jquery.ztree.core.js"></script>

   <%-- <script>

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

    </script>--%>

    <!-- 省\市\机房下拉菜单-->
    <script>
        var provinceid="<%=session.getAttribute("probank")%>";

        if(provinceid){//第一次进入这个页面，没有获取过
            $("#province_code").empty();
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

            else if(cbidstr[i] == ' userMng.jsp')
                menuname = "用户管理";

            else if(cbidstr[i] == ' systemSetting.jsp')
                menuname = "系统设置";

            $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("#subItem1").click(function(){
                $("#item1").show();
                $("#item2").hide();
                $("#item3").hide();
            });
            $("#subItem2").click(function(){
                $("#item1").hide();
                $("#item2").show();
                $("#item3").hide();
            });
            $("#subItem3").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").show();
            });
        });
    </script>

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

</body>

</html>