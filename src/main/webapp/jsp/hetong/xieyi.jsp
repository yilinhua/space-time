<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>
</title>
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
		当前位置<b class="tip"></b>合同管理<b class="tip"></b>合同模板
	</div>
	<table class="tbform">
		<thead>
			<tr>
				<td align="center" colspan="6" class="auto-style2">&nbsp;<h3>供应商合作协议书</h3></td>
			</tr>
			<tr>
			<td colspan="6"class="tdl">1、为了更好的开拓市场,更好为客户服务,甲乙双方本着互惠互利双赢策略,根据乙方
			时空商城入驻条件,甲方申请入驻时空商城,并完全接受乙方规范,经友好协商,<br/>&nbsp;&nbsp;&nbsp;甲乙双方签署以下入驻协议.<br/>
			<h3>一、入驻商家的基本条件</h3><br/>
			1、有良好的合作意愿,能提供优质的商品,保证合作的顺利进行,并保证提供良好的售后服务;&nbsp;<br/>
			2、甲方必须满足以下条件之一(符合其中一项即可):<br/>
			(1)授权商,获得国际或者国内品牌厂商的授权;<br/>
			(2)拥有自己注册商标的生产型厂商;<br/>
			(3)专业品牌经销商,代理商<br/>
			3、甲方在签订本协议时向乙方提供(经乙方认可的)包括但不限于以下证明材料复印件<br/>
			(1)营业执照、税务登记证<br/>
			(2)拥有注册商标或者品牌,或者拥有正规品牌授权书.<br/>
			4、甲方所以商品保证原厂正品,保障商品质量、售后服务,必要时能提供销售发票<br/>
			5、甲乙双方签署本协议;<br/>
			6、提交相应的材料证明复印件、在乙方时空商城注册,获取管理员账户<br/>
			7、乙方审核通过后,甲方即可发布商方案并展示经营活动等<br/>
			<h3>二可选收费项目</h3><br/>
			1、销售分成______%;<br/>
			2、诚实保证金_____;<br/>
			3、平台使用费______;<br/>
			4、技术服务费_______;<br/>
			5、其他费用________;<br/>
			</td>
			</tr>
			<tr>
				<td align="center" colspan="6" class="auto-style2">&nbsp;<a href="jsp/hetong/gys.jsp"><input type="submit" value="我已阅读,前往签署"></a></td>
			</tr>
		<tbody>
		</tbody>
	</table>
  </body>
</html>
