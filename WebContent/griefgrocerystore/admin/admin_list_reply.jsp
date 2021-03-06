<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<%@ page pageEncoding="UTF-8" import="java.sql.*"
import="java.util.*,cn.edu.neusoft.meal.domain.*"
 %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="head.jsp">
		<jsp:param value="信件回复信息列表" name="title"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="admin_nav.jsp">
		<jsp:param value="reply_s" name="fun"/>
	</jsp:include>
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-info">
			<div class="panel-heading">
				<form class="form-inline" role="search">
					<div class="form-group">
						<input class="form-control" type="text" name="a_ln" id="a_ln" value="${param.a_ln}" placeholder="按回复内容查询" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-sm btn-info" data-toggle="tooltip" title="搜索信件">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
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
								回复内容
							</th>
							<th>
								回复者
							</th>
							<th>
								回复的信件
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${replys}" var="reply">
						<tr>
							<th>
								${reply.id}
							</th>
							<td>
								${reply.content}
							</td>
							<td>
								<jsp:include page="/griefgrocerystore/user/reply_user_name.html"><jsp:param name="u_id" value="${reply.replyuserid}"/></jsp:include>
							</td>
							<td>
								<jsp:include page="/griefgrocerystore/user/reply_letter.html"><jsp:param name="l_id" value="${reply.letterid}"/></jsp:include>
							</td>
							<td>
								<button type="button" class="btn btn-xs btn-danger"  data-toggle="modal" data-toggle="tooltip" onclick="delConfirm('${reply.id}')" title="删除回复"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
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
						<c:forEach begin="0" end="${rpages-1}" var="i">
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
		<mytag:delcase url="reply_del.html"/>
	    <mytag:jumptopage url="reply_list.html" keyword="a_ln"/>
</body>
</html>