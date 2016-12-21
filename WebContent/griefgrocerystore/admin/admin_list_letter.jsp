<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="del" tagdir="/WEB-INF/tags" %>
<%@ page pageEncoding="UTF-8" import="java.sql.*"
import="java.util.*,cn.edu.neusoft.meal.domain.*"
 %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="信件信息列表" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="letter_m" name="fun"/>
	</jsp:include>

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-info">
			<div class="panel-heading">
				<form class="form-inline" role="search">
					<div class="form-group">
						<input class="form-control" type="text" name="a_ln" id="a_ln" value="${param.a_ln}" placeholder="按信件名查询" />
					</div>
					<%--<div class="form-group">--%>
						<%--<input class="form-control" type="text" name="a_un" placeholder="按用户名查询" />--%>
					<%--</div>--%>
					<div class="form-group">
						<button type="submit" class="btn btn-sm btn-info" data-toggle="tooltip" title="搜索信件">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</div>
					<%--<div class="form-group pull-right">--%>
						<%--<a class="btn btn-sm btn-success" data-toggle="tooltip" title="添加菜品" href="food_add_form.html" role="button"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;添加菜品</a>--%>
					<%--</div>--%>
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
								信件名
							</th>
							<th>
								所属用户
							</th>
							<th>
								信件标题
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${letters}" var="letter">
						<tr>
							<th>
								${letter.id}
							</th>
							<td>
								${letter.lettername}
							</td>
							<td>
								 ${letter.belonguser}
							</td>
							<td>
									${letter.lettercontext}
							</td>

							<td>
								<a class="btn btn-xs btn-warning" data-toggle="tooltip" title="修改信件" href="letter_edit_form.html?id=${letter.id}" role="button">
									<span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>

								<button type="button" class="btn btn-xs btn-danger"  data-toggle="modal" data-toggle="tooltip" onclick="delConfirm('${letter.id}')" title="删除信件"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
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
						<c:forEach begin="0" end="${lpages-1}" var="i">
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
			</div><!--ending panel-->
		</div>
	</div><!--ending 2th row-->
	</div><!--ending container-->
	<!--删除确认框-->
	<div class="modal fade" id="delConfirmModal">
	      <input type="hidden" id="url" />
		<del:delcase/>
	</div><!-- /.modal -->
	<script>
        function jumptopage(page){
            var keyword=$('#a_ln').val();
            location.href="letter_list.html?a_ln="+keyword+"&pageno="+page;
            return false;
        }
		function delConfirm(id){
			$('#url').val('letter_del.html?id='+id);
			$('#delConfirmModal').modal();
		}
		function delSubmit(){
			location.replace($('#url').val());
		}
	</script>
</body>
</html>