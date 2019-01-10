<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'cargo.jsp' starting page</title>



<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css" href="../Styles/formui.css" />
<link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
<link rel="stylesheet" type="text/css" href="../Styles/base.css" />
<script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
<script type="text/javascript"
	src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />


<link rel="stylesheet" href="adminlte.min.css">



</head>
<script type="text/javascript" src="/Scripts/jquery-1.7.2.js"></script>
<script>

	$(document).ready(function() {

		$("#addUser").hide();
	});

	function addUser() {
		$("#addUser").show();
	}
	function addHide() {
		$("#addUser").hide();
	}

	function chaXun() {
		var check_type = $("#check_type").val();
		var Drug_type = $("#Drug_type").val();
		var start_time = $("#start_time").val();
		var end_time = $("#end_time").val();
		location = "check?check_type=" + check_type+"&Drug_type="+Drug_type+"&start_time="+start_time+"&end_time="+end_time;

	}
	function fenlei() {
		var name = $("[name=Drug_type]").val();
		if (name == 0) {
			$("#yao").html("");
			$("#ys").html("");
		} else {
			$.get("fenlei?Drugs_type=" + name, function(data) {
				$("#yao").html(data);
				$("#ys").html("<td><br></td>");
			});

		}
	}
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>库存管理<b class="tip"></b>盘点管理
	</div>
	商品查询:
	<input type="text" id="check_type" value="${check_type}">
	类型查询:
	
	<select id="Drug_type" onchange="fenlei()">
							<option value="0" >所有</option>
							<option value="1" <c:if test="${drug_type==1}">selected</c:if>>中药</option>
							<option value="2" <c:if test="${drug_type==2}">selected</c:if>>西药</option>
					</select>
	日期查询:
	<input type="date" id="start_time" value="${start_time}">到
	<input type="date" id="end_time" value="${end_time}">
	<input type="button" value="查询" onclick="chaXun()">
	<input type="button" value="新增" onclick="addUser()">

	<table class="tb" id="top">
		<thead>
			<tr>
				<th>盘点时间</th>
				<th>盘点商品</th>
				<th>盘点人</th>
				<th>实际库存</th>
				<th>系统库存</th>
				<th>单价</th>
				<th>规格</th>
				<th>盘点类型</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="li">
				<tr id="id${li.id}">
					<td>${li.check_time}</td>
					<td><c:if test="${li.check_type=='0'}">所有商品</c:if>
					    <c:if test="${li.check_type!='0'}">${li.check_type}</c:if>
					</td>
					<td>${li.check_name }</td>
					<td>${li.practical_repertory}</td>
					<td>${li.system_repertory}</td>
					<td>${li.price}</td>
					<td>${li.specification}</td>
					<td><c:if test="${li.drug_type==0}">所有</c:if> <c:if
							test="${li.drug_type==1}">中药</c:if> <c:if
							test="${li.drug_type==2}">西药</c:if></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<div id="addUser" align="center"
		style="font-weight: bold;background-color: #fff;height:500px;margin-top: 20px">
		<form action="checkInsert" method="post">
			<table align="center">
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button"
						class="btn btn-block btn-outline-secondary" value="取消"
						onclick="addHide()"></td>
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td>盘点时间：</td>
					<td><input type="date" class="form-control" name="check_time"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td>盘点商品：</td>
					<td><select name="Drug_type" onchange="fenlei()">
							<option value="0">所有</option>
							<option value="1">中药</option>
							<option value="2">西药</option>
					</select></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>

				<tr id="yao">

				</tr>
				<tr id="ys">

				</tr>

				<tr>
					<td>盘点人：</td>
					<td><input type="text" class="form-control" name="check_name"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>实际库存:</td>
					<td><input type="text" class="form-control"
						name="practical_repertory"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td>系统库存：</td>
					<td><input type="text" class="form-control"
						name="system_repertory"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>单价:</td>
					<td><input type="text" class="form-control" name="price"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>规格:</td>
					<td><input type="text" class="form-control"
						name="specification"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit"
						class="btn btn-block btn-outline-secondary" value="添加"></td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>
