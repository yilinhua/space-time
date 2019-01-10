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
<script type="text/javascript">
	function yan() {
		var contractName = $("input[name='contractName']").val(); //合同名称
		var contractNO = $("input[name='contractNO']").val(); //合同编号
		var contractType = $("#contractType").val(); //合同类型
		var concludeDate = $("input[name='concludeDate']").val(); //签约时间
		var takeDate = $("input[name='takeDate']").val(); //生效时间
		var efficacyDate = $("input[name='efficacyDate']").val(); //失效时间
		var firstParty = $("input[name='firstParty']").val(); //甲方
		var partyB = $("input[name='partyB']").val(); //乙方
		var firstPartyName = $("input[name='firstPartyName']").val(); //甲方法定人
		var firstPartyAddress = $("input[name='firstPartyAddress']").val(); //甲方地址
		var partyBName = $("input[name='partyBName']").val(); //乙方法定人
		var partyBAddress = $("input[name='partyBAddress']").val(); //乙方地址
		var firstPartyName = $("input[name='firstPartyName']").val(); //乙方地址
		var undertakerName = $("input[name='undertakerName']").val(); //承办人
		var phone = $("input[name='phone']").val(); //电话
		var feasorName = $("input[name='feasorName']").val(); //履行人姓名
		var deliveryType = $("#deliveryType").val(); //交货方式
		var transportationType = $("#transportationType").val(); //运输方式
		var approvalNumber = $("input[name='approvalNumber']").val(); //批准文号
		var wastage = $("#wastage").val(); //运输费、合理损耗负责方
		var clearingForm = $("#clearingForm").val(); //结算方式
		var creditPeriod = $("#creditPeriod").val(); //付款期限
		var fundFlow = $("#fundFlow").val(); //资金流向
		if (contractName == "") {
			alert("合同名称不能为空");
			return false;
		} else if (contractNO == "") {
			alert("合同编号不能为空");
			return false;
		} else if (contractType == 0) {
			alert("请选择合同类型");
			return false;
		} else if (concludeDate == "") {
			alert("请输入签约时间");
			return false;
		} else if (takeDate == "") {
			alert("请输入生效时间");
			return false;
		} else if (efficacyDate == "") {
			alert("请输入失效时间");
			return false;
		} else if (firstParty == "") {
			alert("请输入甲方");
			return false;
		} else if (partyB == "") {
			alert("请输入乙方");
			return false;
		} else if (firstPartyName == "") {
			alert("请输入甲方法定人");
			return false;
		} else if (firstPartyAddress == "") {
			alert("请输入甲方地址");
			return false;
		} else if (partyBName == "") {
			alert("请输入乙方法定人")
			return false;
		} else if (partyBAddress == "") {
			alert("请输入乙方地址");
			return false;
		} else if (undertakerName == "") {
			alert("请输入承办人");
			return false;
		} else if (!(/^1[34578]\d{9}$/.test(phone))) {
			alert("手机号码有误，请重填");
			return false;
		} else if (feasorName == "") {
			alert("请输入履行人");
			return false;
		} else if (deliveryType == 0) {
			alert("请选择交货方式");
			return false;
		} else if (transportationType == 0) {
			alert("请选择运输方式");
			return false;
		} else if (approvalNumber == "") {
			alert("请输入批准文号");
			return false;
		} else if (wastage == 0) {
			alert("请选择损耗负责方");
			return false;
		} else if (clearingForm == 0) {
			alert("请选择付款方式");
			return false;
		} else if (creditPeriod == 0) {
			alert("请选择付款期限");
			return false;
		} else if (fundFlow == 0) {
			alert("请选择资金流向");
		}

		return true;
	}
</script>
<body>
	<div class="alert alert-info">
		当前位置<b class="tip"></b>合同管理<b class="tip"></b>合同登记
	</div>
	<form action="/hetong/add" method="post" onsubmit="return yan()">
		<table class="tbform">
			<thead>
				<tr>
					<td align="center" colspan="6" class="auto-style2">&nbsp;医药合同范本</td>
				</tr>
			<tbody>
				<tr>
					<td align="center" class="tdl">合同名称</td>
					<td class="td_detail"><input id="formid" class="ipt"
						name="contractName" id="contractName" /></td>
					<td align="center" class="tdl">合同编号</td>
					<td class="detail"><input id="contractNO" class="ipt"
						name="contractNO" /></td>
					<td align="center" class="tdl">合同类型</td>
					<td align="center"><select size="1" name="contractType"
						id="contractType">
							<option value="0">请选择</option>
							<option value="1">单项合同</option>
							<option value="2">双项合同</option>
					</select></td>
				</tr>
				<tr>
					<td align="center" class="tdl">签约时间</td>
					<td class="td_detail"><input type="date" id="concludeDate"
						class="ipt" name="concludeDate" /></td>
					<td align="center" class="tdl">生效时间</td>
					<td class="td_detail"><input id="formid" type="date"
						name="takeDate" class="takeDate" /></td>
					<td align="center" class="tdl">失效时间</td>
					<td class="td_detail"><input id="efficacyDate"
						name="efficacyDate" type="date" class="ipt" /></td>
				</tr>
				<tr>
					<td align="center" class="tdl">甲方(供货商)</td>
					<td class="td_detail"><input id="firstParty" class="ipt"
						name="firstParty" /></td>
					<td align="center" class="tdl">乙方(批发商)</td>
					<td class="td_detail"><input id="partyB" class="ipt"
						name="partyB" /></td>
				</tr>
				<tr>
					<td align="center" class="tdl">法定代表(甲方)</td>
					<td class="td_detail"><input id="firstPartyName" class="ipt"
						name="firstPartyName" /></td>
					<td align="center" class="tdl">法定地址(甲方)</td>
					<td class="td_detail"><input id="firstPartyAddress"
						class="ipt" name="firstPartyAddress" /></td>
				</tr>
				<tr>
					<td align="center" class="tdl">法定代表 姓名(乙方)</td>
					<td class="td_detail"><input id="partyBName" class="ipt"
						name="partyBName" /></td>
					<td align="center" class="tdl">法定地址(乙方)</td>
					<td class="td_detail"><input id="partyBAddress"
						name="partyBAddress" class="ipt">
				</tr>
				<tr>
					<td align="center" class="tdl">承办人姓名</td>
					<td class="td_detail"><input id="undertakerName"
						name="undertakerName" class="ipt">
					<td align="center" class="tdl">联系电话</td>
					<td class="td_detail"><input id="phone" class="ipt"
						name="phone">
					<td align="center" class="tdl">履行人姓名</td>
					<td class="td_detail"><input id="feasorName" class="ipt"
						name="feasorName">
				</tr>
				<tr>
					<td align="center" class="tdl">交货方式</td>
					<td align="center"><select size="1" name="deliveryType"
						id="deliveryType">
							<option value="0">请选择</option>
							<option value="1">送货</option>
							<option value="2">自提</option>
					</select></td>
					<td align="center" class="tdl">运输方式</td>
					<td align="center"><select size="1" name="transportationType"
						id="transportationType">
							<option value="0">请选择</option>
							<option value="1">航空</option>
							<option value="2">铁路</option>
							<option value="3">公路</option>
					</select></td>
					<td align="center" class="tdl">批准文号</td>
					<td class="td_detail"><input id="approvalNumber" class="ipt"
						name="approvalNumber" /></td>
				</tr>
				<tr>
					<td align="center" class="tdl">运输费、合理损耗负责方</td>
					<td align="center"><select size="1" name="wastage"
						id="wastage">
							<option value="0">请选择</option>
							<option value="1">甲方</option>
							<option value="2">乙方</option>
							<option value="3">其他</option>
					</select></td>
					<td align="center" class="tdl">结算方式</td>
					<td align="center"><select size="1" name="clearingForm"
						id="clearingForm">
							<option value="0">请选择</option>
							<option value="1">第三方支付</option>
							<option value="2">银行转账</option>
							<option value="3">其他</option>
					</select></td>
					<td align="center" class="tdl">付款期限</td>
					<td align="center"><select size="1" name="creditPeriod"
						id="creditPeriod">
							<option value="0">请选择</option>
							<option value="1">单结</option>
							<option value="2">月结</option>
							<option value="3">其他</option>
					</select></td>
				</tr>
				<tr>
				<td align="center" class="tdl">资金流向</td>
					<td align="center"><select size="1" name="fundFlow"
						id="fundFlow">
							<option value="0">请选择</option>
							<option value="1">无支付</option>
							<option value="2">付款</option>
							<option value="3">收款</option>
					</select></td>
				</tr>
				<tr>
					<td align="center" colspan="6" class="auto-style2">&nbsp;其他说明</td>
				</tr>
				<tr>
					<td colspan="6" class="tdl">1、供方必须是证照齐全具有合法经营资质的企业,并向需方提供加盖单位红印<br />
						章的《药品经营企业许可证》复印件、《药品经营质量管理规范认证证书》复印件、《营业执照》复印件、<br />
						业务员的法人委托书原件、<br />
						被委托人身份证复印件及其它相关资料等,供需方存档备査。需方应向供方提供加盖单位印章的相关企业资料复印件。<br />
				</tr>
				<tr>
					<td colspan="6" class="tdl">2、供方要对提供的药品质量负责,向需求方提供的药品应符合国家药品标准。<br />
						提供方的药品凡因质量问题所造成的如抽检不合格、药害事件等后果，概由供方承担.如因需方储存和保管不当造成的<br />
						损失由需放自行负责
					</td>
				</tr>
				<tr>
					<td colspan="6" class="tdl">3、需方要求供方遵守以下供药原则:1、不得供应“三无”药品;2、不得供应假冒厂牌<br />
						和商标及无出厂合格证的药品:3、不得供应即将变质或生产日期较久的药品;4、除双方另有约定外,不得供应<br />
						有效期少于8个月的药品;5、不得供应不符合包装标志有关规定和储运要求的药品方提供药品时,须向需方提供加盖<br />
						供方印章的《药品检验报单》和销售票据,且各项内容与该批次药品相符。
					</td>
				</tr>
				<tr>
					<td colspan="6" class="tdl">4、供方须按需方购药计划的药名、规格、数量、产地等要求供应药品,否则需方有权<br />
						全部或部分拒收。
					</td>
				</tr>
				<tr>
					<td colspan="6" align="center" class="tdl"><input
						type="submit" value="提交审核"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
