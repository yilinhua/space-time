<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript">
function downloadfile(){
        window.location.href="/UserExcelDownloads";
    }
</script>
<body>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>合同管理<b class="tip"></b>合同详情
	</div>
	<form action="/hetong/shenhe.html" method="post">
		<table class="tbform">
			<thead>
				<c:forEach items="${list}" var="list">
					<tr>
						<td align="center" colspan="10" class="auto-style2">&nbsp;合同名称:&nbsp;${list.contractName}</td>
					</tr>
					<tr>
						<td class="tdl" align="center">签约日期:&nbsp;${list.concludeDate}</td>
						<td class="tdl" align="center">生效日期:&nbsp;${list.takeDate}</td>
						<td class="tdl" align="center">失效日期:&nbsp;${list.efficacyDate}</td>
					</tr>
					<tr>
						<td class="tdl" align="center">合同编号&nbsp;${list.contractNO}</td>
						<td class="tdl" align="center">资金流向&nbsp;<c:if
								test="${list.fundFlow==1}">无支付</c:if> <c:if
								test="${list.fundFlow==2}">付款</c:if> <c:if
								test="${list.fundFlow==3}">收款</c:if></td>
						<td class="tdl" align="center">合同类型:&nbsp;<c:if
								test="${list.contractType==1}">单项合约</c:if> <c:if
								test="${list.contractType==2}">双项合约</c:if></td>
						<td class="tdl" align="center">合同状态:&nbsp;<c:if
								test="${list.contractStates==1}">草稿</c:if> <c:if
								test="${list.contractStates==2}">会签</c:if> <c:if
								test="${list.contractStates==3}">待生效</c:if> <c:if
								test="${list.contractStates==4}">履行</c:if> <c:if
								test="${list.contractStates==5}">归档</c:if> <c:if
								test="${list.contractStates==6}">作废</c:if> <c:if
								test="${list.contractStates==7}">已变更</c:if></td>
					</tr>
					<tr>
						<td class="tdl" align="center">承办人&nbsp;${list.undertakerName}</td>
						<td class="tdl" align="center">联系电话&nbsp;${list.phone}</td>
						<td class="tdl" align="center">履行人&nbsp;${list.feasorName}</td>
						<td class="tdl" align="center">备注&nbsp;${list.remark}</td>
					</tr>
					<tr>
						<td class="tdl" align="center">交货方式&nbsp;<c:if
								test="${list.deliveryType==1}">送货</c:if> <c:if
								test="${list.deliveryType==2}">自提</c:if></td>
						<td class="tdl" align="center">运输方式&nbsp;<c:if
								test="${list.transportationType==1}">航空</c:if> <c:if
								test="${list.transportationType==2}">铁路</c:if> <c:if
								test="${list.transportationType==3}">公路</c:if></td>
						<td class="tdl" align="center">结算方式&nbsp;<c:if
								test="${list.clearingForm==1}">第三方支付</c:if> <c:if
								test="${list.clearingForm==2}">银行转账</c:if></td>
						<td class="tdl" align="center">付款期限&nbsp;<c:if
								test="${list.creditPeriod==1}">单结</c:if> <c:if
								test="${list.creditPeriod==2}">月结</c:if></td>
						<td class="tdl" align="center">运输费、合理损耗负责方&nbsp;<c:if
								test="${list.wastage==1}">甲方</c:if> <c:if
								test="${list.wastage==2}">乙方</c:if></td>
					</tr>
					<tr>
						<td class="tdl" align="center">甲方&nbsp;${list.firstParty}</td>
						<td class="tdl" align="center">法定代表&nbsp;${list.firstPartyName}</td>
						<td class="tdl" align="center">地址&nbsp;${list.firstPartyAddress}</td>
					</tr>
					<tr>
						<td class="tdl" align="center">乙方&nbsp;${list.partyB}</td>
						<td class="tdl" align="center">法定代表&nbsp;${list.partyBName}</td>
						<td class="tdl" align="center">地址&nbsp;${list.partyBAddress}</td>
					</tr>
				</c:forEach>
				<tr>
					<th align="center" colspan="10" class="auto-style2"><input
						type="submit" onclick="downloadfile()" value="导出合同"><a href="#"><input
							type="button" value="返回"></a></th>
				</tr>
			</thead>
		</table>
	</form>
</body>
</html>
