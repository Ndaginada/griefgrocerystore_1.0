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
        body{
            background: url("/griefgrocerystore/images/login_bg.jpg") no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>

</head>

<body>
<!-- header -->
<jsp:include page="user_nav.jsp">
    <jsp:param name="par" value="my" />
</jsp:include>



<div class="container">
    <br/><br/><br/><br/><br/><br/><br/>
    <div class="row">
        <div class="col-xs-7">
            <h3 style="color: snow">我发送的信件</h3>
        <c:forEach items="${letters}" var="letter">
            <pre>
             <h3>${letter.lettername}</h3>
               <div class="col-xs-8">
                       ${letter.lettercontext}
              </div>
               <div class="col-xs-4">
                   <img src="${letter.stamppc}" class="img-rounded img-responsive" style="margin: -30px 1px 1px 1px" width="150" height="150" >
                   </div>
           </pre>
        </c:forEach>
            <h3 style="color: snow">我收到的回复</h3>
            <c:forEach items="${replys}" var="reply">
                <pre>
                    <h3>回复的信件：<jsp:include page="/griefgrocerystore/user/reply_letter.html"><jsp:param name="l_id" value="${reply.letterid}"/></jsp:include></h3>
               <div class="col-xs-8">
              回复的内容：${reply.content}
               </div>
               <div class="col-xs-4">
                     回复人:<jsp:include page="/griefgrocerystore/user/reply_user_name.html"><jsp:param name="u_id" value="${reply.replyuserid}"/></jsp:include>
               </div>
           </pre>
            </c:forEach>
    </div>
        <div class="col-xs-5">
             <pre>
             <h4><span class="glyphicon glyphicon-user" style="color:#333"></span>  个人信息：</h4>
             <img src="${user.icon}" height="88px" width="88px" style="margin-right:35px; margin-bottom:30px" class="img-circle"><span style="font-size:18px;"></span>
             用户名：<span>${user.userName}</span>
             所剩积分：<span>${user.score}</span>分
            </pre>
        </div>
            </div>
        </div>
    <script type="text/javascript" src="http://cdn.gbtags.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.gbtags.com/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>


</body>
</html>