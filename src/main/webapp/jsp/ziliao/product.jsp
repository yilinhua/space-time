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
 location="product?TradeName="+name;
 
}

function shanChu(id){
 if(confirm("确认删除吗?")){
 $.get("productdelete?id="+id,function(data){
    
      if(data!=0){
        $("#id"+id).remove();
        alert("删除成功");
      }
 })
 
 }
}

function update(id){
  
  location="productchaId?id="+id;

}
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>商品资料初装
	</div>
	货位查询:<input type="text" id="name" value="${TradeName}"><input type="button" value="查询"  onclick="chaXun()">
	<input type="button" value="新增" onclick="addUser()">
	
	<table class="tb" id="top">
		<thead>
			<tr>
				<th>商品编号</th>
				<th>单位</th>
				<th>商品名称</th>
				<th>商品规格</th>
				<th>生产厂家</th>
				<th>批准文号</th>
				<th>生产时间</th>
				<th>过期时间</th>
				<th>单价</th>
				<th>数量</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="li">
				<tr id="id${li.id}">
				    <td>${li.code}</td>
				    <td>${li.company}</td>
				    <td>${li.trade_name }</td> 
				    <td>${li.specifications}</td>
					<td>${li.manufacturer}</td>
					<td>${li.approval_number}</td>
					<td>${li.production_time}</td>
					<td>${li.expiration_date}</td>
					<td>${li.price}</td>
					<td>${li.qty}</td>
					<td><a href="javascript:void(0)" onclick="update(${li.id})">修改</a> 
					<a href="javascript:void(0)" onclick="shanChu(${li.id})">删除</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
    <div id="addUser" align="center"
				style="font-weight: bold;background-color: #fff;height:500px;margin-top: 20px">
				<form action="productInsert" method="post">
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
							<td>商品编号：</td>
							<td><input type="text" class="form-control" name="code"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>单位：</td>
							<td><input type="text" class="form-control" name="company"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>商品名称：</td>
							<td><input type="text" class="form-control" name="trade_name"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>商品规格:</td>
							<td><input type="text" class="form-control" name="specifications"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>生产厂家:</td>
							<td><input type="text" class="form-control" name="manufacturer"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>批准文号:</td>
							<td><input type="text" class="form-control" name="approval_number"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>生产时间:</td>
							<td><input type="date" class="form-control" name="production_time"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>过期时间:</td>
							<td><input type="date" class="form-control" name="expiration_date"></td>
							
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
						
						<tr>
							<td>单价:</td>
							<td><input type="text" class="form-control" name="price"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>数量:</td>
							<td><input type="text" class="form-control" name="qty"></td>
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
