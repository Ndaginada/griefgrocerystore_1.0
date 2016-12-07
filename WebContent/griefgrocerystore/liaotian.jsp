<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
 <style>
        *, *:before, *:after {
            box-sizing: border-box;
        }
        body, html {
            height: 100%;
            overflow: hidden;
        }
        body, ul {
            margin: 0;
            padding: 0;
        }
        body {
            color: #4d4d4d;
            font: 14px/1.4em 'Helvetica Neue', Helvetica, 'Microsoft Yahei', Arial, sans-serif;
            background: #f5f5f5 url('dist/images/bg.jpg') no-repeat center;
            background-size: cover;
            font-smoothing: antialiased;
        }
        ul {
            list-style: none;
        }
        #chat {
            margin: 20px auto;
            width: 800px;
        	height: 600px;
        }
    </style>
	
</head>

<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed"  >
						
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<a class="navbar-brand" href="index.index.jsp">解忧杂货铺<span>使你快乐</span></a>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					 <ul class="nav navbar-nav">
						<li class="hvr-sweep-to-bottom"><a href="hello.hello.jsp">主页</a></li>
						<li class="hvr-sweep-to-bottom"><a href="xiexin.xiexin.jsp" class="scroll">写信</a></li>
						<li class="hvr-sweep-to-bottom"><a href="weilaijisuanqi.weilaijisuanqi.jsp" class="scroll">未来计算器</a></li>
						<li class="hvr-sweep-to-bottom"><a href="liaotian.liaotian.jsp" class="scroll">聊天机器人</a></li>
						<li class="hvr-sweep-to-bottom"><a href="wode.wode.jsp" class="scroll">我的</a></li>
						<li class="hvr-sweep-to-bottom"><a href="jifenshop.jifenshop.jsp" class="scroll">积分商城</a></li>
					  </ul>
					</div><!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>


<div id="chat"></div>
<script src="dist/vue.js"></script>
<script src="dist/main.js"></script>

</body>
</html>