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

                        <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 历史曲线
                            <button id="test" onclick="test()">测试'查看历史曲线'</button>
                        </div>
                        <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 知识库

                            <!-- 动态加载知识库项 -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="tile">
                                        <ul id="knowledgebar" class="list-unstyled side-menu" style="width: 100%!important;padding-top: 20px;">
                                        </ul>
                                    </div>
                                </div>

                                <div class=="col-md-8" >
                                    <textarea id='text' style="height: 400px;height: 600px;color: #1c2d3f">thisiscontent</textarea>
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

    <script type="text/javascript" src="/js/zTree/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/js/zTree/jquery.ztree.core.js"></script>

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
    <script type="text/javascript">

        var kidstr = 1;

        for(var i = 0; i < 6; i++){

            var kname = "郭德纲";
            var kcontent = "nishgewgweg";

            $('#knowledgebar').append("<li><span>" + kname + "</span>" +
                "<ul><li><span>\" + kcontent + \"</span></li>" +
                "</ul>" +
                "</li>");
        }


    </script>


</body>

</html>