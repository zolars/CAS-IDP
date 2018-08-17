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
        <div id="content" class="container">

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

                            <li style="width:15%">
                                <a data-toggle="tab" id="subItem7">•预警管理</a>
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
                        </div>
                        <div id = "item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            <div class="block-area">
                                <div class="col-md-5">
                                    <div class="tile">
                                        <h2 class="tile-title">角色</h2>
                                        <table id="rolesinfotablehead-functionmng">
                                                <thead>
                                                <tr>
                                                    <th><div style="padding-left:40px;">角色编码</div></th>
                                                    <th><div style="padding-left:40px;">角色名称</div></th>
                                                    <th><div style="padding-left:40px;">备注</div></th>
                                                </tr>
                                                </thead>
                                            </table>
                                        <table id="rolesinfotable-functionmng"></table>

                                        <div id="roleid" style="display: none"></div>

                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-alt" onclick="allocateRoles()">分配功能</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-7">
                                    <div class="tile">
                                        <h2 class="tile-title">功能</h2>

                                        <div id="jstree"></div>
                                        <div id="nodeid" style="display: none"></div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id = "item4" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            <div class="row"> </div>
                            <ul class="nav nav-tabs" id="seculItem">
                                <li class="active" style="width:15%">
                                    <a data-toggle="tab" id="secsubItem1">•IDP</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="secsubItem2">•UPS</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="secsubItem3">•蓄电池</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="secsubItem4">•柴油发电机</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="secsubItem5">•空调</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="secsubItem6">•其他传感器</a>
                                </li>
                            </ul>

                            <div id = "secItem1" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                            </div>
                            <div id = "secItem2" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                            </div>
                            <div id = "secItem3" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                            </div>
                            <div id = "secItem4" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                            </div>
                            <div id = "secItem5" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                            </div>
                            <div id = "secItem6" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                            </div>

                            <div id="TCP-device" style="display: none">
                                <label class="t-overflow">
                                    <input type="text" class="form-control setting-input" id = "get-devicename">
                                    <button class="btn btn-default" onclick="checkDevice()">查询</button>
                                </label>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="tile">
                                            <h2 class="tile-title">类型</h2>
                                            <div class="tile-config dropdown">
                                                <a data-toggle="dropdown"></a>
                                            </div>

                                            <div class="listview todo-list sortable">
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input id="radio-Ethernet" type="radio"> 以太网
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input id="radio-R5485" type="radio"> R5485
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input id="radio-RS232" type="radio"> RS232
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tile">
                                            <h2 class="tile-title">预警方式</h2>
                                            <div class="tile-config dropdown">
                                                <a data-toggle="dropdown"></a>
                                            </div>

                                            <div class="listview todo-list sortable">
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input type="checkbox"> 短信
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input type="checkbox"> 弹窗
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input type="checkbox"> 语音
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="tile">
                                            <h2 class="tile-title">设置</h2>
                                            <div class="tile-config dropdown">
                                                <a data-toggle="dropdown"></a>
                                            </div>

                                            <div>
                                                <label class="t-overflow">
                                                    设备名称<input id="devname" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    设备类型 <input id="devtype" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    序列号 <input id="serialno" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    IP地址 <input id="IPaddress" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    端口号 <input id="port" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    备注 <input id="extra" type="text" class="form-control setting-input">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="tile">
                                        <h2 class="tile-title">预警人员</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown"></a>
                                        </div>
                                        <table id="alarm-user-table" class="alarm-user-table">
                                        </table>
                                    </div>

                                    <div>
                                        <button class="btn btn-default" onclick="addDeviceAlarmUser()">添加</button>
                                        <button class="btn btn-default" onclick="deleteDeviceAlarmUser()">取消</button>
                                    </div>
                                </div>
                            </div>

                            <div id="485-serialno-device" style="display: none">
                                <label class="t-overflow">
                                    <input type="text" class="form-control setting-input" id = "get-devicename2">
                                    <button class="btn btn-default" onclick="checkDevice2()">查询</button>
                                </label>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="tile">
                                            <h2 class="tile-title">类型</h2>
                                            <div class="tile-config dropdown">
                                                <a data-toggle="dropdown"></a>
                                            </div>

                                            <div class="listview todo-list sortable">
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input id="radio-Ethernet2" type="radio"> 以太网
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input id="radio-R54852" type="radio"> R5485
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input id="radio-RS2322" type="radio"> RS232
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tile">
                                            <h2 class="tile-title">预警方式</h2>
                                            <div class="tile-config dropdown">
                                                <a data-toggle="dropdown"></a>
                                            </div>

                                            <div class="listview todo-list sortable">
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input type="checkbox"> 短信
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input type="checkbox"> 弹窗
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <div class="checkbox m-0">
                                                        <label class="t-overflow">
                                                            <input type="checkbox"> 语音
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="tile">
                                            <h2 class="tile-title">设置</h2>
                                            <div class="tile-config dropdown">
                                                <a data-toggle="dropdown"></a>
                                            </div>

                                            <div>
                                                <label class="t-overflow">
                                                    设备名称<input id="devname2" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    设备类型 <input id="devtype2" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    序列号 <input id="serialno2" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    485地址 <input id="IPaddress2" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    通信串口 <input id="port2" type="text" class="form-control setting-input">
                                                </label>
                                                <label class="t-overflow">
                                                    备注 <input id="extra2" type="text" class="form-control setting-input">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="tile">
                                        <h2 class="tile-title">预警人员</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown"></a>
                                        </div>
                                        <table id="alarm-user-table2" class="alarm-user-table">
                                        </table>
                                    </div>

                                    <div>
                                        <button class="btn btn-default" onclick="addDeviceAlarmUser2()">添加</button>
                                        <button class="btn btn-default" onclick="deleteDeviceAlarmUser2()">取消</button>
                                    </div>
                                </div>



                            </div>




                        </div>
                        <div id = "item5" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            接口管理
                        </div>
                        <div id = "item6" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">

                            <div class="row"></div>
                            <ul class="nav nav-tabs" id="tridulItem">
                                <li class="active" style="width:15%">
                                    <a data-toggle="tab" id="tridsubItem1">•电压</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="tridsubItem2">•电流</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="tridsubItem3">•谐波</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="tridsubItem4">•动力环境</a>
                                </li>
                                <li style="width:15%">
                                    <a data-toggle="tab" id="tridsubItem5">•预警管理</a>
                                </li>
                            </ul>

                            <div id = "tridItem1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                                电压
                                <label class="t-overflow">
                                    <input type="text" class="form-control setting-input" id="">
                                    <button class="btn btn-default" onclick="testVolume()">查询</button>
                                </label>
                                <table id="threadinfotablehead">
                                    <thead>
                                    <tr>
                                        <th><div style="padding-left:30px;">参数名称</div></th>
                                        <th><div style="padding-left:30px;">参数分类</div></th>
                                        <th><div style="padding-left:40px;">单位</div></th>
                                        <th><div style="padding-left:40px;">标准值</div></th>
                                        <th><div style="padding-left:50px;">上限值</div></th>
                                        <th><div style="padding-left:50px;">下限值</div></th>
                                        <th><div style="padding-left:50px;">启用标识</div></th>
                                        <th><div style="padding-left:50px;">预警内容</div></th>
                                    </tr>
                                    </thead>
                                </table>
                                <table id="infotable"></table>

                                <button type="submit" class="btn btn-primary" onclick="">添加</button>
                                <button class="btn btn-default" onclick="">修改</button>
                                <button class="btn btn-default" onclick="">删除</button>
                                <button class="btn btn-default" onclick="">插入</button>

                            </div>
                            <div id = "tridItem2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                                电流
                            </div>
                            <div id = "tridItem3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                                谐波
                            </div>
                            <div id = "tridItem4" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                                动力环境
                            </div>
                            <div id = "tridItem5" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                                预警管理
                            </div>

                        </div>
                        <div id = "item7" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            this is 预警理
                        </div>
                    </div>
                </div>
            </div>

            <!-- user model DIV-->
            <div class="add-user" id="add-user-modal">
                <div id="uid" style="display: none"> </div>
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

                <div class="add-roles-handle">
                    <button type="submit" class="btn btn-primary" id="add-user-handle" onclick="submitAddUser()">确定</button>
                    <button type="submit" class="btn btn-primary" id="update-user-handle" onclick="submitUpdateUser()">确定</button>
                    <button class="btn btn-default" onclick="hiddenUserModel()">取消</button>
                </div>
            </div>
            <!-- user model DIV END-->

            <!-- roles model DIV-->
            <div class="add-roles" id="add-roles-modal">
                <div class="add-roles-one-line">
                    <div id="rid" style="display: none"> </div>
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
                    <button type="submit" class="btn btn-primary" id="add-roles-handle" onclick="submitAddRoles()">确定</button>
                    <button type="submit" class="btn btn-primary" id="update-roles-handle" onclick="submitUpdateRoles()">确定</button>
                    <button class="btn btn-default" onclick="hiddenRolesModel()">取消</button>
                </div>
            </div>
            <!-- roles model DIV END-->
        </div>

    </section>


    <!-- Javascript Libraries -->
    <!-- jQuery -->
    <script src="js/jquery-3.3.1.js"></script>

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
        $("#item1").show();
        $("#item2").hide();
        $("#item3").hide();
        $("#item4").hide();
        $("#item5").hide();
        $("#item6").hide();
        $("#item7").hide();

        $("#secItem1").hide();
        $("#secItem2").hide();
        $("#secItem3").hide();
        $("#secItem4").hide();
        $("#secItem5").hide();
        $("#secItem6").hide();
        $("#secItem7").hide();

        $("#tridItem1").hide();
        $("#tridItem2").hide();
        $("#tridItem3").hide();
        $("#tridItem4").hide();
        $("#tridItem5").hide();

        $(document).ready(function(){
            $("#subItem1").click(function(){
                $("#item1").show();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
                $("#item7").hide();
                getALLUserInfomation();
            });
            $("#subItem2").click(function(){
                $("#item1").hide();
                $("#item2").show();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
                $("#item7").hide();
                getALLRolesInfomation();
            });
            $("#subItem3").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").show();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
                $("#item7").hide();

                var monitorpoint = 1;

                //功能管理

                //左侧角色表的初始化渲染
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
                        var table = $("#rolesinfotable-functionmng");
                        table.empty();
                        for (var i = 0; i < list.length; i++) {
                            var rid = list[i].rid;
                            var rname = list[i].rolesname;
                            var rextra = list[i].extra;
                            table.append('<tr><td><input type="checkbox" id="cbox-rid" name="cbox-rid" value='+rid+'></td><td style="padding-left:40px;">' + rid +
                                '</td><td style="padding-left:80px;">' + rname + '</td><td style="padding-left:40px;">' + rextra + '</td></tr>');
                        }
                    },
                    error: function () {
                        alert("失败");
                    }
                });

                //右侧功能权限树的初始化渲染
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
                                    url: "getPermissionTree",
                                    dataType: "json",
                                    async: false,
                                    success: function (result) {
                                        var arrays = result.allptree;
                                        for (var i = 0; i < arrays.length; i++) {
                                            var arr = {
                                                "id": arrays[i].pid,
                                                "parent": arrays[i].parentpid == "0" ? "#" : arrays[i].parentpid,
                                                "text": arrays[i].permissionname
                                            }
                                            jsonarray.push(arr);
                                        }
                                    },
                                    error: function (result) {
                                        alert("error"+result);
                                    }
                                });
                                callback.call(this, jsonarray);
                            },
                        }
                    })
                });

            });
            $("#subItem4").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").show();
                $("#item5").hide();
                $("#item6").hide();
                $("#item7").hide();

                $("#secItem1").show();
                $("#secItem2").hide();
                $("#secItem3").hide();
                $("#secItem4").hide();
                $("#secItem5").hide();
                $("#secItem6").hide();

                $(document).ready(function() {
                    $("#secsubItem1").click(function () {
                        $("#secItem1").show();
                        $("#secItem2").hide();
                        $("#secItem3").hide();
                        $("#secItem4").hide();
                        $("#secItem5").hide();
                        $("#secItem6").hide();

                        $('#TCP-device').css('display', 'block');
                        $('#485-serialno-device').css('display', 'none');

                        clearDeviceDiv();
                    });
                    $("#secsubItem2").click(function () {
                        $("#secItem1").hide();
                        $("#secItem2").show();
                        $("#secItem3").hide();
                        $("#secItem4").hide();
                        $("#secItem5").hide();
                        $("#secItem6").hide();

                        $('#TCP-device').css('display', 'block');
                        $('#485-serialno-device').css('display', 'none');

                        clearDeviceDiv();
                    });
                    $("#secsubItem3").click(function () {
                        $("#secItem1").hide();
                        $("#secItem2").hide();
                        $("#secItem3").show();
                        $("#secItem4").hide();
                        $("#secItem5").hide();
                        $("#secItem6").hide();

                        $('#TCP-device').css('display', 'none');
                        $('#485-serialno-device').css('display', 'block');

                        clearDeviceDiv2();
                    });
                    $("#secsubItem4").click(function () {
                        $("#secItem1").hide();
                        $("#secItem2").hide();
                        $("#secItem3").hide();
                        $("#secItem4").show();
                        $("#secItem5").hide();
                        $("#secItem6").hide();

                        $('#TCP-device').css('display', 'none');
                        $('#485-serialno-device').css('display', 'block');

                        clearDeviceDiv2();
                    });
                    $("#secsubItem5").click(function () {
                        $("#secItem1").hide();
                        $("#secItem2").hide();
                        $("#secItem3").hide();
                        $("#secItem4").hide();
                        $("#secItem5").show();
                        $("#secItem6").hide();

                        $('#TCP-device').css('display', 'none');
                        $('#485-serialno-device').css('display', 'block');

                        clearDeviceDiv2();
                    });
                    $("#secsubItem6").click(function () {
                        $("#secItem1").hide();
                        $("#secItem2").hide();
                        $("#secItem3").hide();
                        $("#secItem4").hide();
                        $("#secItem5").hide();
                        $("#secItem6").show();

                        $('#TCP-device').css('display', 'none');
                        $('#485-serialno-device').css('display', 'block');

                        clearDeviceDiv2();
                    });
                });
            });
            $("#subItem5").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").show();
                $("#item6").hide();
                $("#item7").hide();
            });
            $("#subItem6").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").show();
                $("#item7").hide();

                $("#tridItem1").show();
                $("#tridItem2").hide();
                $("#tridItem3").hide();
                $("#tridItem4").hide();
                $("#tridItem5").hide();

                $(document).ready(function() {
                    $("#tridsubItem1").click(function () {
                        $("#tridItem1").show();
                        $("#tridItem2").hide();
                        $("#tridItem3").hide();
                        $("#tridItem4").hide();
                        $("#tridItem5").hide();
                    });
                    $("#tridsubItem2").click(function () {
                        $("#tridItem1").hide();
                        $("#tridItem2").show();
                        $("#tridItem3").hide();
                        $("#tridItem4").hide();
                        $("#tridItem5").hide();
                    });
                    $("#tridsubItem3").click(function () {
                        $("#tridItem1").hide();
                        $("#tridItem2").hide();
                        $("#tridItem3").show();
                        $("#tridItem4").hide();
                        $("#tridItem5").hide();
                    });
                    $("#tridsubItem4").click(function () {
                        $("#tridItem1").hide();
                        $("#tridItem2").hide();
                        $("#tridItem3").hide();
                        $("#tridItem4").show();
                        $("#tridItem5").hide();
                    });
                    $("#tridsubItem5").click(function () {
                        $("#tridItem1").hide();
                        $("#tridItem2").hide();
                        $("#tridItem3").hide();
                        $("#tridItem4").hide();
                        $("#tridItem5").show();
                    });
                });

            });
            $("#subItem7").click(function(){
                $("#item1").hide();
                $("#item2").hide();
                $("#item3").hide();
                $("#item4").hide();
                $("#item5").hide();
                $("#item6").hide();
                $("#item7").show();
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

    <!-- 账号信息 -->
    <script type="text/javascript">
        <!--查询所有账号 -->
        function getALLUserInfomation(){
            //var monitorpoint = 1;
            $.ajax({
                type: "post",
                url: "getAllUserInfo",
                data: {
                 //   monitorpointid: monitorpoint
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
                            var org = list[key][i][3] +""+ list[key][i][4]+list[key][i][5];
                            var role = list[key][i][6];
                            var telephone = list[key][i][7];
                            var govtelephone = list[key][i][8];
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
            $('#add-user-handle').css('display', 'block');
            $('#update-user-handle').css('display', 'none');
        }

        <!--删除账号 -->
        function deleteUserInfomation(){
            var useridcheck = $("input[name='userid']:checked");
            if (useridcheck.length == 0)
                alert("请选择一条用户信息");
            else if (useridcheck.length > 1)
                alert("每次只能删除一条用户信息");
            else{
               // var monitorpoint = 1;
                var useridck = $("input[name='userid']:checked").serialize();
                $.ajax({
                    type: "post",
                    url: "deleteUserInfo",
                    data: {
                       // monitorpointid: monitorpoint,
                        uid: useridck
                    },
                    dataType : "json",
                    success: function (data) {
                        alert(data);
                        getALLUserInfomation();
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
            $('#add-user-handle').css('display', 'none');
            $('#update-user-handle').css('display', 'block');

            //显示 用户信息到div
            var useridcheck = $("input[name='userid']:checked").serialize();

            $.ajax({
                type: "post",
                url: "getUserInfo",
                data: {
                   uid: useridcheck
                },
                dataType : "json",
                success: function (data) {
                    var list = JSON.parse(data);

                    var userdata = list['user'];
                    var userroledata = list['userrole'];

                    $("#uid").val(userdata.uid);
                    $("#useraccount").val(userdata.uname);
                    $("#userpassword").val(userdata.password);
                    $("#username").val(userdata.chinesename);
                    $("#usertelephone").val(userdata.telephone);
                    $("#usergovtelephone").val(userdata.govtelephone);

                    $("#userorgnization-province").val(userdata.pbid);
                    $("#userorgnization-city").val(userdata.cbid);
                    $("#userorgnization-computerroom").val(userdata.rid);

                    $("#userroles").val(userroledata.rid);

                    hiddenUserModel();
                },
                error: function () {
                    alert("失败");
                }
            });

        }

        <!--修改账号-确认修改 -->
        function submitUpdateUser() {
            var uid = $("#uid").val();
            var uname = $("#useraccount").val();
            var password = $("#userpassword").val();
            var chinesename = $("#username").val();
            var telephone = $("#usertelephone").val();
            var govtelephone = $("#usergovtelephone").val();

            var rid = $("#userroles").val();
            var pbid = $("#userorgnization-province").val();
            var cbid = $("#userorgnization-city").val();
            var ccid = $("#userorgnization-computerroom").val();

            if(testTelephone(telephone) && testTelephone(govtelephone))
            {
                $.ajax({
                    type: "post",
                    url: "updateUserInfo",
                    data: {
                        uid: uid,
                        uname: uname,
                        password: password,
                        chinesename: chinesename,
                        telephone: telephone,
                        govtelephone: govtelephone,
                        rid: rid,
                        pbid: pbid,
                        cbid: cbid,
                        ccid: ccid
                    },
                    dataType : "json",
                    success: function (data) {
                        alert(data);
                        hiddenUserModel();
                        //getALLUserInfomation();
                    },
                    error: function () {
                        alert("失败");
                    }
                });
            }
        }

        <!--隐藏uesr model div -->
        function hiddenUserModel() {
            $('#add-user-modal').css('display', 'none');
        }

        <!--添加账号-确认添加 -->
        function submitAddUser() {
            $('#add-user-modal').css('display', 'block');
            $('#add-user-handle').css('display', 'block');
            $('#update-user-handle').css('display', 'none');

            var uaccount = $("#useraccount").val();
            var upassword = $("#userpassword").val();
            var uname = $("#username").val();
            var utelephone = $("#usertelephone").val();
            var ugovtelephone = $("#usergovtelephone").val();
            var uroles = $("#userroles").val();
            var uprovince = $("#userorgnization-province").val();
            var ucity = $("#userorgnization-city").val();
            var ucomputerroom = $("#userorgnization-computerroom").val();

            if(testTelephone(utelephone) && testTelephone(ugovtelephone)) {
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
                    dataType: "json",
                    success: function (data) {
                        alert(data);
                        hiddenUserModel();
                        //getALLUserInfomation();
                    },
                    error: function () {
                        alert("新增失败");
                    }
                });
            }
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
            //var monitorpoint = 1;
            $.ajax({
                type: "post",
                url: "getAllRoles",
                data: {
                 //   monitorpointid: monitorpoint
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
                        table.append('<tr><td><input type="checkbox" name="rolesid" id="rolesid" value='+rid+'></td><td style="padding-left:40px;">' + rid +
                            '</td><td style="padding-left:80px;">' + rname + '</td><td style="padding-left:40px;">' + rextra + '</td></tr>');
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        <!-- 显示roles model  -->
        function showAddRolesrModal(){
            $('#add-roles-modal').css('display', 'block');
            $('#add-roles-handle').css('display', 'block');
            $('#update-roles-handle').css('display', 'none');
        }

        <!-- 删除角色 -->
        function deleteRolesInfomation(){

            var ridcheck = $("input[name='rolesid']:checked");
            if (ridcheck.length == 0)
                alert("请选择一条角色信息");
            else if (ridcheck.length > 1)
                alert("每次只能删除一条角色信息");
            else{
                //var monitorpoint = 1;
                var ridck = $("input[name='rolesid']:checked").serialize();
                $.ajax({
                    type: "post",
                    url: "deleteRolesInfo",
                    data: {
                        //monitorpointid: monitorpoint,
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
            $('#add-roles-modal').css('display', 'block');
            $('#add-roles-handle').css('display', 'none');
            $('#update-roles-handle').css('display', 'block');

            //显示信息到div
            var rolesidcheck = $("input[name='rolesid']:checked").serialize();

            $.ajax({
                type: "post",
                url: "getRolesInfo",
                data: {
                    rid: rolesidcheck
                },
                dataType : "json",
                success: function (data) {
                    var list = JSON.parse(data);

                    var rolesdata = list['roles'];

                    $("#rid").val(rolesdata.rid);
                    $("#rolesname").val(rolesdata.rolesname);
                    $("#rolesextra").val(rolesdata.extra);
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        <!-- 修改角色 -确认修改 -->
        function submitUpdateRoles() {
            var rid = $("#rid").val();
            var rname = $("#rolesname").val();
            var rextra = $("#rolesextra").val();

            $.ajax({
                    type: "post",
                    url: "updateRolesInfo",
                    data: {
                        rid: rid,
                        rname: rname,
                        rextra: rextra
                    },
                    dataType : "json",
                    success: function (data) {
                        alert(data);
                        hiddenRolesModel();
                        //getALLUserInfomation();
                    },
                    error: function () {
                        alert("失败");
                    }
            });
        }

        <!--隐藏roles model div -->
        function hiddenRolesModel() {
            $('#add-roles-modal').css('display', 'none');
        }

        <!--添加角色-确认添加 -->
        function submitAddRoles() {
            $('#add-roles-modal').css('display', 'block');
            $('#add-roles-handle').css('display', 'block');
            $('#update-roles-handle').css('display', 'none');

            var rname = $("#rolesname").val();
            var rextra = $("#rolesextra").val();

           // var monitorpoint = 1;

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

    <!-- 查询设备--IDP\UPS -->
    <script type="text/javascript">
        <!-- 查询设备 -->
        function checkDevice(){
            var devicename = $("#get-devicename").val();

            var monitorpoint = 1;

            $.ajax({
                type: "post",
                url: "getDeviceInfo",
                data: {
                    devicename: devicename
                },
                dataType : "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    $("#devname").val(obj[0].name);
                    $("#devtype").val(obj[0].type);
                    $("#serialno").val(obj[0].serialno);
                    $("#IPaddress").val(obj[0].iPaddress);
                    $("#port").val(obj[0].port);
                    $("#extra").val(obj[0].extra);

                    if(obj[0].devicetype == "以太网"){
                        $("#radio-Ethernet").attr("checked","checked");
                        $("#radio-R5485").removeAttr("checked");
                        $("#radio-RS232").removeAttr("checked");
                    }
                    if(obj[0].devicetype == "RS485"){
                        $("#radio-Ethernet").removeAttr("checked");
                        $("#radio-R5485").attr("checked","checked");
                        $("#radio-RS232").removeAttr("checked");
                    }
                    if(obj[0].devicetype == "RS232"){
                        $("#radio-Ethernet").removeAttr("checked");
                        $("#radio-R5485").removeAttr("checked");
                        $("#radio-RS232").attr("checked","checked");
                    }

                    //预警方式
                    //预警人员
                    //预警人员
                    checkDeviceAlarmUser();
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        <!-- 查询预警人员 -->
        function checkDeviceAlarmUser(){

            var devicename = $("#get-devicename").val();

            $.ajax({
                type: "post",
                url: "getAllAlarmUser",
                data: {
                    devicename: devicename
                    //   monitorpointid: monitorpoint
                },
                dataType : "json",
                success: function (data) {
                    var list = data.alarmusers;
                    var listname = data.alarmusersname;
                    var table = $("#alarm-user-table");
                    table.empty();
                    table.append('<tr><td style="padding-left:20px;"></td><td style="padding-left:80px;">开始时间</td><td style="padding-left:80px;">结束时间</td><td style="padding-left:40px;">账号</td></tr>');

                    for (var i = 0; i < list.length; i++) {
                        var id = list[i].id;
                        var stime = list[i].stime;
                        var etime = list[i].etime;
                        var uname = listname[i];

                        table.append('<tr><td style="padding-left:20px;"><input type="checkbox" name="auid" id="auid" value='+id+'></td>' +
                            '<td style="padding-left:80px;">' + stime + '</td><td style="padding-left:80px;">' + etime + '</td>' +
                            '<td style="padding-left:40px;">' + uname + '</td></tr>');
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        }

        <!-- 添加预警人员 -->
        function addDeviceAlarmUser(){
            alert("添加预警人员");

        }

        <!-- 取消（删除）预警人员 -->
        function deleteDeviceAlarmUser(){

            var auidcheck = $("input[name='auid']:checked");
            if (auidcheck.length == 0)
                alert("请选择一条预警人员信息");
            else if (auidcheck.length > 1)
                alert("每次只能删除一条预警人员信息");
            else{
                //var monitorpoint = 1;
                var auidck = $("input[name='auid']:checked").serialize();
                $.ajax({
                    type: "post",
                    url: "deleteDeviceAlarmRoles",
                    data: {
                        //monitorpointid: monitorpoint,
                        auid: auidck
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


        }

        <!-- 清空设备div -->
        function clearDeviceDiv(){
            $("#get-devicename").val("");

            $("#devname").val("");
            $("#devtype").val("");
            $("#serialno").val("");
            $("#IPaddress").val("");
            $("#port").val("");
            $("#extra").val("");

            $("#radio-Ethernet").removeAttr("checked");
            $("#radio-R5485").removeAttr("checked");
            $("#radio-RS232").removeAttr("checked");

            $("#alarm-user-table").empty();
        }

    </script>

    <!-- 查询设备2 --蓄电池\发电机\空调\其他-->
    <script type="text/javascript">
         <!-- 查询设备 -->
         function checkDevice2(){
             var devicename = $("#get-devicename2").val();

             var monitorpoint = 1;

             $.ajax({
                 type: "post",
                 url: "getDeviceInfo",
                 data: {
                     devicename: devicename
                 },
                 dataType : "json",
                 success: function (data) {
                     var obj = JSON.parse(data);
                     $("#devname2").val(obj[0].name);
                     $("#devtype2").val(obj[0].type);
                     $("#serialno2").val(obj[0].serialno);
                     $("#IPaddress2").val(obj[0].iPaddress);
                     $("#port2").val(obj[0].port);
                     $("#extra2").val(obj[0].extra);

                     if(obj[0].devicetype == "以太网"){
                         $("#radio-Ethernet2").attr("checked","checked");
                         $("#radio-R54852").removeAttr("checked");
                         $("#radio-RS2322").removeAttr("checked");
                     }
                     if(obj[0].devicetype == "RS485"){
                         $("#radio-Ethernet2").removeAttr("checked");
                         $("#radio-R54852").attr("checked","checked");
                         $("#radio-RS2322").removeAttr("checked");
                     }
                     if(obj[0].devicetype == "RS232"){
                         $("#radio-Ethernet2").removeAttr("checked");
                         $("#radio-R54852").removeAttr("checked");
                         $("#radio-RS2322").attr("checked","checked");
                     }

                     //预警方式
                     //预警人员
                     //预警人员
                     checkDeviceAlarmUser2();
                 },
                 error: function () {
                     alert("失败");
                 }
             });
         }

         <!-- 查询预警人员 -->
         function checkDeviceAlarmUser2(){

             var devicename = $("#get-devicename2").val();

             $.ajax({
                 type: "post",
                 url: "getAllAlarmUser",
                 data: {
                     devicename: devicename
                     //   monitorpointid: monitorpoint
                 },
                 dataType : "json",
                 success: function (data) {
                     var list = data.alarmusers;
                     var listname = data.alarmusersname;
                     var table = $("#alarm-user-table2");
                     table.empty();
                     table.append('<tr><td style="padding-left:20px;"></td><td style="padding-left:80px;">开始时间</td><td style="padding-left:80px;">结束时间</td><td style="padding-left:40px;">账号</td></tr>');

                     for (var i = 0; i < list.length; i++) {
                         var id = list[i].id;
                         var stime = list[i].stime;
                         var etime = list[i].etime;
                         var uname = listname[i];

                         table.append('<tr><td style="padding-left:20px;"><input type="checkbox" name="auid" id="auid" value='+id+'></td>' +
                             '<td style="padding-left:80px;">' + stime + '</td><td style="padding-left:80px;">' + etime + '</td>' +
                             '<td style="padding-left:40px;">' + uname + '</td></tr>');
                     }
                 },
                 error: function () {
                     alert("失败");
                 }
             });
         }

         <!-- 添加预警人员 -->
         function addDeviceAlarmUser2(){
             alert("添加预警人员");
         }

         <!-- 取消（删除）预警人员 -->
         function deleteDeviceAlarmUser2(){

             var auidcheck = $("input[name='auid']:checked");
             if (auidcheck.length == 0)
                 alert("请选择一条预警人员信息");
             else if (auidcheck.length > 1)
                 alert("每次只能删除一条预警人员信息");
             else {
                 //var monitorpoint = 1;
                 var auidck = $("input[name='auid']:checked").serialize();
                 $.ajax({
                     type: "post",
                     url: "deleteDeviceAlarmRoles",
                     data: {
                         //monitorpointid: monitorpoint,
                         auid: auidck
                     },
                     dataType: "json",
                     success: function (data) {
                         alert(data);
                     },
                     error: function () {
                         alert("失败");
                     }
                 });
             }
         }

         <!-- 清空设备div2 -->
         function clearDeviceDiv2(){
             $("#get-devicename2").val("");

             $("#devname2").val("");
             $("#devtype2").val("");
             $("#serialno2").val("");
             $("#IPaddress2").val("");
             $("#port2").val("");
             $("#extra2").val("");

             $("#radio-Ethernet2").removeAttr("checked");
             $("#radio-R54852").removeAttr("checked");
             $("#radio-RS2322").removeAttr("checked");

             $("#alarm-user-table2").empty();
         }
     </script>

    <!-- 功能管理-->
    <script type="text/javascript">

         // 点击树的某个节点，存当前节点id到nodeid中
         $('#jstree').bind("activate_node.jstree", function (obj, e) {
             var currentNode = e.node;
             //当前点击的节点的id存到一个隐藏的div中
             $("#nodeid").val(currentNode.id);
         });

        // 分配角色权限
        function allocateRoles(){
            //当前点击的角色id存到一个隐藏的div中
            $("#roleid").val($("input[name='cbox-rid']:checked").serialize());

            var tmpNodePid=$("#nodeid").val();
            var tmpRid=$("#roleid").val();

            $.ajax({
                type: "post",
                url: "allocRolesPermission",
                data: {
                    pid: tmpNodePid,
                    rid: tmpRid
                },
                dataType : "json",
                success: function (data) {
                    alert(data);
                }
            });
        };
    </script>

    <!-- 正则表达式-->
    <script type="text/javascript">
    function testTelephone(str) {
        var  re = /^1\d{10}$/    //正则表达式
        if (re.test(str)) {      //判断字符是否是11位数字
            return true;
        }
        else {
            alert(str+"请输入11位手机号码");
            return false;
        }
    }
    </script>

    <script type="text/javascript">
    function testVolume(){

    }
</script>


</body>

</html>