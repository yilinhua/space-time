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

$(document).ready(function(){

    $("#addUser").hide(); 
});
	
	function addUser() {
		$("#addUser").show();
	}
	function addHide(){
	    $("#addUser").hide();
	}

function chaXun(){
 var name = $("#name").val();
 location="cargo?goodsName="+name;
 
}

function shanChu(id){
 if(confirm("确认删除吗?")){
 $.get("cargodelete?id="+id,function(data){
    
      if(data!=0){
        $("#id"+id).remove();
        alert("删除成功");
      }
 })
 
 }
}

function update(id){
  
  location="cargochaId?id="+id;

}
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>货位资料初装
	</div>
	货位查询:<input type="text" id="name" value="${goodsName}"><input type="button" value="查询"  onclick="chaXun()">
	<input type="button" value="新增" onclick="addUser()">
	
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
					<td><a href="javascript:void(0)" onclick="update(${li.id})">修改</a> 
					<a href="javascript:void(0)" onclick="shanChu(${li.id})">删除</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
    <div id="addUser" align="center"
				style="font-weight: bold;background-color: #fff;height:500px;margin-top: 20px">
				<form action="huoWeiInsert" method="post">
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
							<td>货位编号：</td>
							<td><input type="text" class="form-control" name="code"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>货位名称：</td>
							<td><input type="text" class="form-control" name="goodsname"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>规格型号：</td>
							<td><input type="text" class="form-control" name="specification_type"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>基本单位:</td>
							<td><input type="text" class="form-control" name="basic_unit"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>所属仓库：</td>
							<td><select class="form-control select2"
								style="width: 100%;" name="warehouse">
								
										<option>总部仓库01</option>
									<option>总部仓库02</option>
							</select></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>库位说明:</td>
							<td><input type="text" class="form-control" name="explain"></td>
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
