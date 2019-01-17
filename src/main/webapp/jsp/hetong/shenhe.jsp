<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		当前位置<b class="tip"></b>合同管理<b class="tip"></b>合同审核
	</div>

	<form action="/hetong/shenhe.html" method="post">
		<table class="tbform">
			<thead>
				<tr >
					<td colspan="10" class="auto-style2">&nbsp;合同审核</td>
				</tr>
				<tr>
					<td class="tdl">资金流出</td>
					<td><select size="1" name="fundFlow" id="fundFlow">
							<option value="0">请选择</option>
							<option value="1"<c:if test="${fundFlow==2}">selected</c:if>>无支付</option>
							<option value="2"<c:if test="${fundFlow==2}">selected</c:if>>付款</option>
							<option value="3"<c:if test="${fundFlow==3}">selected</c:if>>收款</option>
					</select></td>
					<td colspan="10" align="right"><input class="btn" id="find"
						type="submit" value="查询" /></td>
				</tr>
				<tr>
					<th>合同编号</th>
					<th>合同类型</th>
					<th>合同状态</th>
					<th>资金流向</th>
					<th>承办人</th>
					<th>履行人</th>
					<th>批准文号</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${list}" var="list">
					<tr align="center">
						<th>${list.contractNO}</th>
						<th align="center"><c:if test="${list.contractType==1}">单项合同</c:if>
							<c:if test="${list.contractType==2}">双项合同</c:if></th>
						<th><c:if test="${list.contractStates==1}">草稿</c:if> <c:if
								test="${list.contractStates==2}">会签</c:if> <c:if
								test="${list.contractStates==3}">待生效</c:if> <c:if
								test="${list.contractStates==4}">履行</c:if> <c:if
								test="${list.contractStates==5}">归档</c:if> <c:if
								test="${list.contractStates==6}">作废</c:if> <c:if
								test="${list.contractStates==7}">已变更</c:if></th>
						<th><c:if test="${list.fundFlow==1}">无支付</c:if> <c:if
								test="${list.fundFlow==2}">付款</c:if> <c:if
								test="${list.fundFlow==3}">收款</c:if></th>
						<th>${list.undertakerName}</th>
						<th>${list.feasorName}</th>
						<th>${list.approvalNumber}</th>
						<th ><a href="/hetong/sh?id=${list.id}"><input
								type="button" value="审核"></a>
								<a href="hetong/shenhe.html"><input
								type="button" value="不通过"></a>
								</th>
					</tr>
				</c:forEach>
			</thead>
		</table>
	</form>
</body>
</html>
