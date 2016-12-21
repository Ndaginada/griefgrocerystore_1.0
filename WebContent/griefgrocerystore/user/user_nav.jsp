<%--
  Created by IntelliJ IDEA.
  User: Kkai
  Date: 2016/12/9
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<!-- header -->
<%@page pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
    <div class="container">
        <div class="header-nav">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <a class="navbar-brand" href="/griefgrocerystore/index.html">解忧杂货铺<span>使你快乐</span></a>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="hvr-sweep-to-bottom <c:if test="${param.par=='index'}">active</c:if>"> <a href="/griefgrocerystore/user/hello.html">主页</a></li>
                        <li class="hvr-sweep-to-bottom <c:if test="${param.par=='write'}">active</c:if>"><a href="/griefgrocerystore/user/writeletter.html" class="scroll">写信</a></li>
                        <%--<li class="hvr-sweep-to-bottom"><a href="weilaijisuanqi.weilaijisuanqi.jsp" class="scroll">未来计算器</a></li>--%>
                        <li class="hvr-sweep-to-bottom <c:if test="${param.par=='chat'}">active</c:if>"><a href="/griefgrocerystore/user/chatroot.html" class="scroll">聊天机器人</a></li>
                        <li class="hvr-sweep-to-bottom <c:if test="${param.par=='my'}">active</c:if>"><a href="/griefgrocerystore/user/my_info.html" class="scroll">我的</a></li>
                        <li class="hvr-sweep-to-bottom <c:if test="${param.par=='shop'}">active</c:if>"><a href="/griefgrocerystore/user/shop.html" class="scroll">积分商城</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<!-- //header -->