<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<div class="container-fluid">
	<div class="row">
    <div class="col-md-12">
		<nav class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
		    	<a class="navbar-brand" href="/mealsystem/homepage.html"><span class="text-warning">网络点餐系统</span></a>
	   		</div>	  
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="<c:if test="${param.fun=='user_m'}">active</c:if>">
					<a href="/mealsystem/admin/user_list.html">用户管理</a></li>
					<li class="<c:if test="${param.fun=='food_t_m'}">active</c:if>">
					<a href="#">菜品分类管理</a></li>
					<li class="<c:if test="${param.fun=='food_m'}">active</c:if>">
					<a href="/mealsystem/admin/food_list.html">菜品管理</a></li>
					<li class="<c:if test="${param.fun=='dc_s'}">active</c:if>">
					<a href="admin_show_dc.jsp">查看用户点餐情况</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle" href="#" data-toggle="dropdown">
						 	<span class="glyphicon glyphicon-user"></span>
						 	${loginName}
						 	<strong class="caret"></strong>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="logout.html">退出登录</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	</div>
</div>