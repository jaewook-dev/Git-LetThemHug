<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</head>
<body>
	<%
		String S_NAME = (String) session.getAttribute("S_NAME");
		String S_LEVEL = (String) session.getAttribute("S_LEVEL");
	%>
	<div class="container">
		<!-- Header -->
		<header id="header">
			<nav class="left">
				<a href="#menu"><span> Menu </span></a>
			</nav>
			<a href="index.jsp" class="logo"> Missing Keeper </a>
			<%
				if (S_NAME == null) {
			%>
			<div>
			<nav class="right">
				<button type="button" class="button alt" id="login_btn">
					Log in</button>
			</nav>
			</div>

	<!-- The login Modal -->
	<div class="modal fade" id="login_modal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">알림!</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body text-center">test...</div>

				<!-- Modal footer -->
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<%
		} else {
	%>
	<nav class="right">
		<a href="<%=request.getContextPath()%>/user/logout.jsp"
			class="button alt"> Logout </a>
	</nav>
	<%
		}
	%>
	</header>
	</div>
</body>
<script>
	$('#login_btn').click(function() {
		$('#login_modal').modal('show');
	});
</script>
</html>





