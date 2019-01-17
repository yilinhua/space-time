<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
<link rel="stylesheet" type="text/css" href="Styles/base.css" />
<link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
<script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
<script type="text/javascript"
	src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="Scripts/index.js"></script>
  </head>
  
  <script src="js/echarts.min.js"></script>
  <script type="text/javascript">
	$(function() {
		var myBar = echarts.init(document.getElementById("bar"));
		var myPie = echarts.init(document.getElementById("pie"));

		myBar.setOption({
			title : {
				text : "库存情况",
			},
			tooltip : {},
			legend : {
				data : [ "仓库" ]
			},
			xAxis : {
				data : []
			},
			yAxis : {
			},
			series : [ {
				name : "库存",
				type : "bar",
				data : ["库存"]
			} ]
		});
		myPie.setOption({
			tooltip : {
				formatter : "{a} <br/>{b}:{c}({d}%)"
			},
			legend : {
				orient : 'vertical', //horizontal横  vertical竖
				x : "left",
				data : []
			},
			series : [ {
				name : '库存',
				type : 'pie',
				radius : '55%',
				data : []
			} ]
		})

		myBar.showLoading();
		myPie.showLoading();

	})

	function jiazai() {
		var myBar = echarts.init(document.getElementById("bar"));
		var myPie = echarts.init(document.getElementById("pie"));
		var type = []; //商品类型
		var number = []; //销售量
		$.ajax({
			type : "post",
			url : "huowut",
			dataType : "json", //返回数据形式为json
			success : function(result) {
				if (result) {
					for (var i = 0; i < result.length; i++) {
						type.push(result[i].type);
						number.push(result[i].number);
					}
				}
				myBar.hideLoading();
				myPie.hideLoading();
				myBar.setOption({
					xAxis : {
						data : type
					},
					series : [ {
						data : number
					} ]
				})
				myPie.setOption({
					legend : {
						orient : 'vertical', //horizontal横  vertical竖
						x : "left",
						data : (function() {
							return type;
						})()
					},
					series : [ {
						data : (function() {
							var res = [];
							for (var i = 0; i < result.length; i++) {
								res.push({
								name:result[i].type,
								value:result[i].number,
								});
							}
							return res;
						})()
					} ]
				})
			}
		});
	}
</script>
  <body>
 
  <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
  
   <div id="bar" style="width: 600px;height: 400px"></div>
	<div id="pie" style="width: 600px;height: 400px"></div>
	<input type="button" value="加载数据" onclick="jiazai();">
  </body>
</html>
