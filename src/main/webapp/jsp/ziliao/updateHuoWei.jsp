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


function update(id){
  
  location="chaId?id="+id;

}
</script>

<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>货位资料修改
	</div>
	
<form action="update" method="post">
				<table align="center">
					<tr>
						<td>货位名称：</td>
						<td><input type="text" class="form-control" name="goodsname" value="${ca.goodsname}">
						<input type="hidden" name="id" value="${ca.id}">
						</td>
					</tr>
										<tr>
						<td><br></td>
					</tr>
					<tr>
							<td>货位编号：</td>
							<td><input type="text" class="form-control" name="code" value="${ca.code}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
					
					<tr>
						<td>规格型号：</td>
						<td><input type="text" class="form-control" name="specification_type" value="${ca.specification_type}"></td>
					</tr>
										<tr>
						<td><br></td>
					</tr>
					<tr>
						<td>基本单位：</td>
						<td><input type="text" class="form-control"  name="basic_unit" value="${ca.basic_unit}"></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td>所属仓库：</td>
						<td><select class="form-control select2" style="width: 100%;" name="warehouse" >
					
								<option>总部仓库01</option>
									<option>总部仓库02</option>
						</select></td>
					</tr><tr>
						<td><br></td>
					</tr>
					
					<tr>
							<td>库位说明:</td>
							<td><input type="text" class="form-control" name="explain" value="${ca.explain}"></td>
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
    
</body>

</html>
