<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />


<script type="text/javascript" charset="utf-8" src="edter/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="edter/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="edter/lang/zh-cn/zh-cn.js"></script>
    <style type="text/css">
    .xinzhi{
        background: url(images/slide_2.jpg);
        background-repeat:no-repeat;
        background-position:bottom;
    }

    </style>

</head>

<body >
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






  <div class="xinzhi">
    <div class="container">
     <div class="row">
      <div class="col-xs-12">
        <h1 style="text-align: center">写信</h1>
        </br>
        <script id="editor" type="text/plain" style="width:1024px;height:500px;margin-left: 30px;"></script>
      </div>
     </div>
     </br>
     <div class="row">
     <div class="col-xs-10">
     </div>
     <div class="col-xs-2">
    <a   data-toggle="modal" data-target="#myModal2" class="btn btn-primary btn-large">提交</a>
   </div>

   
     <!--  弹出框 -->
      <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
               &nbsp &nbsp &nbsp 
               <font face="微软雅黑" >提示！！</font>
            </h4>
         </div>
         <div class="modal-body">
          <h3>是否提交</h3>
 

         </div>
         <div class="modal-footer">
            
			    <a href="wode.wode.jsp" class="btn  btn-primary">确认</a>
            
            </div><!-- 弹出框结束 -->
     </div>
     </div>
    </div>
 <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    </script>
	
    <script type="text/javascript" src="http://cdn.gbtags.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.gbtags.com/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>