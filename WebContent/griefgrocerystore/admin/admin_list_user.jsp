<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<%@ page pageEncoding="UTF-8" import="java.util.*,cn.edu.neusoft.meal.domain.*" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="用户信息列表" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="user_m" name="fun"/>
	</jsp:include>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-info">
			<div class="panel-heading">
				<form class="form-inline" role="search" action="/griefgrocerystore/admin/user_list.html" method="post">
					<div class="form-group">
						<input class="form-control" id="s_un" type="text" name="s_un" value="${param.s_un }" placeholder="按用户名查询" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-sm b
						tn-info" data-toggle="tooltip" title="搜索用户">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</div>
					<div class="form-group pull-right">
						<a class="btn btn-sm btn-success" data-toggle="tooltip" title="添加用户" href="/griefgrocerystore/admin/user_add_form.html" role="button"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;添加用户</a>
					</div>
				</form>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-hover table-condensed">
					<thead>
						<tr>
							<th>#</th><th>用户名</th><th>身份</th><th>积分</th><th>用户头像</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${users}" var="user">
								<tr>
									<th>${user.id}</th>
									<td>${user.userName}</td>
									<td><c:if test="${user.ident==1}">管理员</c:if><c:if test="${user.ident==0}">普通用户</c:if></td>
									<td>${user.score}</td>
									<td>
										<img class="img-rounded" src="${user.icon}" width="200" height="200"/>
									</td>
									<td>
										<a class="btn btn-xs btn-warning" data-toggle="tooltip" 
										title="修改用户" href="user_edit_form.html?id=${user.id}"
										role="button">
											<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
										</a>
										<button type="button" class="btn btn-xs btn-danger"  
										data-toggle="tooltip" title="删除用户" onclick="delConfirm('${user.id}')">
											<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
										</button>
									</td>
								</tr>
						</c:forEach>

					</tbody>
				</table>
				<nav class="pull-right">
					<ul class="pagination">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<c:forEach begin="0" end="${pages-1}" var="i">
						<li><a href="#" onclick="javascript:return jumptopage(${i})">${i+1}</a></li>
						</c:forEach>
						<li>
							<a href="#" aria-label="Next">
						    <span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
			</div>
		</div>
	</div>
	</div>

		<mytag:delcase url="user_del.html"/>

        <mytag:jumptopage url="user_list.html" keyword="s_un"/>

</body>
</html>