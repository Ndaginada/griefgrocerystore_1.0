<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" import="java.util.*" %>
<%@ page import="cn.edu.neusoft.meal.domain.User" %>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="管理员修改用户信息" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="user_m" name="fun"/>
	</jsp:include>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="panel panel-warning">
			<div class="panel-heading text-center">修 改 用 户
			</div>
			<form role="form" method="post" action="user_edit.html?id=${user.id}">

			<div class="panel-body">
				<div class="form-group">
					<label for="username">
						<span class="glyphicon glyphicon-user"></span> 用户名
					</label>
					<input type="text" class="form-control" id="username" name="userName"
					autofocus="autofocus" required="required" value="${user.userName}" />
				</div>
				<div class="form-group">
					<label for="password">
						<span class="glyphicon glyphicon-lock"></span> 密码
					</label>
					<input type="text" class="form-control" id="password" name="password"
					 required="required" value="${user.password}" />
				</div>
				<div class="form-group">
					<label for="password1">
						<span class="glyphicon glyphicon-lock"></span> 确认密码
					</label>
					<input type="text" class="form-control" id="password1" required="required"  value="${user.password}"/>
				</div>
				<div class="form-group">
					<label>
						<span class="glyphicon glyphicon-credit-card"></span> 角色
					</label>
					<br/>
					<label class="radio-inline">
						<input type="radio" name="ident" value="0"  <c:if test="${user.ident==0}">checked</c:if> />普通用户
					</label>
					<label class="radio-inline">
						<input type="radio" name="ident" value="1"  <c:if test="${user.ident==1}">checked</c:if> />管理员
					</label>
				</div>

				<div class="form-group">
					<label>
						<span class="glyphicon glyphicon-globe"></span> 头像
					</label>
					<img class="img-rounded" alt="Bootstrap Image Preview" src="${user.icon}" width="200" height="200" />
				</div>
				<div class="form-group">
			</div>
			<div class="panel-footer text-center">
				<button type="submit" class="btn btn-warning">确认修改</button>&nbsp;&nbsp;
				<a role="button" class="btn btn-default" href="admin_list_user.jsp">放弃返回</a>
			</div>
			</form>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div><!--ending 1th row-->
	</div><!--ending container-->
	
</body>
</html>