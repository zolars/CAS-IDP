<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

	<div id="china-map"></div>

	<!-- Javascript Libraries -->
	<!-- jQuery -->
	<script src="js/jquery-3.3.1.js"></script>

	<!-- echarts  -->
	<script src="js/echarts.js"></script>

	<!-- echarts.china  -->
	<script src="js/china.js"></script>

	<script type="text/javascript">

        var m = new Map();
       // m.set("台湾分行", [1,2,3,4,1,1,1,1]);
       // m.set("河北分行", 0);


        //获取各个省的评估等级+电能质量事件数量
        $.ajax({
            type: "post",
            url: "getChinaMapData",
            dataType: "json",
            success: function (data) {
                alert(data);



                m.set("台湾分行", [1,2,3,4,1,1,1,1]);
                m.set("河北分行", 0);


            }
        });


            var myChart = echarts.init(document.getElementById("china-map"));  
            var option = {
                tooltip: {

                },
                visualMap: {
                    left: "right",
                        min: 500000,
                        max: 38000000,
                        inRange: {
                        color: ["#313695", "#4575b4", "#74add1", "#abd9e9", "#e0f3f8", "#ffffbf", "#fee090", "#fdae61", "#f46d43", "#d73027", "#a50026"]
                    },
                    text:["High","Low"],           // 文本，默认为数值文本
                        calculable: true
                },
                toolbox: {
                    show: true,
                        //orient: "vertical",
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
                        name: "事件描述",
                        type: "map",
                        roam: true,
                        map: "china",
                        itemStyle:{
                            emphasis:{label:{show:true}}
                        },
                        // 文本位置修正
                        textFixed: {
                            Alaska: [20, -20]
                        },
                        data:[
                            {name: "台湾", value: m.get("台湾分行")},
                            {name: "河北", value: m.get("河北分行")},
                            {name: "山西", value: 3},
                            {name: "内蒙古", value: 40}, //400
                            {name: "辽宁", value: 41430}, //
                            {name: "吉林", value: 5187582}, //
                            {name: "黑龙江", value: 3590347}, //
                            {name: "江苏", value: 917092}, //
                            {name: "浙江", value: 632323}, //
                            {name: "安徽", value: 19317568}, //
                            {name: "福建", value: 9919945}, //
                            {name: "江西", value: 1392313}, //
                            {name: "山东", value: 1595728}, //
                            {name: "河南", value: 12875255}, //
                            {name: "湖北", value: 6537334}, //
                            {name: "湖南", value: 3074186}, //
                            {name: "广东", value: 2885905}, //
                            {name: "广西", value: 3380415}, //
                            {name: "海南", value: 4380415}, //
                            {name: "四川", value: 4601893}, //
                            {name: "贵州", value: 1329192}, //
                            {name: "云南", value: 5884563}, //
                            {name: "西藏", value: 6646144}, //
                            {name: "陕西", value: 9883360}, //
                            {name: "甘肃", value: 5379139}, //
                            {name: "青海", value: 2984926}, //
                            {name: "宁夏", value: 6021988}, //
                            {name: "新疆", value: 1005141}, //
                            {name: "北京", value: 1855525}, //
                            {name: "天津", value: 2758931}, //
                            {name: "上海", value: 1320718}, //
                            {name: "重庆", value: 8864590}, //
                            {name: "香港", value: 2085538}, //
                            {name: "澳门", value: 19570261} //
                        ]

                    /*    data:[
                            {name: "台湾", value: 10}, //
                            {name: "河北", value: 20}, //
                            {name: "山西", value: 30}, //
                            {name: "内蒙古", value: 40}, //400
                            {name: "辽宁", value: 41430}, //
                            {name: "吉林", value: 5187582}, //
                            {name: "黑龙江", value: 3590347}, //
                            {name: "江苏", value: 917092}, //
                            {name: "浙江", value: 632323}, //
                            {name: "安徽", value: 19317568}, //
                            {name: "福建", value: 9919945}, //
                            {name: "江西", value: 1392313}, //
                            {name: "山东", value: 1595728}, //
                            {name: "河南", value: 12875255}, //
                            {name: "湖北", value: 6537334}, //
                            {name: "湖南", value: 3074186}, //
                            {name: "广东", value: 2885905}, //
                            {name: "广西", value: 3380415}, //
                            {name: "海南", value: 4380415}, //
                            {name: "四川", value: 4601893}, //
                            {name: "贵州", value: 1329192}, //
                            {name: "云南", value: 5884563}, //
                            {name: "西藏", value: 6646144}, //
                            {name: "陕西", value: 9883360}, //
                            {name: "甘肃", value: 5379139}, //
                            {name: "青海", value: 2984926}, //
                            {name: "宁夏", value: 6021988}, //
                            {name: "新疆", value: 1005141}, //
                            {name: "北京", value: 1855525}, //
                            {name: "天津", value: 2758931}, //
                            {name: "上海", value: 1320718}, //
                            {name: "重庆", value: 8864590}, //
                            {name: "香港", value: 2085538}, //
                            {name: "澳门", value: 19570261} //
                        ]*/
                    }
                ],
            };
              
            myChart.setOption(option);
            myChart.on("mouseover", function (params) {
                var dataIndex = params.dataIndex;
              //  console.log(params);
            });

            myChart.on("click", function (param){
				//if(province = "河南")
                //   top.location.href = "province.jsp";
				//else(province = "山东")
                /*top.location.href = "/province.jsp";*/
                //var province = param.selected;
                /*var urlArr = ['http://www.baidu.com','http://http://www.cnblogs.com/sapho'];
                for (var p in province) {
                    if (province[p]) {
                       switch(p){
                            case "山东":
                                location.href = urlArr[0];
                                break;
                            case "内蒙古":
                                top.location.href = "http://www.baidu.com";
                                break;
                            default:
                                break;
                       }

                    }
                }*/

                var province = param.name;
                top.location.href = "/province.jsp?prov="+province;

            });

        </script>

</body>
</html>
