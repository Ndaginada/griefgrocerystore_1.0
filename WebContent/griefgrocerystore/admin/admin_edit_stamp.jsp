<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="head.jsp">
        <jsp:param value="修改邮票信息" name="title"/>
    </jsp:include>
</head>
<body>
<jsp:include page="admin_nav.jsp">
    <jsp:param value="stamp_s" name="fun"/>
</jsp:include>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3 class="text-center text-primary">修 改 邮 票</h3>
        <form role="form" method="post" action="/griefgrocerystore/admin/stamp_edit.html?stampid=${stamp.stampid}"
              enctype="multipart/form-data">
            <table class="table table-hover table-bordered table-condensed">
                <tbody>
                <tr class="info">
                    <th class="text-center col-md-3">邮 票 名</th>
                    <td>
                        <input type="text" class="form-control" name="stampname" id="foodName" value="${stamp.stampname}" required="required" />
                    </td>
                </tr>
                <tr class="warning">
                    <th class="text-center">价 格</th>
                    <td>
                        <input type="number" class="form-control" name="stampscore" id="price" value="${stamp.stampscore}" required="required" />
                        <p class="help-block">单位：分</p>
                    </td>
                </tr>
                <tr class="active">
                    <th class="text-center">图 片</th>
                    <td>
                        <input type="file" id="img" name="img" />
                        <p class="help-block">请选择上传的菜品图片</p>
                        <img class="img-rounded" alt="Bootstrap Image Preview" src="${stamp.stamppc}" />
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