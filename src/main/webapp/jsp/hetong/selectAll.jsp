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
		当前位置<b class="tip"></b>合同管理<b class="tip"></b>合同查询
	</div>
	<form action="/hetong/selectAll.html" method="post">
		<table class="tbform">
			<thead>
				<tr>
					<td colspan="10" class="auto-style2">&nbsp;请填写查询条件</td>
				</tr>
				<tr>
					<td class="tdl">合同编号</td>
					<td class="detail"><input id="formid"  name="contractNO"
						value="${contractNO}" class="ipt" /></td>
					<td class="tdl"  >合同类型</td>
					<td><select size="1" name="contractType" id="bumen">
							<option value="0"></option>
							<option value="1">单项合同</option>
							<option value="2">双项合同</option>
					</select></td>
					<td class="tdl">合同状态</td>
					<td><select size="1" name="contractStates" id="bumen">
							<option value="0"></option>
							<option value="1">草稿</option>
							<option value="2">会签</option>
							<option value="3">待生效</option>
							<option value="4">履行</option>
							<option value="5">归档</option>
							<option value="6">作废</option>
							<option value="7">变更</option>
					</select></td>
					<td class="tdl">交货方式</td>
					<td><select size="1" name="deliveryType" id="bumen">
							<option value="0"></option>
							<option value="1">送货</option>
							<option value="2">自提</option>
					</select></td>
					<td class="tdl">运输方式</td>
					<td><select size="1" name="transportationType" id="bumen">
							<option value="0"></option>
							<option value="1">航空</option>
							<option value="2">铁路</option>
							<option value="3">公路</option>
					</select></td>
				</tr>
				<tr>

				</tr>
				<tr>
					<td colspan="10" align="right"><input class="btn" id="find"
						type="submit" value="查询" /> <input class="btn" type="button"
						value="清空" /></td>
				</tr>
				<tr>
					<th>合同编号</th>
					<th>合同名称</th>
					<th>合同类型</th>
					<th>合同状态</th>
					<th>签约时间</th>
					<th>承办人</th>
					<th>联系电话</th>
					<th>履行人</th>
					<th>批准文号</th>
					<th>备注</th>
				</tr>
				<c:forEach items="${list}" var="list">
					<tr>
						<th align="center">${list.contractNO}</th>
						<th align="center">${list.contractName}</th>
						<th align="center"><c:if test="${list.contractType==1}">单项合同</c:if>
							<c:if test="${list.contractType==2}">双项合同</c:if></th>
						<th><c:if test="${list.contractStates==1}">草稿</c:if> <c:if
								test="${list.contractStates==2}">会签</c:if> <c:if
								test="${list.contractStates==3}">待生效</c:if> <c:if
								test="${list.contractStates==4}">履行</c:if> <c:if
								test="${list.contractStates==5}">归档</c:if> <c:if
								test="${list.contractStates==6}">作废</c:if> <c:if
								test="${list.contractStates==7}">已变更</c:if></th>
						<th>${list.concludeDate}</th>
						<th>${list.undertakerName}</th>
						<th>${list.phone}</th>
						<th>${list.feasorName}</th>
						<th>${list.approvalNumber}</th>
						<th>${list.remark}</th>
					</tr>
				</c:forEach>
			</thead>
			<tbody>
			</tbody>
		</table>
	</form>
</body>
</html>
