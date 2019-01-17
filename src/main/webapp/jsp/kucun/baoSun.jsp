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



</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>报损物品<b class="tip"></b>
	</div>
	
	
	 <c:if test="${update=='tijiao'}">
	<form action="causticInsert" method="post">
				
				<table align="center">
					<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>物品类型：</td>
							<td>
							<select name="type">
							<option value="1">货架</option>
							</select></td>
							<td><input type="hidden" name="id" value="${ca.id}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>物品编号：</td>
							<td><input type="text" class="form-control" name="shelves_number"  value="${ca.number}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>报损时间：</td>
							<td><input type="date" class="form-control" name="recording_time" ></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>报损人:</td>
							<td><input type="text" class="form-control" name="Reported_loss_name" value="${ca.maintenance}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>数量:</td>
							<td><input type="text" class="form-control" name="number" value="1"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>原因:</td>
							<td><input type="text" class="form-control" name="reason" ></td>
						</tr>
						
						<tr>
							<td><br></td>
						</tr>
								
					<tr>
						<td><input type="submit"
							class="btn btn-block btn-outline-secondary" value="保存"></td>
						<td><input type="button" 
							class="btn btn-block btn-outline-success" value="返回"
							onclick="history.back()"></td>
					</tr>
				</table>
				</form>                           
	</c:if>
</body>

</html>
