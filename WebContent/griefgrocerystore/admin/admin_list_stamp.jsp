<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<%@ page pageEncoding="UTF-8"
 %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="邮票信息列表" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="stamp_s" name="fun"/>
	</jsp:include>

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-info">
			<div class="panel-heading">
				<form class="form-inline" role="search">
					<div class="form-group">
						<input class="form-control" type="text" name="s_sn" id="s_sn" value="${param.s_sn}" placeholder="按邮票名查询"  />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-sm btn-info" data-toggle="tooltip" title="搜索邮票品">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</div>
					<div class="form-group pull-right">
						<a class="btn btn-sm btn-success" data-toggle="tooltip" title="添加邮票" href="/griefgrocerystore/admin/stamp_add_form.html" role="button"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;添加邮票</a>
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
								邮票名
							</th>
							<th>
								邮票价格
							</th>
							<th>
								邮票样式
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${stamps}" var="stamp">
						<tr>
							<th>
								${stamp.stampid}
							</th>
							<td>
								${stamp.stampname}
							</td>
							<td>
									${stamp.stampscore}分
							</td>
							<td>
								<img class="img-rounded" src="${stamp.stamppc}" />
							</td>
							<td>
								<a class="btn btn-xs btn-warning" data-toggle="tooltip" title="修改邮票" href="/griefgrocerystore/admin/stamp_edit_form.html?id=${stamp.stampid}" role="button"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
								<button type="button" class="btn btn-xs btn-danger"  data-toggle="modal" data-toggle="tooltip" onclick="delConfirm('${stamp.stampid}')" title="删除邮票"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
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
						<c:forEach begin="0" end="${spages-1}" var="i">
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

		<mytag:delcase url="stamp_del.html"/>
	    <mytag:jumptopage url="stamp_list.html" keyword="s_sn"/>

</body>
</html>