<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
<link rel="stylesheet" type="text/css" href="../Styles/base.css" />
<script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
<script type="text/javascript"
	src="../Scripts/ChurAlert.min.js?skin=blue"></script>
<script type="text/javascript"
	src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
<script type="text/javascript" src="../Scripts/chur-alert.1.0.js"></script>
<script type="text/javascript" src="../Scripts/tb.js"></script>
<link rel="stylesheet" type="text/css"
	href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
<link rel="stylesheet" type="text/css" href="../Styles/formui.css" />

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>集团报表<b class="tip"></b>数据查询
	</div>
	<table class="tbform">
		<tr>
			<td align="center" class="tdl">入库记录</td>
			<td align="center" class="tdl"><a href="/selectList"><input
					type="button" value="选择"></a></td>
		</tr>
		<tr>
			<td align="center" class="tdl">出库记录</td>
			<td align="center" class="tdl"><a href="/selectList"><input
					type="button" value="选择"></a></td>
		</tr>
		<tr>
			<td align="center" class="tdl">货位查询</td>
			<td align="center" class="tdl"><a href="/cargo"><input
					type="button" value="选择"></a></td>
		</tr>
		<tr>
			<td align="center" class="tdl">仓储盘点</td>
			<td align="center" class="tdl"><a href="/check"><input
					type="button" value="选择"></a></td>
		</tr>
	</table>
</body>
</html>
