<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- 引入struts的标签库-->
<%@ taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>IDP数据中心动力管控系统</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
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

    <style>
        .outer {
            width: 200px;
            height: 120px;
            position: relative;
        }

        .searchInput {
            box-sizing: border-box;
            width: 200px;
            height: 25px;
        }

        .tips {
            position: absolute;
            top: 25px;
            left: 0;
            width: 200px;
            height: 120px;
            overflow: scroll;
            border: 1px solid #cccccc;
        }

        .tips-item:hover {
            background: #4e7bff;
        }
    </style>
</head>

<body id="skin-blur-blue">

<script Language="JavaScript" src="js/onlineDataInterface.js"></script>

<header id="header" class="media">
    <a href="" id="menu-toggle"></a>
    <a class="logo pull-left" href="province.jsp">IDP数据中心动力管控系统</a>

    <div class="media-body">
        <div class="media" id="top-menu">
            <div class="pull-left location-select">
                <select class="form-control location-select-item" id="province_code" name="province_code"
                        onchange="getCity()">
                    <option value="">请选择</option>
                </select>

                <select class="form-control location-select-item" id="city_code" name="city_code"
                        onchange="getComproom()">
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
                        <li style="width:15%">
                            <a data-toggle="tab" id="subItem8">•连接配置</a>
                        </li>
                        <li style="width:15%">
                            <a data-toggle="tab" id="subItem9">•组织管理</a>
                        </li>
                    </ul>

                    <div id="item1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="block-area" id="defaultStyle">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="tile">
                                        <h2 class="tile-title">账号信息</h2>
                                        <table id="userinfotablehead">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <div style="padding-left:30px;">账号</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:30px;">姓名</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:40px;">组织</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:40px;">角色</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:50px;">联系方式</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:50px;">公务手机</div>
                                                </th>
                                            </tr>
                                            </thead>
                                        </table>
                                        <table id="userinfotable"></table>

                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onClick="getALLUserInfomation()">查询
                                            </button>
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onclick="showAddUserModal()">新增
                                            </button>
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onClick="deleteUserInfomation()">删除
                                            </button>
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onclick="showUpdateUserModal()">修改
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="item2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="block-area">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="tile">
                                        <h2 class="tile-title">角色管理</h2>
                                        <table id="rolesinfotablehead">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <div style="padding-left:40px;">角色编码</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:40px;">角色名称</div>
                                                </th>
                                                <th>
                                                    <div style="padding-left:40px;">备注</div>
                                                </th>
                                            </tr>
                                            </thead>
                                        </table>
                                        <table id="rolesinfotable"></table>

                                        <div class="btn-group">
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onClick="getALLRolesInfomation()">查询
                                            </button>
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onclick="showAddRolesrModal()">新增
                                            </button>
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onClick="deleteRolesInfomation()">删除
                                            </button>
                                            <button type="button" class="btn btn-sm btn-alt"
                                                    onclick="showUpdateRolesModal()">修改
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="item3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="block-area">
                            <div class="col-md-5">
                                <div class="tile">
                                    <h2 class="tile-title">角色</h2>
                                    <table id="rolesinfotablehead-functionmng">
                                        <thead>
                                        <tr>
                                            <th>
                                                <div style="padding-left:40px;">角色编码</div>
                                            </th>
                                            <th>
                                                <div style="padding-left:40px;">角色名称</div>
                                            </th>
                                            <th>
                                                <div style="padding-left:40px;">备注</div>
                                            </th>
                                        </tr>
                                        </thead>
                                    </table>
                                    <table id="rolesinfotable-functionmng"></table>

                                    <div id="roleid" style="display: none"></div>

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-alt" onclick="allocateRoles()">
                                            分配功能
                                        </button>
                                        <button type="button" class="btn btn-sm btn-alt"
                                                onclick="getOneRolesFunctions()">查看角色功能
                                        </button>
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
                    <div id="item4" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="row"></div>
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

                        <div id="secItem1" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                        </div>
                        <div id="secItem2" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                        </div>
                        <div id="secItem3" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                        </div>
                        <div id="secItem4" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                        </div>
                        <div id="secItem5" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                        </div>
                        <div id="secItem6" class="col-md-2 col-xs-6" style="width:90%; height: 0px;">

                        </div>

                        <div id="TCP-device" style="display: none">
                            <label class="t-overflow">
                                <div class="row">
                                    <div class="col-md-2">
                                        <table>
                                            <tr>
                                                <td>
                                                    <div id="outer" class="outer">
                                                        <input id="searchInput" class="searchInput form-control"
                                                               type="text">
                                                        <div id="searchTips" class="tips" style="display: none">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div id="item-devicename"
                                                         style="display: none;width: 250px; height: 100px;background: rgba(1, 1, 1, 0.5);">
                                                        <ul id="device-name-Item">
                                                        </ul>
                                                    </div>
                                                    <button class="btn btn-default" onclick="checkDevice()">查询</button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
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
                                                        <input id="radio-Ethernet" name="radio-Ethernet" type="radio"> 以太网
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input id="radio-R5485" name="radio-R5485" type="radio"> R5485
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input id="radio-RS232" name="radio-RS232" type="radio"> RS232
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
                                                        <input type="checkbox" id="checkbox-sms" name="checkbox-sms"> 短信
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" id="checkbox-alert" name="checkbox-alert"> 弹窗
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" id="checkbox-plantform" name="checkbox-plantform"> 平台
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
                                            <div class="did" id="did"></div>
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
                                                IP地址 <input id="IPaddress" type="text"
                                                            class="form-control setting-input">
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
                                    <button class="btn btn-default" onclick="addDeviceAlarmUser()">添加预警人员</button>
                                    <button class="btn btn-default" onclick="deleteDeviceAlarmUser()">取消预警人员</button>
                                </div>

                                <div>
                                    <button class="btn btn-default" onclick="addOneDevice()">添加设备</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div id="item5" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="tile">
                            <table>
                                <thead>
                                <tr>
                                    <th>
                                        <div style="padding-left:30px;">接口描述</div>
                                    </th>
                                    <th>
                                        <div style="padding-left:30px;">接口名称</div>
                                    </th>
                                    <th>
                                        <div style="padding-left:40px;">测试接口</div>
                                    </th>
                                </tr>
                                </thead>
                            </table>
                            <table>
                                <tr>
                                    <td>getDataQst</td>
                                    <td>获取趋势图数据，输入监测点，返回json</td>
                                    <td>
                                        <button onclick="getDataQst()"></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>getDataXb</td>
                                    <td>获取实时谐波数据，输入监测点，返回json</td>
                                    <td>
                                        <button onclick="getDataXb()"></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>getDataSxdy</td>
                                    <td>获取实时三相电压数据，输入监测点，返回json</td>
                                    <td>
                                        <button onclick="getDataSxdy()"></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>getDataParams</td>
                                    <td>获取实时参数值数据，输入监测点，返回json</td>
                                    <td>
                                        <button onclick="getDataParams()"></button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="item6" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="row"></div>
                        <ul class="nav nav-tabs" id="tridulItem">
                            <li class="active" style="width:15%">
                                <a data-toggle="tab" id="tridsubItem1">•电能质量</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="tridsubItem2">•动力环境</a>
                            </li>
                            <li style="width:15%">
                                <a data-toggle="tab" id="tridsubItem3">•其他传感器</a>
                            </li>
                        </ul>

                        <div id="tridItem1" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                            <div class="col-md-2">
                                <table>
                                    <tr>
                                        <td>
                                            <div class="outer">
                                                <input id="device-threshold-name" class="searchInput form-control"
                                                       type="text">
                                                <div id="device-threshold-Tips" class="tips" style="display: none">
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <button class="btn btn-default" onclick="getOneDeviceThreshold()">查询
                                            </button>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div class="col-md-8">
                                <table id="threadinfotablehead">
                                    <thead>
                                    <tr>
                                        <th>
                                            <div style="padding-left:30px;">参数名称</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:30px;">参数分类</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:40px;">单位</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:40px;">标准值</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:50px;">上限值</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:50px;">下限值</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:50px;">启用标识</div>
                                        </th>
                                        <th>
                                            <div style="padding-left:50px;">预警内容</div>
                                        </th>
                                    </tr>
                                    </thead>
                                </table>
                                <table id="infotable"></table>

                                <button type="submit" class="btn btn-primary" onclick="AddThresholdModal()">添加</button>
                                <button class="btn btn-default" onclick="updateThresholdModal()">修改</button>
                                <button class="btn btn-default" onclick="deleteThresholdModal()">删除</button>
                                <button class="btn btn-default" onclick="importThresholdModal()">导入</button>
                            </div>
                        </div>
                        <div id="tridItem2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        </div>
                        <div id="tridItem3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        </div>
                    </div>
                    <div id="item7" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">

                        <div class="add-user-title">预警方式</div>
                        <select class="form-control location-select-item" id=""
                                name="">
                            <option value="">短信</option>
                            <option value="">弹窗</option>
                            <option value="">平台</option>
                        </select>


                        <div class="add-user-title">执行类</div>

                        <button class="btn btn-default" onclick="addAlarm()">添加</button>
                        <button class="btn btn-default" onclick="deleterAlarm()">删除</button>


                    </div>
                    <div id="item8" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="col-md-5">
                            <table>
                                <tr>
                                    <td>设备名称</td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td>实时数据采集频率：</td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td>单位（秒）</td>
                                </tr>
                                <tr>
                                    <td>暂态事件存储频率：</td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td>单位（分钟）</td>
                                </tr>
                                <tr>
                                    <td>数据上传时效：</td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td>单位（小时）</td>
                                </tr>
                                <tr>
                                    <td>实时数据IP地址</td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                </tr>
                                <tr>
                                    <td>实时数据端口号</td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                    <td>暂态事件端口号</td>
                                    <td><input type="text" class="form-control setting-input"></td>
                                </tr>
                                <button onclick="captureSettingOk()">确定</button>
                                <button onclick="cancle()">取消</button>
                            </table>
                        </div>
                    </div>
                    <div id="item9" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        组织管理
                    </div>
                </div>
            </div>
        </div>

        <!-- user model DIV-->
        <div class="add-user" id="add-user-modal">
            <div id="uid" style="display: none"></div>
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
                    <select class="form-control location-select-item" id="userroles" name="userroles"
                            onclick="getRoles()">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>

            <div class="add-user-one-line">
                <div class="add-user-item">
                    <div class="add-user-title">省</div>
                    <select class="form-control location-select-item" id="userorgnization-province"
                            name="userorgnization-province" onclick="getAllProvince()">
                        <option value="">请选择</option>
                    </select>
                </div>
                <div class="add-user-item">
                    <div class="add-user-title">市</div>
                    <select class="form-control location-select-item" id="userorgnization-city"
                            name="userorgnization-city" onclick="getAllCity()">
                        <option value="">请选择</option>
                    </select>
                </div>
                <div class="add-user-item">
                    <div class="add-user-title">机房</div>
                    <select class="form-control location-select-item" id="userorgnization-computerroom"
                            name="userorgnization-computerroom" onclick="getAllComputerroom()">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>

            <div class="add-roles-handle">
                <button type="submit" class="btn btn-primary" id="add-user-handle" onclick="submitAddUser()">确定</button>
                <button type="submit" class="btn btn-primary" id="update-user-handle" onclick="submitUpdateUser()">确定
                </button>
                <button class="btn btn-default" onclick="hiddenUserModel()">取消</button>
            </div>
        </div>
        <!-- user model DIV END-->

        <!-- roles model DIV-->
        <div class="add-roles" id="add-roles-modal">
            <div class="add-roles-one-line">
                <div id="rid" style="display: none"></div>
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
                <button type="submit" class="btn btn-primary" id="add-roles-handle" onclick="submitAddRoles()">确定
                </button>
                <button type="submit" class="btn btn-primary" id="update-roles-handle" onclick="submitUpdateRoles()">
                    确定
                </button>
                <button class="btn btn-default" onclick="hiddenRolesModel()">取消</button>
            </div>
        </div>
        <!-- roles model DIV END-->

        <!-- threshold model DIV-->
        <div class="add-threshold" id="add-threshold-modal">
            <div id="dtid" style="display: none"></div>
            <div class="add-threshold-one-line">
                <div class="add-threshold-item">
                    <div class="add-threshold-title">参数名称</div>
                    <select class="form-control location-select-item" id="thresholdname" name="thresholdname"
                            onclick="">
                        <option value="U1">U1</option>
                        <option value="U2">U2</option>
                        <option value="U3">U3</option>
                        <option value="U4">U4</option>

                        <option value="I1">I1</option>
                        <option value="I2">I2</option>
                        <option value="I3">I3</option>
                        <option value="I4">I4</option>

                        <option value="P1">P1</option>
                        <option value="P2">P2</option>
                        <option value="P3">P3</option>
                        <option value="Psum">Psum</option>

                        <option value="Q1">Q1</option>
                        <option value="Q2">Q2</option>
                        <option value="Q3">Q3</option>
                        <option value="Qsum">Qsum</option>

                        <option value="S1">S1</option>
                        <option value="S2">S2</option>
                        <option value="S3">S3</option>
                        <option value="Ssum">Ssum</option>

                        <option value="PF1">PF1</option>
                        <option value="PF2">PF2</option>
                        <option value="PF3">PF3</option>
                        <option value="PFsum">PFsum</option>

                        <option value="CosPH1">CosPH1</option>
                        <option value="CosPH2">CosPH2</option>
                        <option value="CosPH3">CosPH3</option>

                    </select>

                </div>

                <div class="add-threshold-item">
                    <div class="add-threshold-title">参数分类</div>
                    <select class="form-control location-select-item" id="thresholdtype" name="thresholdtype"
                            onclick="">
                        <option value="IDP">IDP</option>
                        <option value="UPS">UPS</option>
                        <option value="蓄电池">蓄电池</option>
                        <option value="柴油发电机">柴油发电机</option>
                        <option value="空调">空调</option>
                        <option value="其他传感器">其他传感器</option>
                    </select>
                </div>
            </div>
            <div class="add-threshold-one-line">
                <div class="add-threshold-item">
                    <div class="add-threshold-title">单位</div>
                    <input id="thresholdunit" class="form-control add-threshold-input" type="text">
                </div>
                <div class="add-threshold-item">
                    <div class="add-threshold-title">标准值</div>
                    <input id="thresholdstandval" class="form-control add-threshold-input" type="text">
                </div>
                <div class="add-threshold-item">
                    <div class="add-threshold-title">上限值</div>
                    <input id="thresholdcellval" class="form-control add-threshold-input" type="text">
                </div>
                <div class="add-threshold-item">
                    <div class="add-threshold-title">下限值</div>
                    <input id="thresholdfloorval" class="form-control add-threshold-input" type="text">
                </div>
            </div>
            <div class="add-threshold-one-line">
                <div class="add-threshold-item">
                    <div class="add-threshold-title">启用标识</div>
                    <select class="form-control location-select-item" id="thresholdismark" name="thresholdismark"
                            onclick="">
                        <option value="1">是</option>
                        <option value="0">否</option>
                    </select>
                </div>
                <div class="add-threshold-item">
                    <div class="add-threshold-title">预警内容</div>
                    <input id="thresholdalarmcontent" class="form-control add-threshold-input" type="text">
                </div>
            </div>

            <div class="add-threshold-handle">
                <button type="submit" class="btn btn-primary" id="add-threshold-handle" onclick="submitAddThreshold()">
                    确定
                </button>
                <button type="submit" class="btn btn-primary" id="update-threshold-handle"
                        onclick="submitUpdateThreshold()">确定
                </button>
                <button class="btn btn-default" onclick="hiddenThresholdModel()">取消</button>
            </div>
        </div>
        <!-- threshold model DIV END-->

        <!-- alarm user model DIV-->
        <div class="add-alarm-user" id="add-alarm-user-modal" style="display: none">

            预警人员
            <select class="form-control location-select-item" id="alarm-user"
                    name="alarm-user" onclick="getALLUserInfoSimple()">
                <option value="">请选择</option>
            </select>

            <div class="add-roles-one-line">
                <div id="aauid" style="display: none"></div>
                <div class="add-roles-item">
                    <div class="add-roles-title">开始时间</div>
                    <input id="alarm-stime" class="form-control add-roles-input" type="text">
                </div>
                <div class="add-roles-item">
                    <div class="add-roles-title">结束时间</div>
                    <input id="alarm-etime" class="form-control add-roles-input" type="text">
                </div>
            </div>

            <div class="add-threshold-handle">
                <button type="submit" class="btn btn-primary" id="add-alarm-user-handle"
                        onclick="addAlarmUser()">确定
                </button>
                <button class="btn btn-default" onclick="cancle()">取消</button>
            </div>
        </div>
        <!-- alarm user model DIV END-->
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
    var provinceid = "<%=session.getAttribute("probank")%>";
    if (provinceid) {
        $('#province_code').append("<option value='" + provinceid + "' >" + provinceid + "</option>");
    }

    /*加载市下拉选*/
    function getCity() {
        var pname = "<%=session.getAttribute("probank")%>";

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
            dataType: "json",
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

<!-- 动态加载菜单项 -->
<script type="text/javascript">
    var menulist="<%=session.getAttribute("menulist")%>";
    var cbidstr = menulist.split(",");
    var isSystemMng = false;
    var isNewSystemMng = false;
    var ulist = new Array();
    var u2list = new Array();

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

            //对字符串分段处理（2或3段）
            var substr = cbidstr[i].split("/");

            if(substr.length == 2){
                ulist.push(substr[1]);
            }

            else
            {
                ulist.push(substr[1]);
                u2list.push(substr[2]);
            }

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

   for(var i = 1; i <= 8; i++){
        var ustr = "item" + i;

        for(var j = 0; j < ulist.length; j++){
            if(ustr == ulist[j]){
                break;
            }
            if(j == ulist.length - 1){
                $("#"+ustr+"").remove();
            }
        }
    }

    for(var i = 1; i <= 9; i++){
        var ustr;
        if(i < 7)
            ustr = "secsubItem" + i;
        else
            ustr = "tridsubItem" + i;

        for(var j = 0; j < u2list.length; j++){
            if(ustr == u2list[j]){
                break;
            }
            if(j == u2list.length - 1){
                $("#"+ustr+"").remove();
            }
        }
    }

</script>

<!-- 切换子菜单-->
<script type="text/javascript">
    $("#item1").hide();
    $("#item2").hide();
    $("#item3").hide();
    $("#item4").hide();
    $("#item5").hide();
    $("#item6").hide();
    $("#item7").hide();
    $("#item8").hide();
    $("#item9").hide();

    $("#secItem1").hide();
    $("#secItem2").hide();
    $("#secItem3").hide();
    $("#secItem4").hide();
    $("#secItem5").hide();
    $("#secItem6").hide();
    $("#secItem7").hide();
    $("#secItem8").hide();

    $("#tridItem1").hide();
    $("#tridItem2").hide();
    $("#tridItem3").hide();
    $("#tridItem4").hide();
    $("#tridItem5").hide();

    $(document).ready(function () {
        $("#subItem1").click(function () {
            $("#item1").show();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").hide();

            getALLUserInfomation();
        });
        $("#subItem2").click(function () {
            $("#item1").hide();
            $("#item2").show();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").hide();

            getALLRolesInfomation();
        });
        $("#subItem3").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").show();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").hide();

            var monitorpoint = 1;

            //功能管理

            //左侧角色表的初始化渲染
            $.ajax({
                type: "post",
                url: "getAllRoles",
                data: {
                    monitorpointid: monitorpoint
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var list = obj.allroles;
                    var table = $("#rolesinfotable-functionmng");
                    table.empty();
                    for (var i = 0; i < list.length; i++) {
                        var rid = list[i].rid;
                        var rname = list[i].rolesname;
                        var rextra = list[i].extra;
                        table.append('<tr><td><input type="checkbox" id="cbox-rid" name="cbox-rid" value=' + rid + '></td><td style="padding-left:40px;">' + rid +
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
                                            "text": arrays[i].permissionname//,
                                            // "state" : { "selected" : true}
                                        }
                                        jsonarray.push(arr);
                                    }
                                },
                                error: function (result) {
                                    alert("error" + result);
                                }
                            });
                            callback.call(this, jsonarray);
                        },
                    },
                    "plugins": ["checkbox"]
                })
            });

        });
        $("#subItem4").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").show();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").hide();

            $("#secItem1").show();
            $("#secItem2").hide();
            $("#secItem3").hide();
            $("#secItem4").hide();
            $("#secItem5").hide();
            $("#secItem6").hide();

            hiddenThresholdModel();

            $(document).ready(function () {
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
        $("#subItem5").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").show();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").hide();
        });
        $("#subItem6").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").show();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").hide();

            $("#tridItem1").show();
            $("#tridItem2").hide();
            $("#tridItem3").hide();

            hiddenThresholdModel();

            $(document).ready(function () {
                $("#tridsubItem1").click(function () {
                    $("#tridItem1").show();
                    $("#tridItem2").hide();
                    $("#tridItem3").hide();
                });
                $("#tridsubItem2").click(function () {
                    $("#tridItem1").hide();
                    $("#tridItem2").show();
                    $("#tridItem3").hide();
                });
                $("#tridsubItem3").click(function () {
                    $("#tridItem1").hide();
                    $("#tridItem2").hide();
                    $("#tridItem3").show();
                });
            });

        });
        $("#subItem7").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").show();
            $("#item8").hide();
            $("#item9").hide();
        });
        $("#subItem8").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").show();
            $("#item9").hide();
        });
        $("#subItem9").click(function () {
            $("#item1").hide();
            $("#item2").hide();
            $("#item3").hide();
            $("#item4").hide();
            $("#item5").hide();
            $("#item6").hide();
            $("#item7").hide();
            $("#item8").hide();
            $("#item9").show();
        });
    });
</script>

<!-- 切换子菜单subItem效果-->
<script type="text/javascript">
    $(function () {
        $("#ulItem li").click(function () {
            $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式selected
            $(this).addClass('active');                            // 添加当前元素的样式
        });
    });
</script>

<!-- 账号信息 -->
<script type="text/javascript">
    //查询所有账号
    function getALLUserInfomation() {

        $.ajax({
            type: "post",
            url: "getAllUserInfo",
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj;
                var table = $("#userinfotable");
                table.empty();

                for (var key in list) {
                    var len = list[key].length;
                    for (var i = 0; i < len; i++) {
                        var uid = list[key][i][0];
                        var account = list[key][i][1];
                        var name = list[key][i][2];
                        var org = list[key][i][3] + "" + list[key][i][4] + list[key][i][5];
                        var role = list[key][i][6];
                        var telephone = list[key][i][7];
                        var govtelephone = list[key][i][8];
                        table.append('<tr><td><input type="checkbox" name="userid" id="userid" value=' + uid + '></td><td style="padding-left:15px;">' + account +
                            '</td><td style="padding-left:20px;">' + name + '</td><td style="padding-left:20px;">' + org + '</td><td style="padding-left:20px;">'
                            + role + '</td><td style="padding-left:20px;">' + telephone + '</td><td style="padding-left:20px;">' + govtelephone + '</td></tr>');
                    }
                }
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
    function deleteUserInfomation() {
        var useridcheck = $("input[name='userid']:checked");
        if (useridcheck.length == 0)
            alert("请选择一条用户信息");
        else if (useridcheck.length > 1)
            alert("每次只能删除一条用户信息");
        else {
            // var monitorpoint = 1;
            var useridck = $("input[name='userid']:checked").serialize();
            $.ajax({
                type: "post",
                url: "deleteUserInfo",
                data: {
                    // monitorpointid: monitorpoint,
                    uid: useridck
                },
                dataType: "json",
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
            dataType: "json",
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

                //hiddenUserModel();
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

        if (testTelephone(telephone) && testTelephone(govtelephone)) {
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
                dataType: "json",
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

        if (testTelephone(utelephone) && testTelephone(ugovtelephone)) {
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
            dataType: "json",
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
    function getAllProvince() {
        $.ajax({
            type: "post",
            url: "getAllProvince",
            dataType: "json",
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
    function getAllCity() {
        $.ajax({
            type: "post",
            url: "getAllCity",
            dataType: "json",
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
    function getAllComputerroom() {
        $.ajax({
            type: "post",
            url: "getAllComputerroom",
            dataType: "json",
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
    //查询所有角色
    function getALLRolesInfomation() {
        //var monitorpoint = 1;
        $.ajax({
            type: "post",
            url: "getAllRoles",
            data: {
                //   monitorpointid: monitorpoint
            },
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj.allroles;
                var table = $("#rolesinfotable");
                table.empty();

                for (var i = 0; i < list.length; i++) {
                    var rid = list[i].rid;
                    var rname = list[i].rolesname;
                    var rextra = list[i].extra;
                    table.append('<tr><td><input type="checkbox" name="rolesid" id="rolesid" value=' + rid + '></td><td style="padding-left:40px;">' + rid +
                        '</td><td style="padding-left:80px;">' + rname + '</td><td style="padding-left:40px;">' + rextra + '</td></tr>');
                }
            },
            error: function () {
                alert("失败");
            }
        });
    }

    <!-- 显示roles model  -->
    function showAddRolesrModal() {
        $('#add-roles-modal').css('display', 'block');
        $('#add-roles-handle').css('display', 'block');
        $('#update-roles-handle').css('display', 'none');
    }

    <!-- 删除角色 -->
    function deleteRolesInfomation() {

        var ridcheck = $("input[name='rolesid']:checked");
        if (ridcheck.length == 0)
            alert("请选择一条角色信息");
        else if (ridcheck.length > 1)
            alert("每次只能删除一条角色信息");
        else {
            //var monitorpoint = 1;
            var ridck = $("input[name='rolesid']:checked").serialize();
            $.ajax({
                type: "post",
                url: "deleteRolesInfo",
                data: {
                    //monitorpointid: monitorpoint,
                    rid: ridck
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var rt = obj.result;

                    if (rt) {
                        getALLRolesInfomation();
                    }
                    else {
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
    function showUpdateRolesModal() {
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
            dataType: "json",
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
            dataType: "json",
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
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var rt = obj.result;

                if (rt) {
                    hiddenRolesModel();
                    getALLRolesInfomation();
                }
                else {
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

    ////模糊查询下拉框
    function fakeApi(str) {
        var name = str;
        var rt = new Array(3);

        if (name != "") {
            $.ajax({
                type: "post",
                url: "fuzzySearchDevice",
                data: {
                    name: name
                },
                dataType: "json",
                success: function (data) {

                    var list = data.alldlist;
                    for (var i = 0; i < list.length; i++) {
                        rt[i] = list[i].name;
                    }

                    var result;

                    if (rt[2] == undefined) {
                        if (rt[1] == undefined) {
                            if (rt[0] == undefined) {
                                result = [];
                            }
                            else result = [rt[0]];
                        }
                        else result = [rt[0], rt[1]];
                    }
                    else result = [rt[0], rt[1], rt[2]];

                    if (result && result.length > 0) {
                        tips.style.display = 'block';
                    }
                    appendData(result);
                }
            });
        }
    }

    var searchInput = document.getElementById("searchInput");
    var tips = document.getElementById("searchTips");

    function debounce(func, interval) {
        if (!interval) interval = 100;
        var timer;
        return function () {
            var context = this,
                args = arguments;
            clearTimeout(timer);
            timer = setTimeout(function () {
                func.apply(context, args);
            }, interval);
        }
    };

    function appendData(data) {
        for (var i = 0, len = data.length; i < len; i++) {
            var item = document.createElement("div");
            item.innerText = data[i];
            item.addEventListener("click", function (event) {
                searchInput.value = event.target.innerText;
                tips.style.display = 'none';
            });
            item.setAttribute("class", "tips-item");
            tips.appendChild(item);
        }
        ;
    };

    function insertData(value) {
        tips.style.display = 'none';
        tips.innerHTML = '';
        var result = fakeApi(value);
        if (result && result.length > 0) {
            tips.style.display = 'block'
        }
        ;
        appendData(result);
    };

    searchInput.addEventListener('blur', function () {
        setTimeout(function () {
            tips.style.display = 'none'
        }, 150);
    });

    searchInput.addEventListener('focus', function () {
        insertData(searchInput.value);
    });

    searchInput.addEventListener("input", debounce(function (event) {
        insertData(event.target.value);
    }, 150));

    ////////模糊查询下拉框

    <!-- 查询设备 -->
    function checkDevice() {
        var devicename = $("#searchInput").val();

        $.ajax({
            type: "post",
            url: "getDeviceInfo",
            data: {
                devicename: devicename
            },
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                $("#did").val(obj[0].did);
                $("#devname").val(obj[0].name);
                $("#devtype").val(obj[0].type);
                $("#serialno").val(obj[0].serialno);
                $("#IPaddress").val(obj[0].iPaddress);
                $("#port").val(obj[0].port);
                $("#extra").val(obj[0].extra);

                if (obj[0].devicetype == "以太网") {
                    $("#radio-Ethernet").attr("checked", "checked");
                    $("#radio-R5485").removeAttr("checked");
                    $("#radio-RS232").removeAttr("checked");
                }
                if (obj[0].devicetype == "RS485") {
                    $("#radio-Ethernet").removeAttr("checked");
                    $("#radio-R5485").attr("checked", "checked");
                    $("#radio-RS232").removeAttr("checked");
                }
                if (obj[0].devicetype == "RS232") {
                    $("#radio-Ethernet").removeAttr("checked");
                    $("#radio-R5485").removeAttr("checked");
                    $("#radio-RS232").attr("checked", "checked");
                }

                //预警方式
                if (obj[0].isSMS == "1") {
                    $("#checkbox-sms").attr("checked", "checked");
                }
                if (obj[0].isAlart == "1") {
                    $("#checkbox-alert").attr("checked", "checked");
                }
                if (obj[0].isPlartform == "1") {
                    $("#checkbox-plantform").attr("checked", "checked");
                }

                //预警人员
                checkDeviceAlarmUser();
            }
        });
    }

    <!-- 添加设备 -->
    function addOneDevice(){

        var radioEthernet = $('input[name="radio-Ethernet"]:checked').val();
        var radioR5485 = $('input[name="radio-R5485"]:checked').val();
        var radioRS232 = $('input[name="radio-RS232"]:checked').val();
        var checkboxsms = $('input:checkbox[name="checkbox-sms"]:checked').val();
        var checkboxalert = $('input:checkbox[name="checkbox-alert"]:checked').val();
        var checkboxplantform = $('input:checkbox[name="checkbox-plantform"]:checked').val();

        var devname = $("#devname").val();
        var devtype = $("#devtype").val();
        var serialno = $("#serialno").val();
        var IPaddress = $("#IPaddress").val();
        var port = $("#port").val();
        var extra = $("#extra").val();

        if(radioEthernet == "on" && radioR5485 == "on" && radioRS232 == "on")
            alert("只能选择一种类型");
        else if(radioEthernet == "on" && radioR5485 == "on")
            alert("只能选择一种类型");
        else if(radioEthernet == "on"&& radioRS232 == "on")
            alert("只能选择一种类型");
        else if(radioR5485 == "on" && radioRS232 == "on")
            alert("只能选择一种类型");
        else if(radioR5485 != "on" && radioR5485 != "on" && radioRS232 != "on")
            alert("请选择一种类型");
        else  $.ajax({
                type: "post",
                url: "addOneDevice",
                data: {
                    radioEthernet: radioEthernet,
                    radioR5485: radioR5485,
                    radioRS232: radioRS232,
                    checkboxsms: checkboxsms,
                    checkboxalert: checkboxalert,
                    checkboxplantform: checkboxplantform,
                    check: checkboxsms,
                    devname: devname,
                    devtype: devtype,
                    serialno: serialno,
                    IPaddress: IPaddress,
                    port: port,
                    extra: extra
                },
                dataType: "json",
                success: function (data) {
                    alert(data);
                }
            });
    }

    <!-- 查询预警人员 -->
    function checkDeviceAlarmUser() {
        var devicename = $("#searchInput").val();

        $.ajax({
            type: "post",
            url: "getAllAlarmUser",
            data: {
                devicename: devicename
            },
            dataType: "json",
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

                    table.append('<tr><td style="padding-left:20px;"><input type="checkbox" name="auid" id="auid" value=' + id + '></td>' +
                        '<td style="padding-left:80px;">' + stime + '</td><td style="padding-left:80px;">' + etime + '</td>' +
                        '<td style="padding-left:40px;">' + uname + '</td></tr>');
                }
            }
        });
    }

    //查询所有账号
    function getALLUserInfoSimple() {

        $("#alarm-user").empty();

        $.ajax({
            type: "post",
            url: "getAllUserInfo",
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj;

                for (var key in list) {
                    var len = list[key].length;
                    for (var i = 0; i < len; i++) {
                        var uid = list[key][i][0];
                        var account = list[key][i][1];

                        $('#alarm-user').append("<option value='" + uid + "' >" + account + "</option>");

                    }
                }
            }
        });
    }

    <!-- 添加预警人员 -->
    function addDeviceAlarmUser() {
        $('#add-alarm-user-modal').css('display', 'block');
    }

    <!-- 确认添加预警人员 -->
    function addAlarmUser() {
        var did = $("#did").val();
        var astime = $("#alarm-stime").val();
        var aetime = $("#alarm-etime").val();
        var auser = $("#alarm-user").val();

        $.ajax({
            type: "post",
            url: "addDeviceAlarmUser",
            data: {
                did: did,
                stime: astime,
                etime: aetime,
                uid: auser
            },
            dataType: "json",
            success: function (data) {
                alert(data);
                $('#add-alarm-user-modal').css('display', 'none');
            }
        });
    }

    function cancle() {
        $('#add-alarm-user-modal').css('display', 'none');
    }

    <!-- 取消（删除）预警人员 -->
    function deleteDeviceAlarmUser() {

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

    <!-- 清空设备div -->
    function clearDeviceDiv() {

        $("#searchInput").val("");
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

<!-- 功能管理-->
<script type="text/javascript">

    // 点击树的某个节点，存当前节点id到nodeid中
    $('#jstree').bind("activate_node.jstree", function (obj, e) {
        var currentNode = e.node;
        //当前点击的节点的id存到一个隐藏的div中
        $("#nodeid").val(currentNode.id);
    });

    // 分配角色权限
    function allocateRoles() {
        //当前点击的角色id存到一个隐藏的div中
        $("#roleid").val($("input[name='cbox-rid']:checked").serialize());

        var tmpNodePid = $("#nodeid").val();
        var tmpRid = $("#roleid").val();

        $.ajax({
            type: "post",
            url: "allocRolesPermission",
            data: {
                pid: tmpNodePid,
                rid: tmpRid
            },
            dataType: "json",
            success: function (data) {
                alert(data);
            }
        });
    };

    //点击左侧某个角色，右侧jstree显示角色的功能
    function getOneRolesFunctions() {
        var rid = $('input[name=cbox-rid]:checked').val();
        $.ajax({
            type: "post",
            url: "getOneRolesFunctions",
            data: {
                rid: rid
            },
            dataType: "json",
            success: function (data) {
                var arrays = data.allrptree;
                $("#jstree").jstree('check_node', arrays);
            }
        });
    }

    $(function () {
        $(":checked").each(function () {
            if ($(this).id = "1") {
                $(this).attr("checked", "checked");
            }
        });
    });

</script>

<!-- 限值管理-->
<script type="text/javascript">
    ////模糊查询下拉框
    function devthdfakeApi(str) {
        var name = str;
        var rt = new Array(3);

        if (name != "") {
            $.ajax({
                type: "post",
                url: "fuzzySearchDevice",
                data: {
                    name: name
                },
                dataType: "json",
                success: function (data) {

                    var list = data.alldlist;
                    for (var i = 0; i < list.length; i++) {
                        rt[i] = list[i].name;
                    }

                    var result;

                    if (rt[2] == undefined) {
                        if (rt[1] == undefined) {
                            if (rt[0] == undefined) {
                                result = [];
                            }
                            else result = [rt[0]];
                        }
                        else result = [rt[0], rt[1]];
                    }
                    else result = [rt[0], rt[1], rt[2]];

                    if (result && result.length > 0) {
                        devthdtips.style.display = 'block';
                    }
                    devthdappendData(result);
                }
            });
        }
    }

    var devthdsearchInput = document.getElementById("device-threshold-name");
    var devthdtips = document.getElementById("device-threshold-Tips");

    function devthddebounce(func, interval) {
        if (!interval) interval = 100;
        var timer;
        return function () {
            var context = this,
                args = arguments;
            clearTimeout(timer);
            timer = setTimeout(function () {
                func.apply(context, args);
            }, interval);
        }
    };

    function devthdappendData(data) {
        for (var i = 0, len = data.length; i < len; i++) {
            var item = document.createElement("div");
            item.innerText = data[i];
            item.addEventListener("click", function (event) {
                devthdsearchInput.value = event.target.innerText;
                tips.style.display = 'none';
            });
            item.setAttribute("class", "tips-item");
            devthdtips.appendChild(item);
        }
        ;
    };

    function devthdinsertData(value) {
        tips.style.display = 'none';
        tips.innerHTML = '';
        var result = devthdfakeApi(value);
        if (result && result.length > 0) {
            devthdtips.style.display = 'block'
        }
        ;
        devthdappendData(result);
    };

    devthdsearchInput.addEventListener('blur', function () {
        setTimeout(function () {
            devthdtips.style.display = 'none'
        }, 150);
    });

    devthdsearchInput.addEventListener('focus', function () {
        devthdinsertData(devthdsearchInput.value);
    });

    devthdsearchInput.addEventListener("input", devthddebounce(function (event) {
        devthdinsertData(event.target.value);
    }, 150));

    ////////模糊查询下拉框

    <!-- 查询限值 -->
    function getOneDeviceThreshold() {
        var dname = $("#device-threshold-name").val();

        $.ajax({
            type: "post",
            url: "getOneDeviceThreshold",
            data: {
                dname: dname
            },
            dataType: "json",
            success: function (data) {
                var list = data.alldtlist;

                var table = $("#threadinfotablehead");
                table.empty();
                table.append('<tr><td style="padding-left:20px;"></td><td style="padding-left:20px;">参数名称</td><td style="padding-left:20px;">参数分类</td><td style="padding-left:20px;">' +
                    '单位</td><td style="padding-left:20px;">标准值</td><td style="padding-left:20px;">上限值</td><td style="padding-left:20px;">下限值</td><td style="padding-left:20px;">' +
                    '启用标识</td><td style="padding-left:20px;">预警内容</td></tr>');

                for (var i = 0; i < list.length; i++) {
                    var dtid = list[i].dtid;
                    var name = list[i].name;
                    var type = list[i].type;
                    var unit = list[i].unit;
                    var standardval = list[i].standardval;
                    var cellval = list[i].cellval;
                    var floorval = list[i].floorval;
                    var isMark = list[i].isMark;
                    var alarmcontent = list[i].alarmcontent;

                    console.log("dtid:" + dtid);


                    table.append('<tr><td style="padding-left:20px;"><input type="checkbox" name="dtid" id="dtid" value=' + dtid + '></td>' +
                        '<td style="padding-left:20px;">' + name + '</td><td style="padding-left:20px;">' + type + '</td>' +
                        '<td style="padding-left:20px;">' + unit + '</td><td style="padding-left:20px;">' + standardval + '</td>' +
                        '<td style="padding-left:20px;">' + cellval + '</td><td style="padding-left:20px;">' + floorval + '</td>' +
                        '<td style="padding-left:20px;">' + isMark + '</td><td style="padding-left:20px;">' + alarmcontent + '</td>' +
                        '</td></tr>');
                }
            },
            error: function () {
                alert("失败");
            }
        });
    }

    <!-- 显示添加限值 model  -->
    function AddThresholdModal() {
        $('#add-threshold-modal').css('display', 'block');
        $('#add-threshold-handle').css('display', 'block');
        $('#update-threshold-handle').css('display', 'none');
    }

    <!-- 显示修改限值 model  -->
    function updateThresholdModal() {
        $('#add-threshold-modal').css('display', 'block');
        $('#add-threshold-handle').css('display', 'none');
        $('#update-threshold-handle').css('display', 'block');

        //显示信息到div
        var dtidck = $("input[name='dtid']:checked").val();

        $.ajax({
            type: "post",
            url: "getOneofOneDeviceThreshold",
            data: {
                dtid: dtidck
            },
            dataType: "json",
            success: function (data) {
                var list = data.devicesThreshold;

                $("#thresholdname").val(list[0].name);
                $("#thresholdtype").val(list[0].type);
                $("#thresholdunit").val(list[0].unit);
                $("#thresholdcellval").val(list[0].cellval);
                $("#thresholdstandval").val(list[0].standardval);
                $("#thresholdfloorval").val(list[0].floorval);
                $("#thresholdismark").val(list[0].ismark);
                $("#thresholdalarmcontent").val(list[0].alarmcontent);
            },
            error: function () {
                alert("失败");
            }
        });
    }

    <!-- 隐藏 model  -->
    function hiddenThresholdModel() {
        $('#add-threshold-modal').css('display', 'none');
        $('#add-alarm-user-modal').css('display', 'none');
        $('#add-threshold-handle').css('display', 'none');
        $('#update-threshold-handle').css('display', 'none');
    }

    <!-- 提交添加限值 model  -->
    function submitAddThreshold() {
        var dname = $("#device-threshold-name").val();
        var did = $("#dtid").val();
        var name = $("#thresholdname").val();
        var type = $("#thresholdtype").val();
        var unit = $("#thresholdunit").val();
        var standval = $("#thresholdstandval").val();
        var cellval = $("#thresholdcellval").val();
        var floorval = $("#thresholdfloorval").val();
        var ismark = $("#thresholdismark").val();
        var alarmcontent = $("#thresholdalarmcontent").val();

        $.ajax({
            type: "post",
            url: "addThresholdInfo",
            data: {
                dname: dname,
                name: name,
                type: type,
                unit: unit,
                standval: standval,
                cellval: cellval,
                floorval: floorval,
                ismark: ismark,
                alarmcontent: alarmcontent
            },
            dataType: "json",
            success: function (data) {
                alert(data);
                hiddenThresholdModel();
                //getALLUserInfomation();
            },
            error: function () {
                alert("新增失败");
            }
        });
    }

    <!-- 提交修改限值 model  -->
    function submitUpdateThreshold() {
        var dtid = $("input[name='dtid']:checked").val();
        var name = $("#thresholdname").val();
        var type = $("#thresholdtype").val();
        var unit = $("#thresholdunit").val();
        var standval = $("#thresholdstandval").val();
        var cellval = $("#thresholdcellval").val();
        var floorval = $("#thresholdfloorval").val();
        var ismark = $("#thresholdismark").val();
        var alarmcontent = $("#thresholdalarmcontent").val();

        $.ajax({
            type: "post",
            url: "updateOneDeviceThreshold",
            data: {
                dtid: dtid,
                name: name,
                type: type,
                unit: unit,
                standval: standval,
                cellval: cellval,
                floorval: floorval,
                ismark: ismark,
                alarmcontent: alarmcontent
            },
            dataType: "json",
            success: function (data) {
                alert(data);
                hiddenThresholdModel();
            },
            error: function () {
                alert("失败");
            }
        });

    }

    <!-- 删除限值 model  -->
    function deleteThresholdModal() {
        var dtid = $("input[name='dtid']:checked").val();
        console.log("dtid:" + dtid);

        $.ajax({
            type: "post",
            url: "deleteOneDeviceThreshold",
            data: {
                dtid: dtid
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

    <!-- 导入限值 model  -->
    function importThresholdModal() {

    }
</script>

<!-- 正则表达式-->
<script type="text/javascript">
    function testTelephone(str) {
        var re = /^1\d{10}$/    //正则表达式
        if (re.test(str)) {      //判断字符是否是11位数字
            return true;
        }
        else {
            alert(str + "请输入11位手机号码");
            return false;
        }
    }
</script>

<!-- 告警配置-->
<script type="text/javascript">
    function addAlarm(){
        alert("add alarm");
    }

    function deleterAlarm(){
        alert("add alarm");
    }
</script>

</body>

</html>