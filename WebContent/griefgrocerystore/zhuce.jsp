<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Relient - Responsive Multiperpose Theme</title>
		
		<!-- Preloader CSS -->
		<script src="js/pace.min.js"></script>
		
		<!-- Meta Viewport -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		
		<!-- Meta description and keywords -->
		<meta name="description" content="">
		<meta name="keywords" content="">
		
		
		<!-- Preloader CSS -->
		<link rel="stylesheet" href="css/pace.css" >
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min1.css">
		
		<!-- Other Supportive CSS -->
		<link rel="stylesheet" href="css/font-awesome.min.css">
		
		<!-- Universal stylesheet (Shouldbe used with all pages) -->
		<link rel="stylesheet" href="css/main1.css">
		
		<!-- Custom CSS (Page Specific) < Editable > -->
		<link rel="stylesheet" href="css/login-signup.css">
		
		<!-- Custom CSS (color theme) < Editable > -->
		<link rel="stylesheet" href="css/blue.css">

	</head>
	<body >
	<div class="overlay"></div>
	<section class="user-window">
		<div class="user-form mid col-lg-3 col-md-4 col-sm-6">
			<div class="logo">
				<h3 class="text-center">注册</h3>
			</div>
			<div class="form">
				<form method="post" action="/griefgrocerystore/register.html">
				<label class="control-label" for="login-user">用户名</label>
				<div class="input-group">
					<input type="text" id="login-user" class="form-control input-sm" placeholder="Username" name="userName" required="required">
					<span class="input-group-addon"><span class="fa fa-user"></span></span>
				</div>
				<label class="control-label" for="login-user">邮箱</label>
				<div class="input-group">
					<input type="text" id="login-user" class="form-control input-sm" placeholder="Email">
					<span class="input-group-addon"><span class="fa fa-user"></span></span>
				</div>
				<label class="control-label" for="login-pass">密码</label>
				<div class="input-group">
					<input type="password" id="login-pass" class="form-control input-sm" placeholder="Password" name="password" required="required">
					<span class="input-group-addon"><span class="fa fa-key"></span></span>
				</div>
					<label class="control-label" for="login-pass">确认密码</label>
				<div class="input-group">
					<input type="password" id="login-pass" class="form-control input-sm" placeholder="ConfirmPassword" required="required">
					<span class="input-group-addon"><span class="fa fa-key"></span></span>
				</div>
				</br>
				<div class="col-xs-4">
					<%--<a href="login.loginBeforReg.jsp" class="btn btn-success btn-lg">提交</a>--%>
					<button type="submit" class="btn btn-primary">提交</button>
				</div>
				<div class="col-xs-6">
				<a href="/griefgrocerystore/index.html" class="btn btn-danger btn-lg">返回</a>
				</div>
				</br></br></br>
				</form>
			</div>
		</div>
	</section>
	<!-- jQuery -->
		<script src="js/jquery-2.1.1.min.js"></script>
		
		<!-- Bootstrap -->
		<script src="js/bootstrap.min1.js"></script>
		
		<!-- Universal JS for all pages js < Editable > -->
		<script src="js/main1.js"></script>
		
		<!-- Style switcher for demo page only -->
		<script src="js/style-switcher.js"></script>
	</body>
</html>