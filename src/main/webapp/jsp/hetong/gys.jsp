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
		当前位置<b class="tip"></b>合同管理<b class="tip"></b>合同登记
	</div>
	<table class="tbform">
		<thead>
			<tr>
				<td align="center" colspan="6" class="auto-style2">&nbsp;医药合同范本</td>
			</tr>
			<tr>
				<td align="center" class="tdl">合同号</td>
				<td class="detail"><input id="formid" class="ipt" /></td>
				<td align="center" class="tdl">开始时间</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="1992-08-08" /></td>
				<td align="center" class="tdl">结束时间</td>
				<td class="td_detail"><input id="formid" class="ipt" /></td>
			</tr>
			<tr>
				<td align="center" class="tdl">甲方</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="时空供应科技有限公司" /></td>
				<td align="center" class="tdl">乙方</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XX医药批发商" /></td>
			</tr>
			<tr>
				<td align="center" class="tdl">法定代表 姓名(甲方)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="时空供应科技有限公司" /></td>
				<td align="center" class="tdl">法定地址(甲方)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XXXX" /></td>
			</tr>
			<tr>
				<td align="center" class="tdl">法定代表 姓名(乙方)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XX医药供货商" /></td>
				<td align="center" class="tdl">法定地址(乙方)</td>
				<td class="td_detail"><input id="formid" class="ipt">
			</tr>
			<tr>
				<td align="center" class="tdl">批准文号</td>
				<td class="td_detail"><input id="formid" class="ipt" /></td>
			</tr>
		<tbody>
		</tbody>
	</table>
</body>
</html>
