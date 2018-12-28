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

</head>
<script type="text/javascript" src="/Scripts/jquery-1.7.2.js"></script>
<script>
function chaXun(){
 var name = $("#name").val();
 location="cargo?goodsName="+name;
 
}

function shanChu(id){
 if(confirm("确认删除吗?")){
 $.get("delete?id="+id,function(data){
    
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
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>货位资料初装
	</div>
	货位查询:<input type="text" id="name" value="${goodsName}"><input type="button" value="查询"  onclick="chaXun()">
	<div style="">ds</div>
	<table class="tb" id="top">
		<thead>
			<tr>
				<th>编号</th>
				<th>货位名称</th>
				<th>规格型号</th>
				<th>基本单位</th>
				<th>所属仓库</th>
				<th>库位说明</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="li">
				<tr id="id${li.id}">
				    <td>${li.code}</td>
				    <td>${li.goodsname}</td>
				    <td>${li.specification_type }</td> 
				    <td>${li.basic_unit}</td>
					<td>${li.warehouse}</td>
					<td>${li.explain}</td>
					<td><a href="javascript:void(0)" >修改</a> 
					<a href="javascript:void(0)" onclick="shanChu(${li.id})">删除</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>

</html>
