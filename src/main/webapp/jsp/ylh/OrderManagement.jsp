<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'OrderManagement.jsp' starting page</title>
    
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
  <form action="selectList" method="post">
    <table border="1" cellspacing="0" class="tb" id="top">
    <thead>
    <tr>
    <th>批发商名字</th>
    <th>药物名称</th>
    <th>数量</th>
    <th>总金额</th>
    <th>批发时间</th>
    <th>收货地址</th>
    <th>操作</th>
    </tr>
    </thead>
    
   <c:forEach items="${list}" var="list">
   <tr>
   <td>${list.userName}</td>
   <td>${list.tradeName}</td>
   <td>${list.number}</td>
   <td>${list.totalSum}</td>  
   <td><fmt:formatDate value="${list.ordertime}"/> </td>
   <td>${list.address}</td>
   <td></td>
   </tr>
   </c:forEach>
    
    </table>
    </form>
  </body>
</html>
 