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
		当前位置<b class="tip"></b>资料初装<b class="tip"></b>资料修改
	</div>
	<c:if test="${update=='cargoupdate'}">
	<form action="cargoupdate" method="post">
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
	</c:if>
                      
    <c:if test="${update=='proupdate'}">
	<form action="productupdate" method="post">
				<table align="center">
					<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>商品编号：</td>
							<td><input type="text" class="form-control" name="code" value="${pro.code}"></td>
							<td><input type="hidden" name="id" value="${pro.id}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>单位：</td>
							<td><input type="text" class="form-control" name="company" value="${pro.company}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>商品名称：</td>
							<td><input type="text" class="form-control" name="trade_name" value="${pro.trade_name}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>商品规格:</td>
							<td><input type="text" class="form-control" name="specifications" value="${pro.specifications}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>生产厂家:</td>
							<td><input type="text" class="form-control" name="manufacturer" value="${pro.manufacturer}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>批准文号:</td>
							<td><input type="text" class="form-control" name="approval_number" value="${pro.approval_number}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>生产时间:</td>
							<td><input type="date" class="form-control" name="production_time" value="${pro.production_time}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>过期时间:</td>
							<td><input type="date" class="form-control" name="expiration_date" value="${pro.expiration_date}"></td>
							
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<tr>
							<td>单价:</td>
							<td><input type="text" class="form-control" name="price" value="#{pro.price}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>数量:</td>
							<td><input type="text" class="form-control" name="qty" value="#{pro.qty}"></td>
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
	 <c:if test="${update=='staffupdate'}">
	<form action="staffupdate" method="post">
				
				<table align="center">
					<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>姓名：</td>
							<td><input type="text" class="form-control" name="name"  value="${sta.name}"></td>
							<td><input type="hidden" name="id" value="${sta.id}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>编号：</td>
							<td><input type="text" class="form-control" name="code" value="${sta.code}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>电话：</td>
							<td><input type="text" class="form-control" name="phone" value="${sta.phone}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>地址:</td>
							<td><input type="text" class="form-control" name="address" value="${sta.address}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>性别:</td>
							<td><select name="sex"><option value="1">男</option><option value="0">女</option></select></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>身份证:</td>
							<td><input type="text" class="form-control" name="pid" value="${sta.pid}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>部门:</td>
							<td><select name="departmentID"><option value="1">人事部</option><option value="0">财务部</option></select></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>入职时间:</td>
							<td><input type="date" class="form-control" name="entry_time" value="${sta.entry_time}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>银行卡号:</td>
							<td><input type="text" class="form-control" name="card_No" value="${sta.card_No}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>职位:</td>
							<td><input type="text" class="form-control" name="position" value="${sta.position}"></td>
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
	
	 <c:if test="${update=='merchantsupdate'}">
	<form action="merchantsupdate" method="post">
				
				<table align="center">
					<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>所属公司：</td>
							<td><input type="text" class="form-control" name="affiliated_Company"  value="${merchants.affiliated_Company}"></td>
							<td><input type="hidden" name="id" value="${merchants.id}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>客商类型：</td>
							<td><input type="text" class="form-control" name="merchants_Type" value="${merchants.merchants_Type}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>联系人：</td>
							<td><input type="text" class="form-control" name="contact" value="${merchants.contact}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>邮箱:</td>
							<td><input type="text" class="form-control" name="mailbox" value="${merchants.mailbox}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>电话:</td>
							<td><input type="text" class="form-control" name="telephone" value="${merchants.telephone}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>手机号码:</td>
							<td><input type="text" class="form-control" name="mobile_phone" value="${merchants.mobile_phone}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>地址:</td>
							<td><input type="text" class="form-control" name="address" value="${merchants.address}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>邮政编码</td>
							<td><input type="text" class="form-control" name="postal_code" value="${merchants.postal_code}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td>支付宝账号:</td>
							<td><input type="text" class="form-control" name="alipay" value="${merchants.alipay}"></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						
						<tr>
							<td>传真:</td>
							<td><input type="text" class="form-control" name="fax" value="${merchants.fax}"></td>
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
