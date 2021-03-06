<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>注册</title>
	<!--用百度的静态资源库的cdn安装bootstrap环境-->
	<!-- Bootstrap 核心 CSS 文件 -->
	<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<!--font-awesome 核心我CSS 文件-->
	<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 在bootstrap.min.js 之前引入 -->
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
	<!-- Bootstrap 核心 JavaScript 文件 -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<!--jquery.validate-->
	<script type="text/javascript" src="js/jquery.validate.min.js" ></script>
	<script type="text/javascript" src="js/message.js" ></script>
	<script src="/griefgrocerystore/user/checkUserName.js"></script>
	<style type="text/css">
		body{background: url(/griefgrocerystore/images/reg_bg.jpg) no-repeat;font-size: 16px ;}
		.form{background: cornflowerblue;width:800px;margin:100px auto;}

		.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
		input[type="text"],input[type="password"]{padding-left:26px;}


	</style>
</head>
<body>

<div class="container">
	<div class="form row">
		<form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="register_form"  method="post"
			  action="/griefgrocerystore/register.html" enctype="multipart/form-data">
			<h2 class="form-title">注    册</h2>
			<div class="col-sm-9 col-md-9">
				<!-- 用户名 -->
				<div class="form-group">
					<i class="fa fa-user fa-lg"></i>
					<input class="form-control required" type="text" placeholder="Username" id="username" name="userName" autofocus="autofocus"  required="required" />
					<span id="checkuser" style="color: #cc2127"></span>
				</div>
				<!-- 密码 -->
				<div class="form-group">
					<i class="fa fa-lock fa-lg"></i>
					<input class="form-control required" type="password" placeholder="Password" id="register_password" name="password"  required="required"/>
				</div>
				<!-- 确认密码 -->
				<div class="form-group">
					<i class="fa fa-check fa-lg"></i>
					<input class="form-control required" type="password" placeholder="Re-type Your Password" name="rpassword"  required="required"/>
				</div>
				<!-- 邮箱 -->
				<div class="form-group">
					<i class="fa fa-envelope fa-lg"></i>
					<input class="form-control eamil" type="text" placeholder="Email" name="email"/>
				</div>
				<div class="form-group">
					<input type="file" id="img" name="img" />
					<p class="help-block">请选择头像图片</p>
				</div>
				<div class="form-group">
					<div class="col-xs-7">
					<button type="submit" class="btn  btn-success btn-lg">注册</button>
					</div>
					<div class="col-xs-5">
					<a href="/griefgrocerystore/index.html" class="btn btn-danger btn-primary btn-lg">返回</a>
				</div>
				</div>
			</div>
		</form>
	</div>
</div>

</body>
</html>