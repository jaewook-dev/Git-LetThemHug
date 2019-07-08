<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
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
		<!-- Header -->
		<header id="header">
			<nav class="left">
				<a href="#menu"><span> Menu </span></a>
			</nav>
			<a href="index.jsp" class="logo"> Missing Keeper </a>
			<%
				if (S_NAME == null) {
			%>
			<nav class="right">
				<a href="<%=request.getContextPath()%>/user/login.jsp"
			class="button alt"> LogIn </a>
			</nav>

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
</body>
<script>
	$('#login_btn').click(function() {
		$('#login_modal').modal('show');
	});
</script>
</html>





