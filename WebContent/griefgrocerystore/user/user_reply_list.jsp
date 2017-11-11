<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/griefgrocerystore/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <script src="/griefgrocerystore/js/jquery-1.11.1.min.js"></script>
    <script src="/griefgrocerystore/js/bootstrap.js"> </script>
    <link href="/griefgrocerystore/css/style2.css" rel="stylesheet" type="text/css" media="all" />
    <title>查看回复</title>
</head>
<body>
<jsp:include page="user_nav.jsp">
    <jsp:param name="par" value="index" />
</jsp:include>
<pre>
    <%--letter,reply,user--%>
    <h2 style="text-align: center">信件名：${letter.lettername}</h2>
    <h4 style="text-align: center">笔者：${letter.belonguser}</h4>
    <p style="font-size:large;text-indent: 2em;">${letter.lettercontext}</p>
      <c:forEach var="reply" items="${replys}">
          <div class="row" id="${reply.id}">
              <div class="panel panel-default">
                  <div class="panel-body">
     <div class="col-xs-2">
         <jsp:include page="/griefgrocerystore/user/reply_user.html">
             <jsp:param name="id" value="${reply.replyuserid}"/>
         </jsp:include>
     </div>
    <div class="col-xs-8">
    <p>${reply.content}</p>
    </div>
                  </div>
            </div>
          </div>
        </c:forEach>
        <form action="/griefgrocerystore/user/reply.html">
         <input type="hidden" name="replyuserid" value="${loginId}">
		 <input type="hidden" name="letterid" value="${letter.id}">
            <input type="hidden" name="belonguser" value="${letter.belonguser}">
        <textarea name="content" rows="2" cols="20" id="tb_ReplyBody___Editor" style="height:290px;;width:100%;"></textarea>
            <div class="col-xs-4">
            <button type="submit" class="btn btn-info btn-lg">回复</button>
            </div>
            <a href="/griefgrocerystore/user/hello.html" class="btn-lg btn btn-danger">返回</a>
        </form>
    </pre>
</body>
</html>
