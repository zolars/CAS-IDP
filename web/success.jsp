<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>IDP数据中心动力管控系统</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta http-equiv="X-UA-Compatible" content="IE=EDGE">


    <style>
        #china-map {
            width: 1000px;
            height: 1000px;
            margin: auto;
        }
    </style>

</head>

<body>

<!--登陆认证拦截-->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/jquery.cookie.js"></script>

<!--登陆认证拦截-->
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

<div id="china-map"></div>

<!-- Javascript Libraries -->

<!-- echarts  -->
<script src="js/echarts.js"></script>

<!-- echarts.china  -->
<script src="js/china.js"></script>

<script>

    //获取各个省的评估等级+电能质量事件数量
    $.ajax({
        type: "post",
        url: "getChinaMapData",
        dataType: "json",
        success: function (data) {
            //[1,2,3,4,1,1,1,1,3]:event1, event2,event3, event4, alarm1, alram2, alarm3, alartm4, degree(R:1,Y:2,G:3)

            var obj = eval('(' + data + ')');
            var list = obj.allplist;

            var myChart = echarts.init(document.getElementById("china-map"));
            var option = {
                tooltip: {},
                visualMap: {
                    left: "right",
                    min: 1,
                    max: 3,
                    inRange: {
                        color: ["#00FF00", "#FFFF00", "#FF0000"]
                    },
                    text: ["H", "L"],
                    calculable: true
                },
                toolbox: {
                    show: true,
                    left: "left",
                    top: "top",
                    feature: {
                        dataView: {readOnly: false},
                        restore: {},
                        saveAsImage: {}
                    }
                },
                series: [
                    {
                        name: "描述",
                        type: "map",
                        roam: true,
                        map: "china",
                        itemStyle: {
                            emphasis: {label: {show: true}}
                        },
                        // 文本位置修正
                        textFixed: {
                            Alaska: [20, -20]
                        },
                        data: [
                            {name: "台湾", value: list["台湾分行"][8]},
                            {name: "河北", value: list["河北分行"][8]},
                            {name: "山西", value: list["山西分行"][8]},
                            {name: "内蒙古", value: list["内蒙古分行"][8]},
                            {name: "辽宁", value: list["辽宁分行"][8]},
                            {name: "吉林", value: list["吉林分行"][8]},
                            {name: "黑龙江", value: list["黑龙江分行"][8]},
                            {name: "江苏", value: list["江苏分行"][8]},
                            {name: "浙江", value: list["浙江分行"][8]},
                            {name: "安徽", value: list["安徽分行"][8]},
                            {name: "福建", value: list["福建分行"][8]},
                            {name: "江西", value: list["江西分行"][8]},
                            {name: "山东", value: list["山东分行"][8]},
                            {name: "河南", value: list["河南分行"][8]},
                            {name: "湖北", value: list["湖北分行"][8]},
                            {name: "湖南", value: list["湖南分行"][8]},
                            {name: "广东", value: list["广东分行"][8]},
                            {name: "广西", value: list["广西分行"][8]},
                            {name: "海南", value: list["海南分行"][8]},
                            {name: "四川", value: list["四川分行"][8]},
                            {name: "贵州", value: list["贵州分行"][8]},
                            {name: "云南", value: list["云南分行"][8]},
                            {name: "西藏", value: list["西藏分行"][8]},
                            {name: "陕西", value: list["陕西分行"][8]},
                            {name: "甘肃", value: list["甘肃分行"][8]},
                            {name: "青海", value: list["青海分行"][8]},
                            {name: "宁夏", value: list["宁夏分行"][8]},
                            {name: "新疆", value: list["新疆分行"][8]},
                            {name: "北京", value: list["北京分行"][8]},
                            {name: "天津", value: list["天津分行"][8]},
                            {name: "上海", value: list["上海分行"][8]},
                            {name: "重庆", value: list["重庆分行"][8]},
                            {name: "香港", value: list["香港分行"][8]},
                            {name: "澳门", value: list["澳门分行"][8]}
                        ]
                    }
                ],
            };

            myChart.setOption(option);
            myChart.on("mouseover", function (params) {
                var dataIndex = params.dataIndex;
            });

            myChart.on("click", function (param) {
                var province = param.name;
                $.cookie('province_name', province, {expires: 1, path: '/'});
                top.location.href = "/province.jsp?prov=" + province;
            });
        }
    });
</script>

</body>
</html>
