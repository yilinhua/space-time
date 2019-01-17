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
		var number = $("#number").val();
		var type = $("#type").val();
		var state = $("#state").val();
		location = "shelves?number=" + number+"&type="+type+"&state="+state;

	}
	function chaId(id) {
	
	   location="shelveschaId?id="+id+"&pd="+1;
	   
	}
	
	function baoSun(id) {
	
	   location="shelveschaId?id="+id+"&pd="+2;
	   
	}
	
	function shanchu(id){
 if(confirm("确认删除吗?")){
 $.get("shelvesdelete?id="+id,function(data){
     
      if(data!=0){
        $("#id"+id).remove();
        alert("删除成功");
      }
 })
 
 }
}
	
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>库存管理<b class="tip"></b>货架管理
	</div>
	编号查询:
	<input type="text" id="number" value="${number}">
	类型查询:
	
	<select id="type">
							<option value="0" >所有</option>
							<option value="1" <c:if test="${type==1}">selected</c:if>>层架</option>
							<option value="2" <c:if test="${type==2}">selected</c:if>>层格式</option>
							<option value="3" <c:if test="${type==3}">selected</c:if>>抽屉式</option>
							<option value="4" <c:if test="${type==4}">selected</c:if>>橱柜式</option>
							<option value="5" <c:if test="${type==5}">selected</c:if>>调节式</option>
					</select>
	状态查询:
	<select id="state">
							<option value="0" >所有</option>
							<option value="1" <c:if test="${state==1}">selected</c:if>>正常</option>
							<option value="2" <c:if test="${state==2}">selected</c:if>>损坏</option>
					</select>
	<input type="button" value="查询" onclick="chaXun()">
	<input type="button" value="新增" onclick="addUser()">

	<table class="tb" id="top">
		<thead>
			<tr>
				<th>货架类型</th>
				<th>货位号</th>
				<th>货架编号</th>
				<th>货架状态</th>
				<th>货架位置</th>
				<th>检修人</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="li">
				<tr id="id${li.id}">
					<td>
					<c:if test="${li.type=='1'}">层架</c:if>
					<c:if test="${li.type=='2'}">层格式</c:if>
					<c:if test="${li.type=='3'}">抽屉式</c:if>
					<c:if test="${li.type=='4'}">橱柜式</c:if>
					<c:if test="${li.type=='5'}">调节式</c:if>
					
					</td>
					<td>${li.cargo_location_id }</td>
					<td>${li.number}</td>
					<td>
					<c:if test="${li.state=='1'}">正常</c:if>
					<c:if test="${li.state=='2'}">已损坏</c:if></td>
					<td>${li.location}</td>
					<td>${li.maintenance}</td>
					<td><c:if test="${li.state!='1'}">
					<a href="javascript:void(0)" onclick="baoSun(${li.id})">是否报损</a></c:if> 
					<a href="javascript:void(0)" onclick="chaId(${li.id})">修改</a> 
					<a href="javascript:void(0)" onclick="shanchu(${li.id})">删除</a></td>
				</tr>                                          
			</c:forEach>

		</tbody>
	</table>
	<div align="center">
	当前${yeMa}/${total}
	<a href="shelves?ye=1">首页</a>
	<c:if test="${yeMa!=1}"><a href="shelves?ye=${yeMa-1}">上一页</a></c:if>
	<c:if test="${yeMa!=total}"><a href="shelves?ye=${yeMa+1}">下一页</a></c:if>
	<a href="shelves?ye=${total}">末页</a>
 
	</div>  
	<div id="addUser" align="center"
		style="font-weight: bold;background-color: #fff;height:500px;margin-top: 20px">
		<form action="shelvesInsert" method="post">
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
					<td>货架类型：</td>
					<td><select name="type">
						
							<option value="1" >层架</option>
							<option value="2" >层格式</option>
							<option value="3" >抽屉式</option>
							<option value="4" >橱柜式</option>
							<option value="5" >调节式</option>
					</select></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td>货位号：</td>
					<td><input type="text" class="form-control" name="cargo_location_id"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td>货架编号：</td>
					<td><input type="text" class="form-control" name="number"></td>
				</tr>
				<tr>
					<td><input type="hidden" class="form-control" name="state" value="1"><br></td>
				</tr>

				<tr>
					<td>货架位置：</td>
					<td><input type="text" class="form-control"
						name="location"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td>检修人:</td>
					<td><input type="text" class="form-control" name="maintenance"></td>
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
