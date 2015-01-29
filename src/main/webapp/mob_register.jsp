<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home |益大家</title>

<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="css/register.css" rel="stylesheet" type="text/css" />
<link href="css/validator.css" rel="stylesheet" type="text/css" />

<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

</head>
<!--/head-->

<body class="homepage">

	<header id="header" class="header header--fixed hide-from-print"
		role="banner"> <nav class="navbar navbar-default"
		role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">益大家</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">主页 <span class="sr-only">(current)</span></a></li>
				<li><a href="<%=basePath%>save.jsp">我要投资</a></li>
				<li><a href="<%=basePath%>gupiao.jsp"">我要融资</a></li>
				<li><a href="#">新手指引</a></li>
				<li><a href="#">关于我们</a></li>
				<li><a href="#">我的账户</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav> </header>

	<div class="container">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputEmail3"
						placeholder="请输入字母、数字或中文">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword1" class="col-sm-2 control-label">密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword1"
						placeholder="请输入6-20个数字+字母，区分大小写">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword3"
						placeholder="请再次输入密码">
				</div>
			</div>
			<div class="form-group">
				<label for="inputUsername" class="col-sm-2 control-label">推荐人</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputUsername"
						placeholder="可输入用户名或手机号">
				</div>
			</div>
			<div class="form-group">
				<label for="inputMobile" class="col-sm-2 control-label">手机号码</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputMobile"
						placeholder="手机号码">
				</div>
			</div>
			<div class="form-group">
				<label for="inputVal" class="col-sm-2 control-label">验证码</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputVal"
						placeholder="验证码">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputVal1" class="col-sm-2 control-label">手机验证码</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputVal1"
						placeholder="请输入短信验证码">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">下一步</button>
				</div>
			</div>
		</form>
	</div>

	<script src="js/jquery-2.0.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/registemember.js"></script>
	<script src="js/bootstrapValidator.min.js"></script>
	<script src="js/common.js"></script>
	<script type="text/javascript">
		$(function() {

		});
	</script>
</body>
</html>