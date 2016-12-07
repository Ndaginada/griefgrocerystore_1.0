<%@ page pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="管理员查看用户点餐情况" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="dc_s" name="fun"/>
	</jsp:include>
	<div class="row">
	<div class="col-md-offset-2 col-md-8"> 
		<div class="list-group">
			<div class="list-group-item active">
			<span class="glyphicon glyphicon-user"></span>
			Sam
			</div>
			<a class="list-group-item">菠菜炒鸡蛋
			<span class="badge">¥9.00</span>
			</a>
			<a class="list-group-item">韭菜炒鸡蛋
			<span class="badge">¥8.00</span>
			</a>
			<a class="list-group-item">渝味辣白菜
			<span class="badge">¥6.00</span>
			</a>
			<a class="list-group-item active">合计
			<span class="badge">¥23.00</span>
			</a>
		</div>
		<div class="list-group">
			<div class="list-group-item active">
			<span class="glyphicon glyphicon-user"></span>
			Lily
			</div>
			<a class="list-group-item">酸辣白菜
			<span class="badge">¥14.00</span>
			</a>
			<a class="list-group-item">肉末豆腐
			<span class="badge">¥7.00</span>
			</a>
			<a class="list-group-item">小葱拌豆腐
			<span class="badge">¥22.00</span>
			</a>
			<a class="list-group-item">布丁
			<span class="badge">¥6.00</span>
			</a>
			<a class="list-group-item">姜撞奶
			<span class="badge">¥14.00</span>
			</a>
			<a class="list-group-item active">合计
			<span class="badge">¥66.00</span>
			</a>
		</div>
	</div>
	</div><!--ending 2th row-->
	</div><!--ending container-->
</body>
</html>