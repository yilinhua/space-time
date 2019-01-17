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
 location="merchants?name="+name;
 
}

function shanChu(id){
 if(confirm("确认删除吗?")){
 $.get("merchantsdelete?id="+id,function(data){
    
      if(data!=0){
        $("#id"+id).remove();
        alert("删除成功");
      }
 })
 
 }
}

function update(id){
  
  location="merchantschaId?id="+id;

}
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>货位资料初装
	</div>
	姓名查找:<input type="text" id="name" value="${name}">
	<input type="button" value="查询"  onclick="chaXun()">
	<input type="button" value="新增" onclick="addUser()">
	
	<table class="tb" id="top">
		<thead>
			<tr>
				<th>所属公司</th>
				<th>客商类型</th>
				<th>联系人</th>
				<th>邮箱</th>
				<th>电话</th>
				<th>手机号码</th>
				<th>地址</th>
				<th>邮政编码</th>
				<th>支付宝账号</th>
				<th>传真</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="li">
				<tr id="id${li.id}">
				    <td>${li.affiliated_Company}</td>
				    <td>${li.merchants_Type}</td>
				    <td>${li.contact}</td> 
				    <td>${li.mailbox}</td>
					<td>${li.telephone}</td>
					<td>${li.mobile_phone}</td>
					<td>${li.address}</td>
					<td>${li.postal_code}</td>
					<td>${li.alipay}</td>
					<td>${li.fax}</td>
					<td><a href="javascript:void(0)" onclick="update(${li.id})">修改</a> 
					<a href="javascript:void(0)" onclick="shanChu(${li.id})">删除</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
    <div id="addUser" align="center"
				style="font-weight: bold;background-color: #fff;height:500px;margin-top: 20px">
				<form action="merchantsInsert" method="post">
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
							<td>所属公司：</td>
							<td><input type="text" class="form-control" name="affiliated_Company"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>客商类型：</td>
							<td><select name="merchants_Type"><option value="1">零售</option><option value="0">批发</option></select></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>联系人：</td>
							<td><input type="text" class="form-control" name="contact"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>邮箱:</td>
							<td><input type="text" class="form-control" name="mailbox"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>电话:</td>
							<td><input type="text" class="form-control" name="telephone"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>手机号码:</td>
							<td><input type="text" class="form-control" name="mobile_phone"></td>
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
							<td>邮政编码:</td>
							<td><input type="text" class="form-control" name="postal_code"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>支付宝账号:</td>
							<td><input type="text" class="form-control" name="alipay"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>传真:</td>
							<td><input type="text" class="form-control" name="fax"></td>
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
