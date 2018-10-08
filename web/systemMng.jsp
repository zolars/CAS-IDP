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
    <link rel="stylesheet" href="css/header.css">

    <style>
        .outer {
            width: 200px;
            height: 30px;
            position: relative;
            display: inline-block;
        }

        .searchButton{
            display: inline-block;
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
            z-index: 100000;
            background: white;
            color: black;
        }

        .tips-item:hover {
            background: #4e7bff;
        }
        #userinfotable {
            width: 100%;
        }
        .item-container {
            width: 100%;
        }
        .item-btn-container {
            width: 100%;
            padding: 20px;
        }
        .item-btn-item {
            width: 70px;

        }
    </style>
</head>

<body id="skin-blur-blue">

<script>
    var allUserList = null;

</script>

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


<script Language="JavaScript" src="js/onlineDataInterface.js"></script>

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
                            <a data-toggle="tab" id="subItem8">•基础信息配置</a>
                        </li>
                        <li style="width:15%">
                            <a data-toggle="tab" id="subItem9">•组织管理</a>
                        </li>
                    </ul>

                    <div id="item1" class="col-md-2 col-xs-6 item-container">
                        <div class="block-area" id="defaultStyle">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="tile">
                                        <h2 class="tile-title">账号信息</h2>
                                        <div class="btn-group item-btn-container">
                                            <button type="button" class="btn-sm btn-primary item-btn-item"
                                                    onClick="getALLUserInfomation()">查询
                                            </button>
                                            <button type="button" class="btn-sm btn-success item-btn-item"
                                                    onclick="showAddUserModal()">新增
                                            </button>
                                            <button type="button" class="btn-sm btn-danger item-btn-item"
                                                    onClick="deleteUserInfomation()">删除
                                            </button>
                                            <button type="button" class="btn-sm btn-default item-btn-item"
                                                    onclick="showUpdateUserModal()">修改
                                            </button>
                                        </div>

                                        <table id="userinfotable"></table>
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
                                            <button type="button" class="btn-primary"
                                                    onClick="getALLRolesInfomation()">查询
                                            </button>
                                            <button type="button" class="btn-success"
                                                    onclick="showAddRolesrModal()">新增
                                            </button>
                                            <button type="button" class="btn-danger"
                                                    onClick="deleteRolesInfomation()">删除
                                            </button>
                                            <button type="button" class="btn-default"
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
                                        <button type="button" class="btn-primary" onclick="allocateRoles()">
                                            分配功能
                                        </button>
                                        <button type="button" class="btn-primary"
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
                        <ul class="nav nav-tabs">
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
                            <div id="outer" class="outer">
                                <input id="searchInput" class="searchInput form-control"
                                       type="text">
                                <div id="searchTips" class="tips" style="display: none">
                                </div>
                            </div>
                            <button class="btn btn-default searchButton" onclick="checkDevice()">查询</button>

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
                                                        <input id="radio-Ethernet" name="myradio" type="radio"> 以太网
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input id="radio-R5485" name="myradio" type="radio"> R5485
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input id="radio-RS232" name="myradio" type="radio"> RS232
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
                                    <button class="btn-success" onclick="addDeviceAlarmUser()">添加预警人员</button>
                                    <button class="btn-default" onclick="deleteDeviceAlarmUser()">取消预警人员</button>
                                </div>

                                <div>
                                    <button class="btn-success" onclick="addOneDevice()">添加设备</button>
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
                                    </tr>
                                    <tr>
                                        <td>
                                            <button class="btn-primary" onclick="getOneDeviceThreshold()">查询</button>
                                            <button class="btn-success" onclick="AddThresholdModal()" type="submit">添加</button>
                                            <button class="btn-default" onclick="updateThresholdModal()">修改</button>
                                            <button class="btn-danger" onclick="deleteThresholdModal()">删除</button>
                                        </td>

                                        <input type="file" name="请选择导入文件" id="uploadEventFile">
                                        <button type="button" class="btn-success" onclick="deviceThresholdupload()">导入</button>

                                    </tr>
                                </table>
                            </div>

                            <div class="col-md-8">
                                <table id="threadinfotablehead"></table>
                                <table id="infotable"></table>
                            </div>
                        </div>
                        <div id="tridItem2" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        </div>
                        <div id="tridItem3" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        </div>
                    </div>
                    <div id="item7" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">

                        <div class="col-md-4">
                            <div class="tile">
                                <div>
                                    预警等级
                                    <select class="form-control location-select-item" id="alarmtype-select" name="alarmtype-select" onclick="getAlarmLevelSetting()">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                    </select>
                                </div>

                                <div class="listview todo-list sortable">
                                    <div class="media">
                                        <div class="checkbox m-0">
                                            <label class="t-overflow">
                                                <input type="checkbox" id="checkbox-alert-2" name="checkbox-alert-2"> 弹窗
                                            </label>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="checkbox m-0">
                                            <label class="t-overflow">
                                                <input type="radio" id="checkbox-sms-2" name="checkbox-smsorplant" onchange="hiddenplantformsetting(this)"> 短信
                                            </label>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="checkbox m-0">
                                            <label class="t-overflow">
                                                <input type="radio" id="checkbox-plantform-2" name="checkbox-smsorplant" onchange="showplantformsetting(this)"> 平台
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div>告警内容：<input id="sms-content-input" class="searchInput form-control" type="text"></div>
                                <button class="btn-default" onclick="addAlarm()">确认</button>
                            </div>
                        </div>

                        <!-- plantform div-->
                        <div id = "plantform-div" class="col-md-6" style="display:none;">
                            设备名称：<input type="text" id="plantform-dname" class="form-control setting-input">
                            ip地址:<input type="text" id="plantform-ip" class="form-control setting-input">
                            时间：<input type="text" id="plantform-time" class="form-control setting-input">
                            告警级别：<input type="text" id="plantform-level" class="form-control setting-input">
                            告警状态:<input type="text" id="plantform-status" class="form-control setting-input">
                            告警对象名称：<input type="text" id="plantform-did" class="form-control setting-input">
                            告警实例名称：<input type="text" id="plantform-diname" class="form-control setting-input">
                            监控指标名称：<input type="text" id="plantform-typename" class="form-control setting-input">
                            告警内容：<input type="text" id="plantform-content" class="form-control setting-input">
                            扩展字段1：<input type="text" id="plantform-ext1" class="form-control setting-input">
                            扩展字段2：<input type="text" id="plantform-ext2" class="form-control setting-input">
                            扩展字段3：<input type="text" id="plantform-ext3" class="form-control setting-input">

                            <button class="btn btn-default" onclick="testOk()">点击测试短信平台</button>
                        </div>
                        <!-- plantform div end -->

                    </div>
                    <div id="item8" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="col-md-5">
                            <table>
                                <tr>
                                    <td>实时数据采集频率：</td>
                                    <td><input type="text" class="form-control setting-input" id="onlineinterval-input"></td>
                                    <td>单位（秒）</td>
                                </tr>
                                <tr>
                                    <td>暂态事件存储频率：</td>
                                    <td><input type="text" class="form-control setting-input" id="tansentinterval-input"></td>
                                    <td>单位（分钟）</td>
                                </tr>
                                <tr>
                                    <td>数据上传时效：</td>
                                    <td><input type="text" class="form-control setting-input" id="upload-input"></td>
                                    <td>单位（小时）</td>
                                </tr>
                                <tr>
                                    <button class="btn-default" onclick="captureSettingOk()">确定</button>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="item9" class="col-md-2 col-xs-6" style="width:90%; height: 600px;">
                        <div class="col-md-2">
                            <div id="jstree-structure"></div>
                            <div id="nodeidstruct" style="display: none"></div>
                        </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-sm btn-alt" onClick="addOrg()">添加</button>
                            <button type="button" class="btn btn-sm btn-alt" onClick="updateOrg()">修改</button>
                            <button type="button" class="btn btn-sm btn-alt" onClick="deleteOrg()">删除</button>
                        </div>
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
                    <select class="form-control" id="userroles" name="userroles">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>

            <div class="add-user-one-line">
                <div class="add-user-item">
                    <div class="add-user-title">省</div>
                    <select class="form-control location-select-item" id="userorgnization-province"
                            name="userorgnization-province">
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
                <button type="submit" class="btn btn-primary" id="update-user-handle" onclick="submitUpdateUser()">确定</button>
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
                    <input class="form-control location-select-item" id="thresholdname" name="thresholdname"  disabled="disabled">
                    </input>
                </div>

                <div class="add-threshold-item">
                    <div class="add-threshold-title">参数分类</div>
                    <select class="form-control location-select-item" id="thresholdtype" name="thresholdtype"
                            onclick="">
                        <option value="塌陷">塌陷</option>
                        <option value="浪涌">浪涌</option>
                        <option value="瞬变">瞬变</option>
                        <option value="温度">温度</option>
                        <option value="湿度">湿度</option>
                        <option value="频率偏差越限">频率偏差越限</option>
                        <option value="电流谐波越限">电流谐波越限</option>
                        <option value="电流谐波越限">电压谐波越限</option>
                        <option value="电流谐波越限">电压闪变越限</option>
                        <option value="电流谐波越限">电压不平衡度</option>
                    </select>
                </div>
            </div>

            <div class="add-threshold-one-line">
                <div class="add-threshold-item">
                    <div class="add-threshold-title">单位</div>
                    <input id="thresholdunit" class="form-control add-threshold-input" type="text">
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
                    等级<select class="form-control location-select-item" id="thresholdlevel" name="thresholdlevel"
                            onclick="">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
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
                <input type="radio" id="add-alarm-user-allday-radio" name="add-alarm-user-radio" value="allday">全天
            </div>
            <div class="add-roles-one-line">
                <input type="radio" id="add-alarm-user-workday-radio" name="add-alarm-user-radio" value="workday">工作日
            </div>

            <div class="add-threshold-handle">
                <button type="submit" class="btn-primary" id="add-alarm-user-handle"
                        onclick="addAlarmUser()">确定
                </button>
                <button class="btn-default" onclick="cancle()">取消</button>
            </div>
        </div>
        <!-- alarm user model DIV END-->


        <!-- orgnization model DIV-->
        <div class="add-roles" id="update-orgnization-modal" style="display: none">
            <div class="add-roles-one-line">
                <div id="oid" style="display: none"></div>
                <div class="add-roles-item">
                    <div class="add-roles-title">组织机构名称</div>
                    <input id="orgname" class="form-control add-roles-input" type="text">
                </div>
            </div>

            <div class="update-org-handle">
                <button type="submit" class="btn btn-primary" id="update-org-handle" onclick="submitUpdateOrg()">确定</button>
                <button class="btn btn-default" onclick="cancleUpdateOrg()">取消</button>
            </div>
        </div>

        <div class="add-user" id="add-orgnization-modal" style="display: none">
            <div class="add-roles-one-line">
                <div class="add-roles-item">
                    <div class="add-roles-title">省行名称</div>
                    <input id="orgprovincename" class="form-control add-roles-input" type="text">
                    <div class="add-roles-title">市行名称</div>
                    <input id="orgcityname" class="form-control add-roles-input" type="text">
                    <div class="add-roles-title">机房名称</div>
                    <input id="orgcomputerroomname" class="form-control add-roles-input" type="text">
                </div>
            </div>

            <div class="add-org-handle">
                <button type="submit" class="btn btn-primary" id="add-org-handle" onclick="submitAddOrg()">确定</button>
                <button class="btn btn-default" onclick="cancleAddOrg()">取消</button>
            </div>
        </div>
        <!-- orgnization model DIV END-->


    </div>
</section>


<!-- Javascript Libraries -->
<!-- jQuery -->
<!-- <script src="js/jquery-3.3.1.js"></script> -->

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


            //功能管理
            //左侧角色表的初始化渲染
            $.ajax({
                type: "post",
                url: "getAllRoles",
                data: {
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
                        var rextra;
                        if(list[i].extra != undefined) rextra = list[i].extra;
                        else rextra = " ";

                        table.append('<tr><td><input type="radio" id="cbox-rid" name="cbox-rid" value=' + rid + '></td><td style="padding-left:40px;">' + rid +
                            '</td><td style="padding-left:80px;">' + rname + '</td><td style="padding-left:40px;">' + rextra + '</td></tr>');
                    }
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
                                        };
                                        jsonarray.push(arr);
                                    }
                                }
                            });
                            callback.call(this, jsonarray);
                        },
                    },
                    "plugins": ["checkbox"]
                });
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
        <!--wsy2018.9.6-->
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

            $("#secItem7").show();
            $("#secItem8").hide();
            $("#secItem9").hide();

            hiddenThresholdModel();

            $(document).ready(function () {
                $("#secsubItem7").click(function () {
                    $("#secItem7").show();
                    $("#secItem8").hide();
                    $("#secItem9").hide();
                    $("#secItem10").hide();

                    $('#proBankInfo').css('display', 'block');
                });
                $("#secsubItem8").click(function () {
                    $("#secItem7").hide();
                    $("#secItem8").show();
                    $("#secItem9").hide();
                    $("#secItem10").hide();

                    $('#proBankInfo').css('display', 'none');
                });
                $("#secsubItem9").click(function () {
                    $("#secItem7").hide();
                    $("#secItem8").hide();
                    $("#secItem9").show();
                    $("#secItem10").hide();

                    $('#proBankInfo').css('display', 'none');
                });
                $("#secsubItem10").click(function () {
                    $("#secItem7").hide();
                    $("#secItem8").hide();
                    $("#secItem9").hide();
                    $("#secItem10").show();

                    $('#proBankInfo').css('display', 'none');
                });
            });
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
                //var list = obj;
                allUserList = obj;
                var table = $("#userinfotable");
                table.empty();
                table.append('<tr><td><div style="width:10px;"></div></td><td><div style="width:50px;">账号</div></td><td><div style="width:50px;">姓名</div></td><td><div style="width:260px;">组织</div></th><td><div style="widtd:100px;">角色</div></td><td><div style="width:150px;">联系方式</div></td><td> <div style="width:150px;">公务手机</div></td></tr>');

                for (var key in allUserList) {
                    var len = allUserList[key].length;

                    for (var i = 0; i < len; i++) {
                        var uid = allUserList[key][i][0];
                        var account = allUserList[key][i][1];
                        var name = allUserList[key][i][2];
                        var org = allUserList[key][i][3] + allUserList[key][i][4] + allUserList[key][i][5];

                        var role;
                        if(allUserList[key][i][6] != undefined) role = allUserList[key][i][6];
                        else role += " ";

                        var telephone;
                        if(allUserList[key][i][7] != undefined) telephone = allUserList[key][i][7];
                        else telephone += " ";

                        var govtelephone;
                        if(allUserList[key][i][8] != undefined) govtelephone = allUserList[key][i][8];
                        else govtelephone += " ";

                        table.append('<tr>' +
                            '<td style="width:10px;"><input type="radio" name="userid" id="userid" value=' + uid + '></td>' +
                            '<td style="width:50px;">' + account + '</td>' +
                            '<td style="width:50px;">' + name + '</td>' +
                            '<td style="width:260px;">' + org + '</td>' +
                            '<td style="width:100px;">' + role + '</td>' +
                            '<td style="width:150px;">' + telephone + '</td>' +
                            '<td style="width:150px;">' + govtelephone + '</td>' +
                            '</tr>');
                    }
                }
            }
        });
    }

    <!--显示user model -->
    function showAddUserModal() {
        //清除上次填表的信息
        $('#useraccount').val("");
        $('#userpassword').val("");
        $('#username').val("");
        $('#usertelephone').val("");
        $('#usergovtelephone').val("");
        $('#userroles').val("");
        $('#userorgnization-province').val("");
        $('#userorgnization-city').val("");
        $('#userorgnization-computerroom').val("");

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
            var useridck = $("input[name='userid']:checked").serialize();
            $.ajax({
                type: "post",
                url: "deleteUserInfo",
                data: {
                    uid: useridck
                },
                dataType: "json",
                success: function (data) {
                    getALLUserInfomation();
                }
            });
        }
    }

    <!--修改账号 -->
    function showUpdateUserModal() {

        //查询要显示的用户信息到div
        var useridcheck = $("input[name='userid']:checked").val();

        if(useridcheck == undefined)
            alert("请选择一个用户");
        else{
            for(var i = 0; i < allUserList['alluser'].length; i++){
                if(allUserList['alluser'][i][0] == useridcheck){
                    $("#uid").val(allUserList['alluser'][i][0]);
                    $("#useraccount").val(allUserList['alluser'][i][1]);
                    $("#username").val(allUserList['alluser'][i][2]);
                    $("#usertelephone").val(allUserList['alluser'][i][7]);
                    $("#usergovtelephone").val(allUserList['alluser'][i][8]);

                    for(var j = 0; j< $("#userroles option").length; j++ ) {
                        if($("#userroles option")[j].value == allUserList['alluser'][i][6]) {
                            document.getElementById("userroles")[j].selected = true;
                        }
                    }

                    //$("#userorgnization-province").val(allUserList['alluser'][i][3]);
                    //$("#userorgnization-city").val(allUserList['alluser'][i][3]);
                    //$("#userorgnization-computerroom").val(allUserList['alluser'][i][3]);
                }
            }
            $('#add-user-modal').css('display', 'block');
            $('#add-user-handle').css('display', 'none');
            $('#update-user-handle').css('display', 'block');
        }

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

        var temuser = "<%=session.getAttribute("userid")%>"; //用于验证当前账户的是否具有修改用户信息的权限

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
                    ccid: ccid,
                    temuser: temuser
                },
                dataType: "json",
                success: function (data) {
                    hiddenUserModel();
                    getALLUserInfomation();
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

    $(document).ready(function() {
        /*初始加载角色下拉选*/
        $.ajax({
            type: "post",
            url: "getAllRoles",
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var rt = obj.allroles;
                for (var i = 0; i < rt.length; i++) {
                    $('#userroles').append("<option value='" + rt[i].rolesname + "' >" + rt[i].rolesname + "</option>");
                }
            }
        });

        /*初始加载Province下拉选*/
        $.ajax({
            type: "post",
            url: "getAllProvince",
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var rt = obj.allprovince;
                for (var i = 0; i < rt.length; i++) {
                    $('#userorgnization-province').append("<option value='" + rt[i].pbid + "' >" + rt[i].pbname + "</option>");
                }
            }
        });

    });

    //province 动态改变,city清空
    document.getElementById("userorgnization-province").addEventListener('change', function () {
        $('#userorgnization-city').empty();
    });
    //city 动态改变,computerroom清空
    document.getElementById("userorgnization-city").addEventListener('change', function () {
        $('#userorgnization-computerroom').empty();
    });

    /*加载City下拉选*/
    function getAllCity() {

        var province = $("#userorgnization-province option:selected").val();
        var city = $("#userorgnization-city").val();

        if(!province){
            alert("请先选择省行，再选择市行");
        }
        else if (!city){
            $.ajax({
                type: "post",
                url: "getCityByProvince",
                data:{
                    province: province
                },
                dataType: "json",
                success: function (data) {
                    $('#userorgnization-city').empty();
                    var obj = JSON.parse(data);
                    var rt = obj.allcity;

                    for (var i = 0; i < rt.length; i++) {
                        $('#userorgnization-city').append("<option value='" + rt[i].cbid + "' >" + rt[i].cbname + "</option>");
                    }
                }
            });
        }
    }

    /*加载Computerroom下拉选*/
    function getAllComputerroom() {
        var city = $("#userorgnization-city option:selected").val();
        var computerroom = $("#userorgnization-computerroom").val();

        if(!city){
            alert("请先选择市行，再选择机房");
        }
        else if (!computerroom) {
            $.ajax({
                type: "post",
                url: "getComputerroomByCity",
                data:{
                    city: city
                },
                dataType: "json",
                success: function (data) {
                    var obj = JSON.parse(data);
                    var rt = obj.allcomputerroom;

                    for (var i = 0; i < rt.length; i++) {
                        $('#userorgnization-computerroom').append("<option value='" + rt[i].rid + "' >" + rt[i].rname + "</option>");
                    }
                }
            });
        }
    }

</script>

<!-- 角色管理 -->
<script type="text/javascript">
    //查询所有角色
    function getALLRolesInfomation() {

        $.ajax({
            type: "post",
            url: "getAllRoles",
            data: {
            },
            dataType: "json",
            success: function (data) {
                var obj = JSON.parse(data);
                var list = obj.allroles;
                var table = $("#rolesinfotable");
                table.empty();

                for (var i = 0; i < list.length; i++) {

                    var rid = list[i].rid;
                    var  rname = list[i].rolesname;
                    var rextra;
                    if(list[i].extra != undefined) rextra = list[i].extra;
                    else rextra = " ";

                    table.append('<tr><td><input type="radio" name="rolesid" id="rolesid" value=' + rid + '></td><td style="padding-left:40px;">' + rid +
                        '</td><td style="padding-left:80px;">' + rname + '</td><td style="padding-left:40px;">' + rextra + '</td></tr>');
                }
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
        };
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
        };
    };

    function insertData(value) {
        tips.style.display = 'none';
        tips.innerHTML = '';
        var result = fakeApi(value);
        if (result && result.length > 0) {
            tips.style.display = 'block'
        };
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
        else if(radioEthernet != "on" && radioR5485 != "on" && radioRS232 != "on")
            alert("请选择一种类型");
        else if(radioEthernet != "on")
            alert("只能选择TCP设备类型");
        else $.ajax({
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

        if(devicename){
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
                    table.append('<tr><td style="padding-left:20px;"></td><td style="padding-left:80px;">告警时段</td><td style="padding-left:40px;">账号</td></tr>');

                    for (var i = 0; i < list.length; i++) {
                        var id = list[i].id;
                        var timeperiod = (list[i].timeperiod != "1") ? "全天告警":"工作日告警";
                        var uname = listname[i];

                        table.append('<tr><td style="padding-left:20px;"><input type="radio" name="auid" id="auid" value=' + id + '></td>' +
                            '<td style="padding-left:80px;">' + timeperiod + '</td>' +
                            '<td style="padding-left:40px;">' + uname + '</td></tr>');
                    }
                }
            });
        }
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
        var aucradio = $('input[name="add-alarm-user-radio"]:checked').val();
        var auser = $("#alarm-user").val();

        if(aucradio == undefined)
            alert("请选择告警时段");
        else{
            $.ajax({
                type: "post",
                url: "addDeviceAlarmUser",
                data: {
                    did: did,
                    aucradio: aucradio,
                    uid: auser
                },
                dataType: "json",
                success: function (data) {
                    alert(data);
                    $('#add-alarm-user-modal').css('display', 'none');
                }
            });
        }
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

    // 点击树的某个节点，存当前节点id到nodeidstruct中
    $('#jstree-structure').bind("activate_node.jstree", function (obj, e) {
        var currentNode = e.node;
        //当前点击的节点的id存到一个隐藏的div中
        $("#nodeidstruct").val(currentNode.id);
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

    //点击左侧某个角色，右侧jstree显示角色的功能，先清理一下右侧树的选中状态
    function getOneRolesFunctions() {
        $('#jstree').jstree('deselect_all');

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

        if(dname == null || dname == undefined || dname == "")
            alert("请输入某个设备名称");
        else{
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
                        '单位</td><td style="padding-left:20px;">上限值</td><td style="padding-left:20px;">下限值</td><td style="padding-left:20px;">' +
                        '启用标识</td><td style="padding-left:20px;">等级</td></tr>');

                    for (var i = 0; i < list.length; i++) {
                        var dtid = list[i][0];
                        var name = list[i][1];
                        var type = list[i][2];
                        var unit = list[i][3];
                        var cellval = list[i][4];
                        var floorval = list[i][5];
                        var isMark = list[i][6];
                        var level = list[i][7];

                        table.append('<tr><td style="padding-left:20px;"><input type="checkbox" name="dtid" id="dtid" value=' + dtid + '></td>' +
                            '<td style="padding-left:20px;">' + name + '</td><td style="padding-left:20px;">' + type + '</td>' +
                            '<td style="padding-left:20px;">' + unit  + '</td>' +
                            '<td style="padding-left:20px;">' + cellval + '</td><td style="padding-left:20px;">' + floorval + '</td>' +
                            '<td style="padding-left:20px;">' + isMark + '</td>' + '<td style="padding-left:20px;">' + level +
                            '</td></tr>');
                    }
                },
                error: function () {
                    alert("获取失败");
                }
            });
        }

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

                $("#thresholdname").val(list[0][1]);
                $("#thresholdtype").val(list[0][2]);
                $("#thresholdunit").val(list[0][3]);
                $("#thresholdcellval").val(list[0][4]);
              //  $("#thresholdstandval").val(list[0].standardval);
                $("#thresholdfloorval").val(list[0][5]);
                $("#thresholdismark").val(list[0][6]);
                $("#thresholdlevel").val(list[0][7]);
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
        var dtid = $("#dtid").val();
        var name = $("#thresholdname").val();
        var type = $("#thresholdtype").val();
        var unit = $("#thresholdunit").val();
        var cellval = $("#thresholdcellval").val();
        var floorval = $("#thresholdfloorval").val();
        var ismark = $("#thresholdismark").val();
        var level = $("#thresholdlevel").val();

        $.ajax({
            type: "post",
            url: "addThresholdInfo",
            data: {
                dname: dname,
                dtid: dtid,
                name: name,
                type: type,
                unit: unit,
                standval: standval,
                cellval: cellval,
                floorval: floorval,
                ismark: ismark,
                level: level
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
       // var name = $("#thresholdname").val();
        var type = $("#thresholdtype").val();
        var unit = $("#thresholdunit").val();
      //  var standval = $("#thresholdstandval").val();
        var cellval = $("#thresholdcellval").val();
        var floorval = $("#thresholdfloorval").val();
        var ismark = $("#thresholdismark").val();
        var level = $("#thresholdlevel").val();

        $.ajax({
            type: "post",
            url: "updateOneDeviceThreshold",
            data: {
                dtid: dtid,
                type: type,
                unit: unit,
               // standval: standval,
                cellval: cellval,
                floorval: floorval,
                ismark: ismark,
                level: level
            },
            dataType: "json",
            success: function (data) {
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
    function testOk(){

        var dname = $('#plantform-dname').val();
        var ip = $('#plantform-ip').val();
        var time = $('#plantform-time').val();
        var level = $('#plantform-level').val();
        var status = $('#plantform-status').val();
        var did = $('#plantform-did').val();
        var diname = $('#plantform-diname').val();
        var typename = $('#plantform-typename').val();
        var content = $('#plantform-content').val();
        var ext1 = $('#plantform-ext1').val();
        var ext2 = $('#plantform-ext2').val();
        var ext3 = $('#plantform-ext3').val();

        alert(dname + ip + time + level + status + did + diname + typename + content + ext1 + ext2 + ext3);


        $.ajax({
            type: "post",
            url: "plantformMessage",
            data: {
                dname: dname,
                ip: ip,
                time: time,
                level: level,
                status: status,
                did: did,
                diname: diname,
                typename: typename,
                content: content,
                ext1: ext1,
                ext2: ext2,
                ext3: ext3
            },
            dataType: "json",
            success: function (data) {
                alert(data);
            }
        });

    }

    //告警管理-添加告警内容
    function addAlarm(){

        var alarmlevel = $("#alarmtype-select").val();
        var content = $("#sms-content-input").val();

        if(content == "")
            alert("请填写预警内容");
        else{
            $.ajax({
                type: "post",
                url: "setAlarmUser",
                data: {
                    alarmlevel: alarmlevel,
                    content: content
                },
                dataType: "json",
                success: function (data) {
                }
            });
        }
    }

    //告警管理-选中平台radio
    function showplantformsetting(){
        $('#plantform-div').css('display', 'block');
    }

    //告警管理-选中短信radio
    function hiddenplantformsetting(){
        $('#plantform-div').css('display', 'none');
    }

    //告警管理-查询某个等级对应的告警设置
    function getAlarmLevelSetting(){
        var alarmlevel = $("#alarmtype-select").val();

        $.ajax({
            type: "post",
            url: "getAlarmUserByLevel",
            data: {
                alarmlevel: alarmlevel
            },
            dataType: "json",
            success: function (data) {
                var list = data.alarmlist;

                $("#checkbox-alert-2").removeAttr("checked");
                $("#checkbox-sms-2").removeAttr("checked");
                $("#checkbox-plantform-2").removeAttr("checked");

                if(list[0] == "1")
                    $("#checkbox-alert-2").attr("checked", "checked");
                if(list[1] == "1")
                    $("#checkbox-sms-2").attr("checked", "checked");
                if(list[2] == "1")
                    $("#checkbox-plantform-2").attr("checked", "checked");

                $("#sms-content-input").val(list[3]);
            }
        });
    }

</script>

<!-- 查询组织--省行管理/市行管理/机房管理-->
<script type="text/javascript">

    //获取所有组织结构树状结构
    $('#jstree-structure').jstree({
        "core": {
            "themes": {
                "responsive": false
            },
            "check_callback": true,
            'data': function (obj, callback) {
                var jsonstr = "[]";
                var jsonarray = eval('(' + jsonstr + ')');
                $.ajax({
                    url: "getOrgnizationTree",
                    dataType: "json",
                    async: false,
                    success: function (result) {
                        var arrays = result.allotree;
                        for (var i = 0; i < arrays.length; i++) {
                            var arr = {
                                "id": arrays[i].id,
                                "parent": arrays[i].pid == "0" ? "#" : arrays[i].pid,
                                "text": arrays[i].name
                            };
                            jsonarray.push(arr);
                        }
                    }
                });
                callback.call(this, jsonarray);
            },
        },
        "plugins": ["checkbox"]
    });

    <!-- 添加组织结构-->
    function addOrg() {
        del=window.confirm("确定添加？");
        if(del){
            $('#add-orgnization-modal').css('display', 'block');
        }
    }

    <!-- 添加组织结构-确定添加-->
    function submitAddOrg(){
        var nodeid = $("#nodeidstruct").val();
        var province = $("#orgprovincename").val();
        var city = $("#orgcityname").val();
        var computerroom = $("#orgcomputerroomname").val();

        var nodeidtype = nodeid.length;

        if(nodeidtype == 1){
            if(!province && !city && !computerroom)
                alert("请添加");
            else if(city)
                alert("请在总行下添加省行或机房");
            else if(province && computerroom)
                alert("请分别添加省行或机房");
            else
                addOrgnization(nodeid, province, city, computerroom);
        }

        if(nodeidtype == 3){
            if(!province && !city && !computerroom)
                alert("请添加");
            else if(province)
                alert("请在省行下添加市行或机房");
            else if(city && computerroom)
                alert("请分别添加市行或机房");
            else
                addOrgnization(nodeid, province, city, computerroom);
        }

        if(nodeidtype == 4){
            if(!province && !city && !computerroom)
                alert("请添加");
            else if(!computerroom)
                alert("请在市行下添加机房");
            else if(province || city)
                alert("请在市行下添加机房");
            else
                addOrgnization(nodeid, province, city, computerroom);
        }
    }

    function addOrgnization(nodeid, province, city, computerroom){
            $.ajax({
                type: "post",
                url: "addOrgnizationTree",
                data: {
                    nodeid: nodeid,
                    province: province,
                    city: city,
                    computerroom: computerroom
                },
                dataType: "json",
                success: function (data) {
                    $('#add-orgnization-modal').css('display', 'none');

                    $("#orgprovincename").val("");
                    $("#orgcityname").val("");
                    $("#orgcomputerroomname").val("");
                }
            });
    }

    <!-- 添加组织结构-取消添加-->
    function cancleAddOrg(){
        $('#add-orgnization-modal').css('display', 'none');
    }

    <!-- 修改组织结构div-->
    function updateOrg() {
        del=window.confirm("确定修改？");
        if(del){
            $('#update-orgnization-modal').css('display', 'block');
        }
    }
    <!-- 修改组织结构-确定修改-->
    function submitUpdateOrg(){
        var nodeid = $("#nodeidstruct").val();
        var nname = $("#orgname").val();

        if(nname){
            $.ajax({
                type: "post",
                url: "updateOrgnizationTree",
                data: {
                    nodeid: nodeid,
                    newname: nname
                },
                dataType: "json",
                success: function (data) {
                    $('#update-orgnization-modal').css('display', 'none');
                }
            });
        }
    }
    <!-- 修改组织结构-取消修改-->
    function cancleUpdateOrg(){
        $('#update-orgnization-modal').css('display', 'none');
    }

    <!-- 删除组织结构-->
    function deleteOrg() {
        var tmpNodeOrgid = $("#nodeidstruct").val();
        del=window.confirm("确定删除该省行信息？");

        if(del){
            $.ajax({
                type: "post",
                url: "deleteOrgnizationTree",
                data: {
                    orgid: tmpNodeOrgid
                },
                dataType: "json"
            });
        }
    }
</script>

<!-- 基础信息配置 -->
<script type="text/javascript">
    //确定设备读取、数据上传时效等设定
    function captureSettingOk() {

        var onlineinterval = $('#onlineinterval-input').val();
        var tansentinterval = $('#tansentinterval-input').val();
        var uploadinterval = $('#upload-input').val();

        $.ajax({
            type: "post",
            url: "setCaptureSettingInfo",
            data: {
                onlineinterval: onlineinterval,
                tansentinterval: tansentinterval,
                uploadinterval: uploadinterval
            },
            dataType: "json",
            success: function (data) {
                alert(data);
            }
        });
    }
</script>

<!-- 导入excel到阈值表-->
<script type="text/javascript">
    function getFilePath(input){
        if(input){
            if(window.navigator.userAgent.indexOf("MSIE")>=1){  //如果是IE
                input.select();
                return document.selection.createRange().text;
            }
            else if(window.navigator.userAgent.indexOf("Firefox")>=1){  //如果是火狐
                if(input.files){
                    return input.files.item(0).getAsDataURL();
                }
                return input.value;
            }
            return input.value;
        }
    }

    //点击上传钮
    function deviceThresholdupload() {

        var uploadEventFile = getFilePath(document.getElementById("uploadEventFile"));
        if (uploadEventFile == '') {
            alert("请择Excel,再上传");
        } else if (uploadEventFile.lastIndexOf(".xls") < 0) {//可判断以.xls和.xlsx结尾的excel
            alert("只能上传Excel文件");
        } else {
            $.ajax({
                type: "post",
                url : "uploadThresholdExcelToDB",
                data : {
                    uploadEventFile: uploadEventFile
                },
                success : function(result) {
                    alert(result);
                }
            });
        }
    }
</script>



</body>

</html>