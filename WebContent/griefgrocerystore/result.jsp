<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
</head>
<body>
<!--操作结果对话框-->
<div class="modal fade" id="modal-result" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
					×
				</button>
				<span class="modal-title" id="myModalLabel">
					提示信息
				</span>
			</div>
			<div class="modal-body">
					<h3 class="text-warning">${msg}</h3>
			</div>
			<div class="modal-footer">
       			<button type="button" class="btn btn-default" data-dismiss="modal"
       			 onclick="javascript:location.replace('${href}')">确定</button>
			</div>
		</div>
	</div>
</div>
<script>
	$('#modal-result').modal();
</script>
</body>
</html>