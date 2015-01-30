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
<link href="css/gupiao.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<style>
.banner {
	position: relative;
	overflow: auto;
}

.banner li {
	list-style: none;
}

.banner ul li {
	float: left;
}

.carousel .backcolor{
	height:13%;
	width:180px;
	position:absolute;
	display:inline;
	float:right;
	margin-left:63%;
	margin-top:2%;
	z-index: 10;
	opacity:0.2;
	background-color: #fff;
}

.carousel .panel{
	height:13%;
	width:180px;
	position:absolute;
	display:inline;
	float:right;
	margin-left:63%;
	margin-top:2%;
	z-index: 10;
	text-align:center;
	background: rgba(255, 255, 255, 0);
}

.carousel .panel .panel-heading{
	color:#FFF;
	background: rgba(255, 255, 255, 0.5);
}

.carousel .panel .panel-body{
	color:#FFF;
	background: rgba(255, 255, 255, 0.3);
}

.table thead{
	background-color: #cfcfcf;
}

#table tr td{
	line-height: 28px;
	margin:auto 0px;
}
#table .em{
background-image: url(images/icon.png);
width: 20px;
height: 28px;
display: block;
overflow: hidden;
float: left;
padding-right: 3px;
cursor: pointer;
}

#table .bao {
background-position: 0px -270px;
margin-right:3px;
}

#table .dan {
background-position: -60px -270px;
margin-right:3px;
}

#table .ti {
background-position: -90px -270px;
margin-right:3px;
}
</style>
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

	<section class="carousel"> <!-- Slideshow -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
				<div class="panel hidden-sm hidden-xs">
					<div class="panel-heading">
						<h1>5%-15% <br><small>年化利率</small></h1>
						
					</div>
					<div class="panel-body">
						<a class="btn btn-danger">立即注册</a>
						<br><a href="#">已有账号？马上登陆</a>
					</div>
				</div>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="images/index/index1.jpg">
				</div>
				<div class="item">
					<img src="images/index/index2.jpg">
				</div>
				<div class="item">
					<img src="images/index/index3.jpg">
				</div>
			</div>
	
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</section>

	<section id="table">
		<div class="container">
		<div class="pannel">
			<div class="panel-heading"><h3 class="text text-primary">投资项目</h3></div>
			<div class="table-responsive">
			  <table class="table table-condensed table-hover">
			  		<thead>
			  			<tr>
			  				<th>项目</th>
			  				<th>名称</th>
			  				<th>融资金额</th>
			  				<th>年化利率</th>
			  				<th>期限</th>
			  				<th>当前进度状态</th>
			  			</tr>
			  		</thead>
			    	<tbody>
			    			<tr>
			    				<td><em class="em bao" title="投资保险计划"></em>
			    					<em class="em dan" title="第三方担保"></em>益进宝150126-1 
			    				</td>
			    				<td>￥1,000,000.00</td>
			    				<td>12.00%</td>
			    				<td>3个月</td>
			    				<td>1</td>
			    				<td><button type="button" class="btn btn-primary">立即投标</button></td>
			    			</tr>
			    			<tr>
			    				<td><em class="em bao" title="投资保险计划"></em>
			    					<em class="em dan" title="第三方担保"></em>益进宝150126-1</td>
			    				<td>￥1,000,000.00</td>
			    				<td>12.00%</td>
			    				<td>3个月</td>
			    				<td>1</td>
			    				<td><button type="button" class="btn btn-primary">立即投标</button></td>
			    			</tr>
			    			<tr>
			    				<td><em class="em ti" title="体验标"></em>益进宝150126-1 </td>
			    				<td>￥1,000,000.00</td>
			    				<td>12.00%</td>
			    				<td>3个月</td>
			    				<td>1</td>
			    				<td><button type="button" class="btn btn-primary">立即投标</button></td>
			    			</tr>
			    	</tbody>
			  </table>
			</div>
		</div>
		</div>
	</section>
	<script src="js/jquery-2.0.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {

		});
	</script>
</body>
</html>