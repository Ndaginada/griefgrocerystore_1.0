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
        <form action="/griefgrocerystore/buy_stamp_do.html" >
        <h3 style="color: snow">确认兑换</h3>
        <p class="ever" style="color: snow">点击确认按钮进行兑换</p>
            <pre>
                <span>用户：${loginUser.userName}</span>
                <span>所剩积分：${loginUser.score}</span>
                <span>所需积分：${stamp.stampscore}</span></pre>

            <input type="hidden" name="stampid" value="${stamp.stampid}">
            <input type="hidden" name="stampscore" value="${stamp.stampscore}">

        <div class="gallery-grids">
            <section>
                <ul id="da-thumbs" class="da-thumbs">
                    <li>
                        <a  href="" class="btn mask b-link-stripe b-animate-go   swipebox" title="">
                            <img src="${stamp.stamppc}" />
                        </a>
                    </li>
                </ul>
            </section>
        </div>

<br/><br/><br/><br/><br/>

        <div class="form-group">
        <div class="col-xs-7" style="text-align: center">
            <button type="submit" class="btn  btn-success btn-lg">兑换</button>
        </div>
        <div class="col-xs-1" style="text-align: center">
            <a href="/griefgrocerystore/shop.html" class="btn btn-danger btn-primary btn-lg">返回</a>
        </div>
        </div>
    </form>
</div>
</body>
</html>