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

    <link href="css/mycss.css" rel="stylesheet">

   <%-- <style>
        .add-user {
            display: none;
            width: 500px;
            height: 440px;
            background: rgba(0,0,0,.5);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            z-index: 2000;
            border-radius: 20px;
            padding: 30px;
        }
        .add-user-item {
            flex: 1;
        }
        .add-user-title {
            font-size: 16px;
            margin-bottom: 5px;
        }
        .add-user-input {
            width: 80%;
        }
        .add-user-handle {
            width: 100%;
            display: flex;
            height: 100px;
            justify-content: space-between;
            align-items: center;
        }
        .add-user-one-line{
            display: flex;
            margin-bottom: 20px;

        }
        .add-user-one-line:last-of-type {
            margin-bottom: 0;
        }

        /* location-bar */
        .location-select {
            display: flex;
        }

        .location-select-item {
            width: 90px;
        }
    </style>
--%>

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
                        </div>
                        <div id = "item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 历史曲线
                            <button id="test" onclick="test()">测试'查看历史曲线'</button>
                        </div>
                        <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 知识库
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
    <script src="js/jquery-1.4.4.min.js"></script>
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

            else if(cbidstr[i] == ' userMng.jsp')
                menuname = "用户管理";

            else if(cbidstr[i] == ' systemSetting.jsp')
                menuname = "系统设置";

            $('#ulbar').append("<li><a href='" + cbidstr[i] + "'  id='menuurl'><i class='fa fa-calendar-o'></i><span>" + menuname + "</span></a></li>");
        }
    </script>

    <script type="text/javascript">
        $("#item1").show();
        $("#item2").hide();
        $("#item3").hide();

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