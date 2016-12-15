<%@page pageEncoding="UTF-8"
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的</title>

    <link href="/griefgrocerystore/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/griefgrocerystore/css/style2.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        pre {
            background-color:rgba(0,0,0,0.2);
            margin:0px 0px 50px 0px;
            color:#EFF0F1;
            font-family: 'microsoft yahei' ,Arial,sans-serif;
            font-size:15px;
            overflow:-Scroll;overflow-x:hidden;
            white-space: pre-wrap;
            word-wrap: break-word;
        }

    </style>

</head>

<body background="/griefgrocerystore/images/login_bg.jpg">
<!-- header -->
<jsp:include page="user_nav.jsp">
    <jsp:param name="par" value="my" />
</jsp:include>



<div class="container">
    <br/><br/><br/><br/><br/><br/><br/>
    <div class="row">
        <div class="col-xs-7">
            <h3>我发送的信件</h3>
        <c:forEach items="${letters}" var="letter">
            <pre>
             <h1>${letter.lettername}</h1>
               <div class="col-xs-8">
                       ${letter.lettercontext}
              </div>
               <div class="col-xs-4">
         </div>
           </pre>
        </c:forEach>
    </div>
        <div class="col-xs-5">
             <pre>
             <h4><span class="glyphicon glyphicon-user" style="color:#333"></span>  个人信息：</h4>
             <img src="images/8.png" height="88px" width="88px" style="margin-right:35px; margin-bottom:30px" class="img-circle"><span style="font-size:18px;"></span>
             <span>${user.userName}</span>
             <span></span>
            </pre>
        </div>

            </div>
        </div>  <!--row -->
    <script type="text/javascript" src="http://cdn.gbtags.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.gbtags.com/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>


</body>
</html>