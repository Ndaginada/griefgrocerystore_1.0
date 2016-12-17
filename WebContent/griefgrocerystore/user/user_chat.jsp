<%@page pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="/griefgrocerystore/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/griefgrocerystore/css/style2.css" rel="stylesheet" type="text/css" media="all" />
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
            background: #f5f5f5 url('/griefgrocerystore/dist_style/images/bg.jpg') no-repeat center;
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
<jsp:include page="user_nav.jsp">
	<jsp:param name="par" value="chat" />
</jsp:include>


<div id="chat"></div>
<script src="/griefgrocerystore/dist_style/vue.js"></script>
<script src="/griefgrocerystore/dist_style/main.js"></script>

</body>
</html>