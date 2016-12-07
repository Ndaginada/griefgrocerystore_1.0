<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="head.jsp">
        <jsp:param value="管理员修改菜品信息" name="title"/>
    </jsp:include>
</head>
<body>
<jsp:include page="admin_nav.jsp">
    <jsp:param value="food_m" name="fun"/>
</jsp:include>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3 class="text-center text-primary">修 改 菜 品</h3>
        <form role="form" method="post" action="/mealsystem/admin/food_edit.html?id=${foods.id}"
              enctype="multipart/form-data">
            <table class="table table-hover table-bordered table-condensed">
                <tbody>
                <tr class="info">
                    <th class="text-center col-md-3">菜 名</th>
                    <td>
                        <input type="text" class="form-control" name="foodName" id="foodName" value="${foods.foodName}" required="required" />
                    </td>
                </tr>
                <tr class="warning">
                    <th class="text-center">特 色</th>
                    <td>
                        <textarea class="form-control" rows="3" name="feature" id="feature" required="required">${foods.feature}</textarea>
                    </td>
                </tr>
                <tr class="active">
                    <th class="text-center">食 材</th>
                    <td>
                        <textarea class="form-control" rows="3" name="material" id="material"  required="required">${foods.material}</textarea>
                    </td>
                </tr>
                <tr class="info">
                    <th class="text-center">类 型</th>
                    <td>
                        <select class="form-control" name="type" id="type">
                            <option value="">所有分类</option>
                            <c:forEach items="${types}" var="type">
                                <option value="${type.id}"
                                        <c:if test="${type.id==foods.type}">
                                        selected="selected"
                                        </c:if>
                                >
                                        ${type.typeName}</option>
                            </c:forEach>

                        </select>
                    </td>
                </tr>
                <tr class="warning">
                    <th class="text-center">价 格</th>
                    <td>
                        <input type="number" class="form-control" name="price" id="price" value="${foods.price}" required="required" />
                        <p class="help-block">单位：元</p>
                    </td>
                </tr>
                <tr class="active">
                    <th class="text-center">图 片</th>
                    <td>
                        <input type="file" id="img" name="img" />
                        <p class="help-block">请选择上传的菜品图片</p>
                        <img class="img-rounded" alt="Bootstrap Image Preview" src="${pageContext.servletContext.contextPath}/${foods.picture}" />
                    </td>
                </tr>
                <tr class="danger">
                    <th class="text-center">备 注</th>
                    <td>
                        <input type="text" class="form-control" name="comment" id="comment" value="${foods.comment}" required="required" />
                        <p class="help-block">-1代表正常菜，0代表厨师推荐，正整数代表特价菜价格。</p>
                    </td>
                </tr>
                <tr class="success">
                    <td class="text-center" colspan="2">
                        <button type="submit" class="btn btn-default">确认修改</button>
                    </td>
                </tr>
                </tbody>
            </table></form>
    </div>
    <div class="col-md-2"></div>
</div><!--ending 2th row-->
</div><!--ending container-->
</body>
</html>