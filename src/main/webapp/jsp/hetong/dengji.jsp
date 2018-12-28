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
		<tbody>
			<tr>
				<td align="center" class="tdl">合同名称</td>
				<td class="td_detail"><input id="formid" class="ipt" /></td>
				<td align="center" class="tdl">合同号</td>
				<td class="detail"><input id="formid" class="ipt" /></td>
			</tr>
			<tr>
			<td align="center" class="tdl">签约时间</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="1992-08-08" /></td>
				<td align="center" class="tdl">生效时间</td>
				<td class="td_detail"><input id="formid" class="ipt" /></td>
				<td align="center" class="tdl">失效时间</td>
				<td class="td_detail"><input id="formid" class="ipt" /></td>
			</tr>
			<tr>
				<td align="center" class="tdl">甲方(供货商)</td>
				<td  class="td_detail"><input id="formid"
					class="ipt" value="XX医药供货商" /></td>
				<td align="center" class="tdl">乙方(批发商)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XX医药批发商" /></td>
			</tr>
			<tr>
				<td align="center" class="tdl">法定代表 姓名(甲方)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XX医药供货商" /></td>
				<td align="center" class="tdl">法定地址(甲方)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XX医药供货商" /></td>
			</tr>
			<tr>
				<td align="center" class="tdl">法定代表 姓名(乙方)</td>
				<td class="td_detail"><input id="formid" class="ipt"
					value="XX医药供货商" /></td>
				<td align="center" class="tdl">法定地址(乙方)</td>
				<td class="td_detail"><input id="formid" class="ipt">
			</tr>
			<tr>
			<td align="center" class="tdl">承办人姓名</td>
			<td class="td_detail"><input id="formid" class="ipt">
			<td align="center" class="tdl">联系电话</td>
			<td class="td_detail"><input id="formid" class="ipt">
			<td align="center" class="tdl">履行人姓名</td>
			<td class="td_detail"><input id="formid" class="ipt">
			</tr>
			<tr>
				<td align="center" class="tdl">交货方式</td> 
				 <td align="center">
                    <select size="1" name="select2" id="baoxiaoren">
                        <option value="10388">自提</option>
                        <option
                            value="10389">送货</option>
                    </select></td>
                    <td align="center" class="tdl">运输方式</td> 
                    <td align="center">
                    <select  size="1" name="select2" id="baoxiaoren">
                        <option value="10388">航空</option>
                        <option
                            value="10389">铁路</option>
                            <option
                            value="10389">公路</option>
                    </select></td>
                     <td align="center" class="tdl">批准文号</td> 
                     <td class="td_detail"><input id="formid" class="ipt" /></td>
		   </tr>
		   <tr>
		   	<td align="center" class="tdl">运输费、合理损耗负责方</td> 
		   	<td align="center">
                    <select  size="1" name="select2" id="baoxiaoren">
                        <option value="10388">甲方</option>
                        <option
                            value="10389">乙方</option>
                            <option
                            value="10389">其他</option>
                    </select></td>
                    <td align="center" class="tdl">结算方式</td> 
                    <td align="center">
                    <select  size="1" name="select2" id="baoxiaoren">
                        <option value="10388">银行转账</option>
                        <option
                            value="10389">第三方支付</option>
                            <option
                            value="10389">其他</option>
                    </select></td>
                    <td align="center" class="tdl">付款期限</td> 
                     <td align="center">
                    <select  size="1" name="select2" id="baoxiaoren">
                        <option value="10388">单结</option>
                        <option
                            value="10389">月结</option>
                            <option
                            value="10389">其他</option>
                    </select></td>
		   </tr>
		   <tr>
				<td align="center" colspan="6"class="auto-style2">&nbsp;其他说明</td>
		   </tr>
		   <tr>
		      <td colspan="6"   class="tdl">1、供方必须是证照齐全具有合法经营资质的企业,并向需方提供加盖单位红印<br/>
		      章的《药品经营企业许可证》复印件、《药品经营质量管理规范认证证书》复印件、《营业执照》复印件、<br/>
		      业务员的法人委托书原件、<br/>
		      被委托人身份证复印件及其它相关资料等,供需方存档备査。需方应向供方提供加盖单位印章的相关企业资料复印件。<br/>
		   </tr>
		   <tr>
		   	<td colspan="6"   class="tdl">2、供方要对提供的药品质量负责,向需求方提供的药品应符合国家药品标准。<br/>
		   	提供方的药品凡因质量问题所造成的如抽检不合格、药害事件等后果，概由供方承担.如因需方储存和保管不当造成的<br/>
		   	损失由需放自行负责</td>
		   </tr>
		   <tr>
		    <td colspan="6"   class="tdl">3、需方要求供方遵守以下供药原则:1、不得供应“三无”药品;2、不得供应假冒厂牌<br/>
		    和商标及无出厂合格证的药品:3、不得供应即将变质或生产日期较久的药品;4、除双方另有约定外,不得供应<br/>
		    有效期少于8个月的药品;5、不得供应不符合包装标志有关规定和储运要求的药品方提供药品时,须向需方提供加盖<br/>
		    供方印章的《药品检验报单》和销售票据,且各项内容与该批次药品相符。 </td>
		   </tr>
		   <tr>
		   <td colspan="6"   class="tdl">4、供方须按需方购药计划的药名、规格、数量、产地等要求供应药品,否则需方有权<br/>
		   全部或部分拒收。</td>
		   </tr>
		   <tr>
				<td colspan="6"  align="center" class="tdl"><input type="submit" value="提交审核"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
