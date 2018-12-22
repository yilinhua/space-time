<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>时空（深圳）医药供应链管理系统</title>
<link rel="stylesheet" type="text/css" href="Styles/base.css" />
<link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
<link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
<script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
<script type="text/javascript" src="Scripts/jquery.spritely-0.6.js"></script>
<script type="text/javascript" src="Scripts/chur.min.js"></script>
<link rel="stylesheet" type="text/css" href="Styles/login.css" />
<script type="text/javascript">
	$(function() {
		$('#clouds').pan({
			fps : 20,
			speed : 0.7,
			dir : 'right',
			depth : 10
		});
		$('.login').click(function() {
			if ($('#uid').val() == "" || $('#pwd').val() == "" || $('#code').val() == "") {
				$('.tip').html('用户名或密码不可为空！')
			} else {
				location.href = 'index.html';
			}
		})
	})
</script>
</head>
<body>
	<div id="clouds" class="stage"></div>
	<div class="loginmain"></div>

	<div class="row-fluid">
		<form action="login">
			<h1>时空（深圳）医药供应链管理系统</h1>
			<p>
				<label>帐&nbsp;&nbsp;&nbsp;号：<input type="text" name="name"
					id="uid" /></label>
			</p>
			<p>
				<label>密&nbsp;&nbsp;&nbsp;码：<input type="password"
					name="password" id="pwd" /></label>
			</p>

			<p class="tip">&nbsp;</p>
			<hr />
			<input type="submit" value=" 登 录 "
				class="btn btn-primary btn-large login" /> &nbsp;&nbsp;&nbsp;<input
				type="button" value=" 取 消 " class="btn btn-large" />
		</form>
	</div>
</body>
</html>
