<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<link href="css/gupiao.css" rel="stylesheet">
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
<body>
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

	<section id="gupiao">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">

				<form class="form-horizontal"  action="<%=basePath%>/base/gupiao!save.action" method="post">
					<fieldset>
						<div id="legend" class="">
							<legend class="">添加</legend>
						</div>
						<div class="control-group">

							<!-- Text input-->
							<label class="control-label" for="input01">名称</label>
							<div class="controls">
								<input type="text" name="data.name" placeholder="请输入名称" class="input-xlarge">
								<p class="help-block">不超过15字</p>
							</div>
						</div>
						<div class="control-group">

							<!-- Text input-->
							<label class="control-label" for="input01">年化收益率</label>
							<div class="controls">
								<input type="text" name="data.percent" placeholder="请输入年化收益率" class="input-xlarge">
								<p class="help-block">输入百分比即可</p>
							</div>
						</div>

						<div class="control-group">

							<!-- Text input-->
							<label class="control-label" for="input01">期限</label>
							<div class="controls">
								<input type="text" name="data.month" placeholder="请输入多少月份" class="input-xlarge">
								<p class="help-block">只能输入数字</p>
							</div>
						</div>

						<div class="control-group">

							<!-- Text input-->
							<label class="control-label" for="input01">金额</label>
							<div class="controls">
								<input type="text" name="data.money" placeholder="请输入金额" class="input-xlarge">
								<p class="help-block">小数点两位数</p>
							</div>
						</div>

						<div class="control-group">
							<!-- Button -->
							<div class="controls">
								<button class="btn btn-success">提交</button>
							</div>
						</div>

					</fieldset>
				</form>

			</div>
		</div>
		<!-- row -->
	</div>
	<!-- container--> </section>
</body>
<script src="js/jquery-2.0.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>
</html>