<%@page pageEncoding="UTF-8"
import="java.util.*"
import="cn.edu.neusoft.meal.domain.*"
 %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>首页</title>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/mealsystem/bootstrap3.3.5/css/bootstrap.min.css">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="${pageContext.servletContext.contextPath}/mealsystem/jquery1.11.3/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.servletContext.contextPath}/mealsystem/bootstrap3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<a class="navbar-brand" href="/mealsystem/homepage.html"><span class="text-warning">网络点餐系统</span></a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<c:if test="${loginName==null}">
					   <ul class="nav navbar-nav navbar-right">
						<li>
							<a class="btn" role="button" href="#modal-login" data-toggle="modal">登录</a>
						</li>
						<li>
							<a class="btn" role="button" href="#modal-register" data-toggle="modal">注册</a>
						</li>
					</ul>
					</c:if>
					<c:if test="${loginName!=null}">
					<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" href="#" data-toggle="dropdown">
						 	<span class="glyphicon glyphicon-user"></span>
							${loginName}
						 	<strong class="caret"></strong>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="mealsystem/logout.html">退出登录</a>
							</li>
						</ul>
					</li>
				</ul>
					</c:if>
				</div>
			</nav>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="list-group">
				 <h4 class="list-group-item active">热点菜品</h4>
				<c:forEach var="food" items="${hots}">
				<div class="list-group-item center-block">
					<img class="img-rounded" alt="Bootstrap Image Preview" src="${pageContext.servletContext.contextPath}/${food.picture}" />
					<a href="show_detail.jsp?id=${food.id}" target="_blank">${food.foodName}</a>
					&nbsp;&nbsp;
					<span>${food.price}元</span>
				</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-4">
			<div class="list-group">
				 <h4 class="list-group-item active">今日特价</h4>
				<c:forEach var="food" items="${sales}">
				<div class="list-group-item center-block">
					<img class="img-rounded" alt="Bootstrap Image Preview" src="${pageContext.servletContext.contextPath}/${food.picture}" />
					<a href="show_detail.jsp?id=${food.id}" target="_blank">${food.foodName}</a>
					&nbsp;&nbsp;
					<span>${food.price}元</span>
				</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-4">
			<div class="list-group">
				 <h4 class="list-group-item active">厨师推荐</h4>
				<c:forEach var="food" items="${recommeds}">
				<div class="list-group-item center-block">
					<img class="img-rounded" alt="Bootstrap Image Preview" src="${pageContext.servletContext.contextPath}/${food.picture}" />
					<a href="show_detail.jsp?id=${food.id}" target="_blank">${food.foodName}</a>
					&nbsp;&nbsp;
					<span>${food.price}元</span>
				</div>
				</c:forEach>
			</div>
		</div>
</div>
</div>

<!--登录对话框-->
<div class="modal fade" id="modal-login" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
					×
				</button>
				<h3 class="modal-title text-center text-primary" id="myModalLabel">
					用户登录
				</h3>
			</div>
			<form class="form-horizontal" role="form" method="post" action="${pageContext.servletContext.contextPath}/mealsystem/login.html">
				<div class="modal-body">
					<div class="form-group">
						<label class="col-sm-4 control-label" for="username">
							用户名
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="username" name="userName" type="text" required />
						</div>
					</div>
					<div class="form-group">
						 
						<label class="col-sm-4 control-label" for="pwd">
							密码
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="pwd" name="password" type="password" required />
						</div>
					</div>
				</div>
				<div class="modal-footer">	
        			<button type="submit" class="btn btn-primary">登录</button>
        			<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</form>	
		</div>
	</div>
</div>
<!--注册对话框-->
<div class="modal fade" id="modal-register" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
					×
				</button>
				<h3 class="modal-title text-center text-primary" id="myModalLabel">
					用户注册
				</h3>
			</div>
			<form class="form-horizontal" role="form" method="post" action="${pageContext.servletContext.contextPath}/mealsystem/user!reg.action">
				<div class="modal-body">
					<div class="form-group">
						 
						<label class="col-sm-4 control-label" for="username">
							用户名
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="username" name="un" type="text" required />
						</div>
					</div>
					<div class="form-group">
						 
						<label class="col-sm-4 control-label" for="pwd">
							密码
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="pwd" name="pw" type="password" required />
						</div>
					</div>
					<div class="form-group">
						 
						<label class="col-sm-4 control-label" for="pwd2">
							确认密码
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="pwd2" name="pw2" type="password" required />
						</div>
					</div>
					<div class="form-group">
						 
						<label class="col-sm-4 control-label" for="phone">
							电话
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="phone" name="tel" type="number" required />
						</div>
					</div>
					<div class="form-group">
						 
						<label class="col-sm-4 control-label" for="address">
							地址
						</label>
						<div class="col-sm-6">
							<input class="form-control" id="address" name="addr" type="text" required />
						</div>
					</div>
				</div>
				<div class="modal-footer">	
        			<button type="submit" class="btn btn-primary">注册</button>
        			<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>