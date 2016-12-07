<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" import="java.sql.*"
import="java.util.*,cn.edu.neusoft.meal.domain.*"
 %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="管理员管理菜品信息" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="food_m" name="fun"/>
	</jsp:include>

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-info">
			<div class="panel-heading">
				<form class="form-inline" role="search">
					<div class="form-group">
						<input class="form-control" type="text" name="s_fn" placeholder="按菜名查询" />
					</div>
					<div class="form-group">
						<select class="form-control" name="s_type">
							<option value="">所有分类</option>
							<c:forEach var="type" items="${types}">
							<option value="${type.id}">
							${type.typeName}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-sm btn-info" data-toggle="tooltip" title="搜索菜品">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</div>
					<div class="form-group pull-right">
						<a class="btn btn-sm btn-success" data-toggle="tooltip" title="添加菜品" href="food_add_form.html" role="button"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;添加菜品</a>
					</div>
				</form>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-hover table-condensed">
					<thead>
						<tr>
							<th>
								#
							</th>
							<th>
								菜名
							</th>
							<th>
								特色
							</th>
							<th>
								主料
							</th>
							<th>
								价格
							</th>
							<th>
								分类
							</th>
							<th>
								图片
							</th>
							<th>
								点餐率
							</th>
							<th>
								备注
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${foods}" var="food">
						<tr>
							<th>
								${food.id}
							</th>
							<td>
								${food.foodName}
							</td>
							<td>
									${food.feature}
							</td>
							<td>
									${food.material}
							</td>
							<td>
									${food.price}元
							</td>
							<td>
								${food.type}
							</td>
							<td>
								<img class="img-rounded" src="${pageContext.servletContext.contextPath}/${food.picture}" />
							</td>
							<td>
								${food.hits}次
							</td>
							<td>
								${food.comment}
							</td>
							<td>
								<a class="btn btn-xs btn-warning" data-toggle="tooltip" title="修改菜品" href="/mealsystem/admin/food_edit_form.html?id=${food.id}" role="button"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
								<button type="button" class="btn btn-xs btn-danger"  data-toggle="modal" data-toggle="tooltip" onclick="delConfirm('${food.id}')" title="删除菜品"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
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
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li>
							<a href="#" aria-label="Next">
						    <span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
			</div><!--ending panel-->
		</div>
	</div><!--ending 2th row-->
	</div><!--ending container-->
	<!--删除确认框-->
	<div class="modal fade" id="delConfirmModal">
	      <input type="hidden" id="url" /> 
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">删除确认</h4>
				</div>
				<div class="modal-body">
					<h4 class="text-danger">确定要删除该菜品吗？</h4>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">放弃</button>
					<button type="button" onclick="delSubmit()" class="btn btn-primary" data-dismiss="modal">删除</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<script>
		function delConfirm(id){
			$('#url').val('food_del.html?id='+id);
			$('#delConfirmModal').modal();
		}
		function delSubmit(){
			location.replace($('#url').val());
		}
	</script>
</body>
</html>