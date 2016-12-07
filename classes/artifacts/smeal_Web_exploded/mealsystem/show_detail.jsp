<%@page pageEncoding="UTF-8"

import="java.util.*"
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>菜品详细信息</title>
	<link rel="stylesheet" href="./bootstrap3.3.5/css/bootstrap.min.css">
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="./jquery1.11.3/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./bootstrap3.3.5/js/bootstrap.min.js"></script>
    <style>
		table.table tr th {
			vertical-align: middle;
		}
    </style>
</head>
<body>
<%
String s_id=request.getParameter("id");
int id=Integer.parseInt(s_id);
Object[] args=new Object[]{id};
Map food=DBUtitl.queryForMap("select * from food where id=?", args);
%>
	<p></p>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <table class="table table-hover table-bordered">
				<tbody>
                    <tr class="info">
						<th class="text-center">菜 名</th>
						<td><%=food.get("foodName") %></td>
					</tr>
					<tr class="warning">
						<th class="text-center">特 色</th>
						<td><%=food.get("feature") %></td>
					</tr>
					<tr class="active">
						<th class="text-center">食 材</th>
						<td><%=food.get("material") %></td>
					</tr>
					<tr class="info">
						<th class="text-center">类 型</th>
						<td><%=food.get("type") %></td>
					</tr>
					<tr class="warning">
						<th class="text-center">价 格</th>
						<td><%=food.get("price") %>元</td>
					</tr>
					<tr class="active">
						<th class="text-center">图 片</th>
						<td><img class="img-rounded" alt="Bootstrap Image Preview" src="../<%=food.get("picture") %>" /></td>
					</tr>
					<tr class="info">
						<th class="text-center">点 餐 率</th>
						<td><%=food.get("hits") %>次</td>
					</tr>
					<tr class="warning">
						<th class="text-center">备 注</th>
						<td><%=food.get("comment") %></td>
					</tr>
				</tbody>
			</table>
            <form>
            <div class="col-md-offset-4">
            	<button type="submit" onclick="javascript:location.href=buy.jsp" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-heart"></span> 加入点餐车</button>
            </div>
            </form>
            </div>
            <div class="col-md-3">
            </div>
        </div>
    </div>
</body>
</html>