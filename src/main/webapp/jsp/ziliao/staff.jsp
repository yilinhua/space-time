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
 var code = $("#code").val();
 location="staff?name="+name+"&code="+code;
 
}

function shanChu(id){
 if(confirm("确认删除吗?")){
 $.get("staffdelete?id="+id,function(data){
    
      if(data!=0){
        $("#id"+id).remove();
        alert("删除成功");
      }
 })
 
 }
}

function update(id){
  
  location="staffchaId?id="+id;

}
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>货位资料初装
	</div>
	姓名查找:<input type="text" id="name" value="${name}">
	编号查找:<input type="text" id="code" value="${code}">
	<input type="button" value="查询"  onclick="chaXun()">
	<input type="button" value="新增" onclick="addUser()">
	
	<table class="tb" id="top">
		<thead>
			<tr>
				<th>姓名</th>
				<th>编号</th>
				<th>电话</th>
				<th>地址</th>
				<th>性别</th>
				<th>身份证</th>
				<th>部门</th>
				<th>入职时间</th>
				<th>银行卡号</th>
				<th>职位</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="li">
				<tr id="id${li.id}">
				    <td>${li.name}</td>
				    <td>${li.code}</td>
				    <td>${li.phone}</td> 
				    <td>${li.address}</td>
					<td>${li.sex}</td>
					<td>${li.pid}</td>
					<td>${li.departmentID}</td>
					<td>${li.entry_time}</td>
					<td>${li.card_No}</td>
					<td>${li.position}</td>
					<td><a href="javascript:void(0)" onclick="update(${li.id})">修改</a> 
					<a href="javascript:void(0)" onclick="shanChu(${li.id})">删除</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
    <div id="addUser" align="center"
				style="font-weight: bold;background-color: #fff;height:500px;margin-top: 20px">
				<form action="staffInsert" method="post">
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
							<td>姓名：</td>
							<td><input type="text" class="form-control" name="name"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>编号：</td>
							<td><input type="text" class="form-control" name="code"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>电话：</td>
							<td><input type="text" class="form-control" name="phone"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>地址:</td>
							<td><input type="text" class="form-control" name="address"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>性别:</td>
							<td><select name="sex"><option value="1">男</option><option value="0">女</option></select></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>身份证:</td>
							<td><input type="text" class="form-control" name="pid"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>部门:</td>
							<td><select name="departmentID"><option value="1">人事部</option><option value="0">财务部</option></select></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>入职时间:</td>
							<td><input type="date" class="form-control" name="entry_time"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>银行卡号:</td>
							<td><input type="text" class="form-control" name="card_No"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>职位:</td>
							<td><input type="text" class="form-control" name="position"></td>
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
