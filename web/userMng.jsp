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
                    <ul id="treeDemo" class="ztree"></ul>
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
                <li>
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

                <li class="active">
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
                    <a href="#">主页</a>
                </li>
                <li>
                    <a href="#">管理</a>
                </li>
                <li class="active">用户管理</li>
            </ol>

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

    <script>

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

    </script>

    
    <script>

        function getProName(str) {
                switch(str){
                    case '100':
                        return "台湾";
                    case '110':
                        return "安徽";
                    case '120':
                        return "福建";
                    case '130':
                        return "江西";
                    case '140':
                        return "山东";
                    case '150':
                        return "河南";
                    case '160':
                        return "湖北";
                    case '170':
                        return "湖南";
                    case '180':
                        return "广东";
                    case '190':
                        return "广西";
                    case '200':
                        return "河北";
                    case '210':
                        return "海南";
                    case '220':
                        return "四川";
                    case '230':
                        return "贵州";
                    case '240':
                        return "云南";
                    case '250':
                        return "西藏";
                    case '260':
                        return "陕西";
                    case '270':
                        return "甘肃";
                    case '280':
                        return "青海";
                    case '290':
                        return "宁夏";
                    case '300':
                        return "山西";
                    case '310':
                        return "新疆";
                    case '320':
                        return "北京";
                    case '330':
                        return "天津";
                    case '340':
                        return "上海";
                    case '350':
                        return "重庆" ;
                    case '360':
                        return "香港";
                    case '370':
                        return "澳门";
                    case '400':
                        return "内蒙古";
                    case '500':
                        return "辽宁";
                    case '600':
                        return "吉林";
                    case '700':
                        return "黑龙江";
                    case '800':
                        return "江苏";
                    case '900':
                        return "浙江";
                    default:
                        return "";
            }
        }

        function getCityName(str) {
            switch(str){
                case '1001':
                    return "基隆";
                case '1002':
                    return "新竹";
                case '1003':
                    return "嘉义";
                case '1004':
                    return "台南";
                case '1005':
                    return "台中";
                case '1006':
                    return "新北";
                case '1007':
                    return "高雄";
                case '1008':
                    return "桃园";
                case '1009':
                    return "中华台北";

                /*case '110':
                    return "安徽";
                case '120':
                    return "福建";
                case '130':
                    return "江西";
                case '140':
                    return "山东";
                case '150':
                    return "河南";
                case '160':
                    return "湖北";
                case '170':
                    return "湖南";
                case '180':
                    return "广东";
                case '190':
                    return "广西";*/
                case '2001':
                    return "石家庄";
                case '2002':
                    return "廊坊";
                case '2003':
                    return "秦皇岛";
                case '2004':
                    return "唐山";
                case '2005':
                    return "邯郸";
                case '2006':
                    return "邢台";
                case '2007':
                    return "保定";
                case '2008':
                    return "张家口";
                case '2009':
                    return "承德";
                case '2010':
                    return "沧州";
                case '2011':
                    return "衡水";
                /* case '210':
                     return "海南";
                 case '220':
                     return "四川";
                 case '230':
                     return "贵州";
                 case '240':
                     return "云南";
                 case '250':
                     return "西藏";
                 case '260':
                     return "陕西";
                 case '270':
                     return "甘肃";
                 case '280':
                     return "青海";
                 case '290':
                     return "宁夏";
                 case '300':
                     return "山西";
                 case '310':
                     return "新疆";
                 case '320':
                     return "北京";
                 case '330':
                     return "天津";
                 case '340':
                     return "上海";
                 case '350':
                     return "重庆" ;
                 case '360':
                     return "香港";
                 case '370':
                     return "澳门";
                 case '400':
                     return "内蒙古";
                 case '500':
                     return "辽宁";
                 case '600':
                     return "吉林";
                 case '700':
                     return "黑龙江";
                 case '800':
                     return "江苏";
                 case '900':
                     return "浙江";*/
                default:
                    return "";
            }
        }


    </script>


</body>

</html>