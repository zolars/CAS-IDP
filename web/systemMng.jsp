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
        <a class="logo pull-left" href="province.jsp">移动能效管理平台</a>

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
            <!-- Messages Drawer -->
            <div id="messages" class="tile drawer animated">
                <div class="listview narrow">
                    <div class="media">
                        <a href="">新消息</a>
                        <span class="drawer-close">&times;</span>

                    </div>
                    <div class="overflow" style="height: 254px">
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/1.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">调度班长 - 2分钟前</small>
                                <br>
                                <a class="t-overflow" href="">空调系统数据采集异常，请工作人员检查。</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/2.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专员 - 15分钟前</small>
                                <br>
                                <a class="t-overflow" href="">办公室供暖系统出现异常，无法提供正常供暖，请排除故障!</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">自动化班长 - 3小时前</small>
                                <br>
                                <a class="t-overflow" href="">能源费用分布图以及报表数据有误差，请核对</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/4.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班人员 - 3小时前</small>
                                <br>
                                <a class="t-overflow" href="">锅炉房水温过高，告警系统启动，请及时查看.</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/1.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 4小时前</small>
                                <br>
                                <a class="t-overflow" href="">请各部门提供上周能耗统计数据，本周将针对关键能耗点进行技术优化</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/2.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">值班专员 - 5小时前</small>
                                <br>
                                <a class="t-overflow" href="">自动化班提供1#机房总耗电量远远超过预测值，请再次核对数据并及时告知！</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/3.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室 - 6小时前</small>
                                <br>
                                <a class="t-overflow" href="">请提供“人均空调系统能耗”和“制冷系统能效比”两组数据</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/4.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">办公室专责 - 6小时前</small>
                                <br>
                                <a class="t-overflow" href="">请调度班提供2#机房和3#基站的能耗统计数据.</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="pull-left">
                                <img width="40" src="img/profile-pics/5.png" alt="">
                            </div>
                            <div class="media-body">
                                <small class="text-muted">网管中心 - 7小时前</small>
                                <br>
                                <a class="t-overflow" href="">今天凌晨将进行断网检修，请各部门及时下载相关材料</a>
                            </div>
                        </div>
                    </div>
                    <div class="media text-center whiter l-100">
                        <a href="">
                            <small>查看所有</small>
                        </a>
                    </div>
                </div>
            </div>

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
                            <li class="active" style="width:15%">
                                <a data-toggle="tab" id="subItem1">•账号管理</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem2">•角色管理</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem3">•功能管理</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem4">•设备管理</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem5">•接口管理</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem6">•限值管理</a>
                            </li>
                        </ul>

                        <div id = "item1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            <div class="block-area" id="defaultStyle">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="tile">
                                            <h2 class="tile-title">账号信息</h2>
                                            <table id="userinfotablehead">
                                                <thead>
                                                <tr>
                                                    <th><div style="padding-left:30px;">账号</div></th>
                                                    <th><div style="padding-left:30px;">姓名</div></th>
                                                    <th><div style="padding-left:40px;">组织</div></th>
                                                    <th><div style="padding-left:40px;">角色</div></th>
                                                    <th><div style="padding-left:50px;">联系方式</div></th>
                                                    <th><div style="padding-left:50px;">公务手机</div></th>
                                                </tr>
                                                </thead>
                                            </table>
                                            <table id="userinfotable"></table>

                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-alt" onClick="getALLUserInfomation()" >查询</button>
                                                <button type="button" class="btn btn-sm btn-alt" onclick="showAddUserModal()">新增</button>
                                                <button type="button" class="btn btn-sm btn-alt" onClick="deleteUserInfomation()">删除</button>
                                                <button type="button" class="btn btn-sm btn-alt" onclick="showUpdateUserModal()">修改</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            <div class="block-area">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="tile">
                                    <h2 class="tile-title">角色管理</h2>
                                    <table id="rolesinfotablehead">
                                        <thead>
                                        <tr>
                                            <th><div style="padding-left:40px;">角色编码</div></th>
                                            <th><div style="padding-left:40px;">角色名称</div></th>
                                            <th><div style="padding-left:40px;">备注</div></th>
                                        </tr>
                                        </thead>
                                    </table>
                                    <table id="rolesinfotable"></table>

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-alt" onClick="getALLRolesInfomation()" >查询</button>
                                        <button type="button" class="btn btn-sm btn-alt" onclick="showAddRolesrModal()">新增</button>
                                        <button type="button" class="btn btn-sm btn-alt" onClick="deleteRolesInfomation()">删除</button>
                                        <button type="button" class="btn btn-sm btn-alt" onclick="showUpdateRolesModal()">修改</button>
                                    </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 功能管理
                        </div>
                        <div id = "item4" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 设备管理
                        </div>
                        <div id = "item5" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 接口管理
                        </div>
                        <div id = "item6" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 限值管理
                        </div>
                    </div>
                </div>
            </div>

            <!-- user model DIV-->
            <div class="add-user" id="add-user-modal">
                <div class="add-user-one-line">
                    <div class="add-user-item">
                        <div class="add-user-title">账号</div>
                        <input id="useraccount" class="form-control add-user-input" type="text">
                    </div>
                    <div class="add-user-item">
                        <div class="add-user-title">密码</div>
                        <input id="userpassword" class="form-control add-user-input" type="text">
                    </div>

                </div>

                <div class="add-user-one-line">
                    <div class="add-user-item">
                        <div class="add-user-title">姓名</div>
                        <input id="username" class="form-control add-user-input" type="text">
                    </div>
                    <div class="add-user-item">
                        <div class="add-user-title">联系方式</div>
                        <input id="usertelephone" class="form-control add-user-input" type="text">
                    </div>
                </div>

                <div class="add-user-one-line">
                    <div class="add-user-item">
                        <div class="add-user-title">公务手机</div>
                        <input id="usergovtelephone" class="form-control add-user-input" type="text">
                    </div>
                    <div class="add-user-item">
                        <div class="add-user-title">角色</div>
                        <select class="form-control location-select-item" id="userroles" name="userroles" onclick="getRoles()">
                            <option value="">请选择</option>
                        </select>
                    </div>
                </div>


                <div class="add-user-one-line">
                    <div class="add-user-item">
                        <div class="add-user-title">省</div>
                        <select class="form-control location-select-item" id="userorgnization-province" name="userorgnization-province" onclick="getProvince()">
                            <option value="">请选择</option>
                        </select>
                    </div>
                    <div class="add-user-item">
                        <div class="add-user-title">市</div>
                        <select class="form-control location-select-item" id="userorgnization-city" name="userorgnization-city" onclick="getCity()">
                            <option value="">请选择</option>
                        </select>
                    </div>
                    <div class="add-user-item">
                        <div class="add-user-title">机房</div>
                        <select class="form-control location-select-item" id="userorgnization-computerroom" name="userorgnization-computerroom" onclick="getComputerroom()">
                            <option value="">请选择</option>
                        </select>
                    </div>
                </div>

                <div class="add-user-handle">
                    <button class="btn btn-default" onclick="hiddenUserModel()">取消</button>
                    <button type="submit" class="btn btn-primary" onclick="submitAddUser()">确定</button>
                </div>
            </div>
            <!-- user model DIV END-->

            <!-- roles model DIV-->
            <div class="add-roles" id="add-roles-modal">
                <div class="add-roles-one-line">
                    <div class="add-roles-item">
                        <div class="add-roles-title">角色名称</div>
                        <input id="rolesname" class="form-control add-roles-input" type="text">
                    </div>
                    <div class="add-roles-item">
                        <div class="add-roles-title">备注</div>
                        <input id="rolesextra" class="form-control add-roles-input" type="text">
                    </div>
                </div>

                <div class="add-roles-handle">
                    <button class="btn btn-default" onclick="hiddenRolesModel()">取消</button>
                    <button type="submit" class="btn btn-primary" onclick="submitAddRoles()">确定</button>
                </div>
            </div>
            <!-- roles model DIV END-->

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

  <%--  <script>

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
--%>

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

            else if(cbidstr[i] == ' history.jsp') //userMng.jsp'
                menuname = "历史曲线";

            else if(cbidstr[i] == ' systemMng.jsp')
                menuname = "系统管理";

            $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
        }
    </script>

    <script type="text/javascript">
        $("#item1").show();
        $("#item2").hide();
        $("#item3").hide();
        $("#item4").hide();
        $("#item5").hide();
        $("#item6").hide();

        $(document).ready(function(){
            $("#subItem1").click(function(){
                $("#item1").show();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
            });
            $("#subItem2").click(function(){
                $("#item1").hide();
                $("#item2").show();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
            });
            $("#subItem3").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").show();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
            });
            $("#subItem4").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").show();
                $("#item5").hide();
                $("#item6").hide();
            });
            $("#subItem5").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").show();
                $("#item6").hide();
            });
            $("#subItem6").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").show();
            });
        });
    </script>

    <!-- 账号信息 -->
    <script type="text/javascript">
        <!--查询所有账号 -->
        function getALLUserInfomation(){
            var monitorpoint = 1;
            $.ajax({
                type: "post",
                url: "getAllUserInfo",
                data: {
                    monitorpointid: monitorpoint
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj;
                    var table = $("#userinfotable");
                    table.empty();

                    for(var key in list){
                        var len = list[key].length;
                        for(var i = 0; i < len; i++){
                            var uid = list[key][i][0];
                            var account = list[key][i][1];
                            var name = list[key][i][2];
                            var org = list[key][i][4] +""+ list[key][i][5];
                            var role = list[key][i][3];
                            var telephone = list[key][i][6];
                            var govtelephone = list[key][i][7];
                            table.append('<tr><td><input type="checkbox" name="userid" id="userid" value='+uid+'></td><td style="padding-left:15px;">' + account +
                                '</td><td style="padding-left:20px;">' + name +  '</td><td style="padding-left:20px;">' + org + '</td><td style="padding-left:20px;">'
                                + role + '</td><td style="padding-left:20px;">' + telephone + '</td><td style="padding-left:20px;">' + govtelephone + '</td></tr>');
                        }
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        <!--显示user model -->
        function showAddUserModal() {
            $('#add-user-modal').css('display', 'block');
        }

        <!--删除账号 -->
        function deleteUserInfomation(){
            var useridcheck = $("input[name='userid']:checked");
            if (useridcheck.length == 0)
                alert("请选择一条用户信息");
            else if (useridcheck.length > 1)
                alert("每次只能删除一条用户信息");
            else{
                var monitorpoint = 1;
                var useridck = $("input[name='userid']:checked").serialize();
                $.ajax({
                    type: "post",
                    url: "deleteUserInfo",
                    data: {
                        monitorpointid: monitorpoint,
                        uid: useridck
                    },
                    dataType : "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.result;

                        if(rt) {
                            getALLUserInfomation();
                        }
                        else{
                            alert("删除失败");
                        }
                    },
                    error: function () {
                        alert("失败");
                    }
                });
            }
        }

        <!--修改账号 -->
        function showUpdateUserModal() {
            $('#add-user-modal').css('display', 'block');

            //显示 用户信息到div
            var useridcheck = $("input[name='userid']:checked");
            alert(useridcheck);

        }

        <!--修改账号-确认修改 -->
        function submitUpdateUser() {
            //    success
            //     $('#add-user-modal').css('display', 'none');
        }

        <!--隐藏uesr model div -->
        function hiddenUserModel() {
            $('#add-user-modal').css('display', 'none');
        }

        <!--添加账号-确认添加 -->
        function submitAddUser() {
            var uaccount = $("#useraccount").val();
            var upassword = $("#userpassword").val();
            var uname = $("#username").val();
            var utelephone = $("#usertelephone").val();
            var ugovtelephone = $("#usergovtelephone").val();
            var uroles = $("#userroles").val();
            var uprovince = $("#userorgnization-province").val();
            var ucity = $("#userorgnization-city").val();
            var ucomputerroom = $("#userorgnization-computerroom").val();

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "addUserInfo",
                data: {
                    uaccount: uaccount,
                    upassword: upassword,
                    uname: uname,
                    utelephone: utelephone,
                    ugovtelephone: ugovtelephone,
                    uroles: uroles,
                    uprovince: uprovince,
                    ucity: ucity,
                    ucomputerroom: ucomputerroom
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var rt = obj.result;

                    if(rt) {
                        hiddenUserModel();
                        getALLUserInfomation();
                    }
                    else{
                        alert("删除失败");
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        /*加载角色下拉选*/
        function getRoles() {
            $.ajax({
                type: "post",
                url: "getAllRoles",
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var rt = obj.allroles;
                    for (var i = 0; i < rt.length; i++) {
                        $('#userroles').append("<option value='" + rt[i].rid + "' >" + rt[i].rolesname + "</option>");
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        /*加载Province下拉选*/
        function getProvince() {
            $.ajax({
                type: "post",
                url: "getAllProvince",
                dataType : "json",
                success: function (data) {
                    // $('#userorgnization-province').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = JSON.parse(data);
                    var rt = obj.allprovince;

                    for (var i = 0; i < rt.length; i++) {
                        $('#userorgnization-province').append("<option value='" + rt[i].pbid + "' >" + rt[i].pbname + "</option>");
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        /*加载City下拉选*/
        function getCity() {
            $.ajax({
                type: "post",
                url: "getAllCity",
                dataType : "json",
                success: function (data) {
                    //   $('#userorgnization-city').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = JSON.parse(data);
                    var rt = obj.allcity;

                    for (var i = 0; i < rt.length; i++) {
                        $('#userorgnization-city').append("<option value='" + rt[i].cbid + "' >" + rt[i].cbname + "</option>");
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        /*加载Computerroom下拉选*/
        function getComputerroom() {
            $.ajax({
                type: "post",
                url: "getAllComputerroom",
                dataType : "json",
                success: function (data) {
                    // $('#userorgnization-computerroom').append("<option value='' selected='selected' >" + '请选择' + "</option>");

                    var obj = JSON.parse(data);
                    var rt = obj.allcomputerroom;

                    for (var i = 0; i < rt.length; i++) {
                        $('#userorgnization-computerroom').append("<option value='" + rt[i].rid + "' >" + rt[i].rname + "</option>");
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

    </script>

    <!-- 角色管理 -->
    <script type="text/javascript">
        <!-- 查询所有角色 -->
        function getALLRolesInfomation(){
            var monitorpoint = 1;
            $.ajax({
                type: "post",
                url: "getAllRoles",
                data: {
                    monitorpointid: monitorpoint
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj.allroles;
                    var table = $("#rolesinfotable");
                    table.empty();
                    for (var i = 0; i < list.length; i++) {
                        var rid = list[i].rid;
                        var rname = list[i].rolesname;
                        var rextra = list[i].extra;
                        table.append('<tr><td><input type="checkbox" name="rid" id="rid" value='+rid+'></td><td style="padding-left:40px;">' + rid +
                            '</td><td style="padding-left:80px;">' + rname + '</td><td style="padding-left:40px;">' + rextra + '</td></tr>');
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        <!-- 新增角色 -->
        function showAddRolesrModal(){
            $('#add-roles-modal').css('display', 'block');
        }

        <!-- 删除角色 -->
        function deleteRolesInfomation(){

            var ridcheck = $("input[name='rid']:checked");
            if (ridcheck.length == 0)
                alert("请选择一条角色信息");
            else if (ridcheck.length > 1)
                alert("每次只能删除一条角色信息");
            else{
                var monitorpoint = 1;
                var ridck = $("input[name='rid']:checked").serialize();
                $.ajax({
                    type: "post",
                    url: "deleteRolesInfo",
                    data: {
                        monitorpointid: monitorpoint,
                        rid: ridck
                    },
                    dataType : "json",
                    success: function (data) {
                        var obj = JSON.parse(data);
                        var rt = obj.result;

                        if(rt) {
                            getALLRolesInfomation();
                        }
                        else{
                            alert("删除失败");
                        }
                    },
                    error: function () {
                        alert("失败");
                    }
                });
            }


        }

        <!-- 修改角色 -->
        function showUpdateRolesModal(){


        }

        <!--隐藏roles model div -->
        function hiddenRolesModel() {
            $('#add-roles-modal').css('display', 'none');
        }

        <!--添加角色-确认添加 -->
        function submitAddRoles() {
            var rname = $("#rolesname").val();
            var rextra = $("#rolesextra").val();

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "addRolesInfo",
                data: {
                    rname: rname,
                    rextra: rextra
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var rt = obj.result;

                    if(rt) {
                        hiddenRolesModel();
                        getALLRolesInfomation();
                    }
                    else{
                        alert("添加失败");
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }




    </script>

</body>

</html>