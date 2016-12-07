<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:include page="../head.jsp">
		<jsp:param value="管理员添加用户信息" name="title"/>
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
			<div class="panel panel-success">
			<div class="panel-heading text-center">添 加 用 户
			</div>
			<form role="form" method="post" action="user_add.html">
			<div class="panel-body">
				<div class="form-group">
					<label for="username">
						<span class="glyphicon glyphicon-user"></span> 用户名
					</label>
					<input type="text" class="form-control" id="userName" name="userName"
					autofocus="autofocus" required="required" />
				</div>
				<div class="form-group">
					<label for="password">
						<span class="glyphicon glyphicon-lock"></span> 密码
					</label>
					<input type="password" class="form-control" id="password" name="password" required="required" />
				</div>
				<div class="form-group">
					<label for="password1">
						<span class="glyphicon glyphicon-lock"></span> 确认密码
					</label>
					<input type="password" class="form-control" id="password1" required="required" />
				</div>
				<div class="form-group">
					<label>
						<span class="glyphicon glyphicon-credit-card"></span> 角色
					</label>
					<br/>
					<label class="radio-inline">
						<input type="radio" name="ident" value="0" checked="checked" />普通用户
					</label>
					<label class="radio-inline">
						<input type="radio" name="ident" value="1" />管理员
					</label>
				</div>
				<div class="form-group">
					<label for="telphone">
						<span class="glyphicon glyphicon-earphone"></span> 电话
					</label>
					<input type="number" class="form-control" id="telphone"	name="telephone"	required="required" />
				</div>
				<div class="form-group">
					<label for="address">
						<span class="glyphicon glyphicon-globe"></span> 地址
					</label>
					<input type="text" class="form-control" id="address" name="address"
					required="required" />
				</div>
			</div>
			<div class="panel-footer text-center">
				<button type="submit" class="btn btn-success">确认添加</button>&nbsp;&nbsp;
				<a role="button" class="btn btn-default" href="admin_list_user.jsp">放弃返回</a>
			</div>
			</form>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	</div><!--ending container-->
</body>
</html>