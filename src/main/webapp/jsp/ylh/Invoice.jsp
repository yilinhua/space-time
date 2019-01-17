<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Invoice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
    <link rel="stylesheet" type="text/css" href="../Styles/formui.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/base.css"/>
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
  <body>
  
  <form action="select" method="post">
    <table border="1" cellspacing="0" class="tb" id="top">
    <thead>
    <tr>
    <th>客户名字</th>
    <th>药物名称</th>
    <th>数量</th>
    <th>单价</th>
    <th>总金额</th>
    <th>时间</th>
    <th>开票人</th>
    </tr>
    </thead>
    
   <c:forEach items="${list}" var="list">
   <tr>
   <td>${list.customername}</td>
   <td>${list.productname}</td>
   <td>${list.number}</td>
   <td>${list.unitprice}</td>
   <td>${list.fullamount}</td>
   <td>${list.billingtime}</td>
   <td>${list.drawer}</td>
   </tr>
   </c:forEach>
    
    </table>
    </form>
  </body>
</html>
