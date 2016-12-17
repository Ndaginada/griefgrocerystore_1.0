<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
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

<body bgcolor="#6495ed">
<!-- ----------------------------------------------------------------导航栏 --------------------------------------------------------------------->
<jsp:include page="user_nav.jsp">
	<jsp:param name="par" value="shop" />
</jsp:include>
<!-- ---------------------------------------------------------------邮票兑换---------------------------------------------------------------- -->
<div id="gallery" class="gallery">
		<div class="container">
			<h3 style="color: snow">邮票专区 </h3>
			<p class="ever" style="color: snow">在这里你可以使用积分兑换你所需要的东西</p>
			<div class="gallery-grids">
				<section>
					<ul id="da-thumbs" class="da-thumbs">
						<c:forEach items="${stamps}" var="stamp">
						<li>
							<a  href="/griefgrocerystore/user/buy_stamp.html?id=${stamp.stampid}" class="btn mask b-link-stripe b-animate-go   swipebox" title="">
								<img src="${stamp.stamppc}" alt="" />
								<div>
									<h5 >选择</h5>
									<span>点击兑换</span>
									<span>所需积分：${stamp.stampscore}</span>
								</div>
							</a>
						</li>
						</c:forEach>
							<div class="clearfix"> </div>
					</ul>

				</section>
				<!--------------------------------------------------------------- 信纸兑换------------------------------------------------------ -->
				<%--<div id="gallery" class="gallery">--%>
					<%--<div class="container">--%>
						<%--<h3>信纸专区</h3>--%>
						<%--<p class="ever">在这里你可以使用积分兑换你所需要的东西</p>--%>
						<%--<div class="gallery-grids">--%>
							<%--<section>--%>
								<%--<ul id="da-thumbs" class="da-thumbs">--%>
									<%--<li>--%>
										<%--<!-- 这里可以改点击图片后链接 -->--%>
										<%--<a href="../images/wan.png" class=" mask b-link-stripe b-animate-go   swipebox" title="">--%>
											<%--<img src="../images/wan.png" alt="" />--%>
											<%--<div>--%>
												<%--<h5>选择</h5>--%>
												<%--<span>点击兑换</span>--%>
											<%--</div>--%>
										<%--</a>--%>
									<%--</li>--%>
									<%--<div class="clearfix"> </div>--%>
								<%--</ul>--%>

							<%--</section>--%>
				<!------------------------------------------------------------------- end---------------------------------------------------------------------------------->

				<script type="text/javascript" src="/griefgrocerystore/js/jquery.hoverdir.js"></script>
				<script type="text/javascript">
					$(function() {
					
						$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

					});
				</script>
				
			</div>
		</div>
</div>
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