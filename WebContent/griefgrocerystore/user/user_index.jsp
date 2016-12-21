<%@page pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>index</title>

<link href="/griefgrocerystore/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/griefgrocerystore/css/style2.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="/griefgrocerystore/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- for-gallery-rotation -->
<script src="/griefgrocerystore/js/modernizr.custom.97074.js"></script>
<!-- //for-gallery-rotation -->
<!-- FlexSlider -->
<link rel="stylesheet" href="/griefgrocerystore/css/flexslider.css" type="text/css" media="screen" />
<script defer src="/griefgrocerystore/js/jquery.flexslider.js"></script>

<script type="text/javascript">
						$(window).load(function(){
						  $('.flexslider').flexslider({
							animation: "slide",
							start: function(slider){
							  $('body').removeClass('loading');
							}
						  });
						});
					  </script>
<!-- //FlexSlider -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="/griefgrocerystore/js/move-top.js"></script>
<script type="text/javascript" src="/griefgrocerystore/js/easing.js"></script>
<!-- start-smoth-scrolling -->

</head>

<body style="background-color:#E6E6FA">
<jsp:include page="user_nav.jsp">
	<jsp:param name="par" value="index" />
</jsp:include>

<!-- welcome -->
	<div class="welcome">
		<div class="container">
			<h3>欢迎 ${loginName} 同学 ! (●'◡'●)</h3>
			<p class="ever">欢迎来到解忧杂货铺，您可以在这里解除忧愁</p>
			<div class="welcome-grids">
				<div class="col-md-3 welcome-grid">
					<div class="welcome-grd">
						<div class="icons">
							<span class="glyphicon glyphicon-hourglass" aria-hidden="true"></span>
						</div>
						<h4>写信</h4>
						<p>你可以在写信功能中，写一封信，会有很多网友为你解忧哦！</p>
					</div>
				</div>
				<div class="col-md-3 welcome-grid">
					<div class="welcome-grd">
						<div class="icons">
							<span class="glyphicon glyphicon-fire" aria-hidden="true"></span>
						</div>
						<h4>未来计算器</h4>
						<p>我们为您提供了一种可以计算未来的计算器</p>
					</div>
				</div>
				<div class="col-md-3 welcome-grid">
					<div class="welcome-grd">
						<div class="icons">
							<span class="glyphicon glyphicon-filter" aria-hidden="true"></span>
						</div>
						<h4>聊天机器人</h4>
						<p>我们为您提供了可以供您娱乐的聊天机器人</p>
					</div>
				</div>
				<div class="col-md-3 welcome-grid">
					<div class="welcome-grd">
						<div class="icons">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
						</div>
						<h4>致信</h4>
						<p>最后祝您愉快的使用，我们期待您的建议</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //welcome -->
<!-- services -->
	<div id="services" class="services">
		<div class="container">
			<h3>广场</h3>
			<p class="ever">这里有很多网友的信件，您可以选择在这里帮助网友解忧</p>
			<div class="services-top">
				<div class="col-md-6 services-top-left">
					<c:forEach items="${letters}" var="letter">
					<form action="/griefgrocerystore/user/reply.html">
						<input type="hidden" name="replyuserid" value="${loginId}">
						<input type="hidden" name="letterid" value="${letter.id}">
						<input type="hidden" name="belonguser" value="${letter.belonguser}">
					<div class="services-top-main">
						<div class="col-md-6 services-left service-img">
							<a href="" class=" mask b-link-stripe b-animate-go   swipebox"  title="">
								<img src="${letter.stamppc}" alt="" class="img-responsive" width="100" height="100" />
							</a>
						</div>
						<div class="col-md-6 services-left">
							<h4>${letter.lettername}</h4><p>  By.${letter.belonguser}</p>
							<span>${letter.lettercontext}</span>
							<input type="text" name="content" class="form-control">
							<button type="submit" class="btn btn-info">回复</button>
							<a class="btn btn-danger" href="/griefgrocerystore/user/reply_look.html?l_id=${letter.id}&u_id=${loginId}">查看回复</a>
							<div class="clearfix"></div>
						</div>
					</div>
					</form>
						</c:forEach>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
				<!--swipebox -->	
				<link rel="stylesheet" href="css/swipebox.css">
					<script src="../js/jquery.swipebox.min.js"></script>
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
					</script>
				<!--//swipebox Ends -->
		</div>
	</div>
	<div class="services1">
		<div class="container">
			<h3>未来计算器</h3>
			<p class="ever">您是否对未来充满忧虑？不用担心，我们为您提供了未来计算器，在这里您可以预知未来的自己</p>
			<div class="services-grids">
				<div class="col-md-4 services-grid">
					<div class="para">
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						<p>这里只需您简单的填写我们的问题，您就可以预知自己</p>
					</div>
				</div>
				<div class="col-md-4 services-grid">
					<div class="para">
						<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
						<p>未来您是什么性格？会经历什么事情？我猜您一定非常渴望知道</p>
					</div>
				</div>
				<div class="col-md-4 services-grid">
					<div class="para">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>未来您会有什么样的职业发展，我们全程为您解答</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

	</div>
<!-- //gallery -->



<!--//footer-->
<!-- for bootstrap working -->
		<script src="/griefgrocerystore/js/bootstrap.js"> </script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>

</body>
</html>