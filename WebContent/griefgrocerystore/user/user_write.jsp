<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<link href="/griefgrocerystore/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/griefgrocerystore/css/style2.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
    .xinzhi{
        background: url(/griefgrocerystore/images/login_bg.jpg);
        background-repeat:no-repeat;
        background-position:bottom;
    }

    </style>

</head>

<body >
<!-- ---------------------------------------------------------------------导航栏 ----------------------------------------------------------------->
<jsp:include page="user_nav.jsp">
    <jsp:param name="par" value="write" />
</jsp:include>
<!---------------------------------------------------------------------- end ------------------------------------------------------------------>

<head><meta name="designer" content="csdn design team" /><meta name="ROBOTS" content="NOINDEX, NOFOLLOW" /><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><link rel="stylesheet" type="text/css" href="/PointForum/ui/styles/default/BBSGlobal.css" />
    <link rel="stylesheet" type="text/css" href="/PointForum/ui/styles/default/mzform.css" />
    <title>
        回 复
    </title>
    <style type="text/css">
        /* user info */
        .item td.info{width: 165px;vertical-align: top;background-color: #CDD3DA;padding:8px 0px 0px 8px; }
        .item td.info a{color:Black;}
        .item td.info ul,.item td.info li, .item td.info dl{margin: 0px; list-style-type: none; line-height: 180%;}
        .item td.info ul{clear:both;}
        .item td.info  textarea{font-size:12px; color:#666666; font-family:ËÎÌå; width: 160px; border:none; overflow:hidden;

            background-color:transparent; height:30px;}
        .topic td.info ul{height: 300px;}
        table.replyPost{width:100%;height:490px}
        table.replyPost td.main{color: #4D577A;}
        table.replyPost .main a{color: #000000;}
        table.replyPost .submitRegion{padding: 8px 0;}

    </style>

    <script type="text/javascript">
        <!--
        try { document.domain="csdn.net"; }  catch (ex){};
        function iframeAutoFit()
        {
            try
            {
                if(window!=parent)
                {
                    var obj = parent.document.getElementById("replyframe");
                    if(obj)
                    {
                        var h1=0, h2=0;
                        obj.parentNode.style.height = a[i].offsetHeight +"px";
                        obj.style.height = "10px";
                        if(document.documentElement&&document.documentElement.scrollHeight)
                        {
                            h1=document.documentElement.scrollHeight;
                        }
                        if(document.body) h2=document.body.scrollHeight;
                        var h=Math.max(h1, h2);
                        if(document.all) {h += 4;}
                        if(window.opera) {h += 1;}
                        obj.style.height = obj.parentNode.style.height = h +"px";

                    }

                }

            }
            catch (ex){}
        }
        if(window.attachEvent)
        {
            window.attachEvent("onload",  iframeAutoFit);
        }
        else if(window.addEventListener)
        {
            window.addEventListener('load',  iframeAutoFit,  false);
        }


        //-->
    </script>

</head>
<body style="width: 100%; padding: 0; margin: 0;">



<table class="item replyPost" cellspacing="1" style="margin: 0; border: none;">
    <tr>

        <td class="main">




            <div style="width: 99.8%; max-width: 100%;">
                <form name="form1" method="post" action="/griefgrocerystore/user/writeletter_do.html?user_id=${loginId}" id="form1">
                    <input type="hidden" name="belonguser" value="${loginName}">
                    <br/><br/><br/>
                    <div>
                        信件标题：<input type="text" name="lettername" id="__VIEWSTATE"  />
                    </div>
                    <c:forEach items="${usersstamps}" var="stamps" >
                     <img src="${stamps.stamppc}"><input type="radio" name="stamppc" value="${stamps.stamppc}" >
                    </c:forEach>
            <br/><br/><br/>
                    信件内容：<br/>
                    <textarea name="lettercontext" rows="2" cols="20" id="tb_ReplyBody___Editor" style="height:290px;;width:100%;"></textarea><script language="javascript" type="text/javascript" src="/EditorControl/MzUBB/CsdnUbbEditor.js"></script><script type="text/javascript">/*<![CDATA[*/
                var ubb = new CsdnUbbEditor("tb_ReplyBody___Editor");
                ubb.contentLength = 8000;
                ubb.helpLink = "/help/ubb.html";
                ubb.render("fontsize|space|bold|italic|underline|strikethrough|color|code|space|url|email|image|space|left|center|right");
                /*]]>*/</script>
                    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
                 <div class="submitRegion" style="padding: 8px 0">
                    <input type="submit" name="bt_Submit" value="提交信件" id="bt_Submit" class="button col-xs-3" />&nbsp;</div>

                    <script type="text/javascript">
                    document.getElementById("bt_Submit").onclick=function()
                    {
                        setTimeout(function()
                        {
                            var btn = document.getElementById("bt_Submit");
                            btn.disabled = true;
                            setTimeout(function(){btn.disabled=false}, 10000);
                        },10);
                    }
                   </script>


                </form>

            </div>

        </td>
    </tr>
</table>


    <script type="text/javascript" src="http://cdn.gbtags.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.gbtags.com/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>