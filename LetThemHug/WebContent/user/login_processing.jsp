<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>


<%
	request.setCharacterEncoding("euc-kr");

	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String alert = null;

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	Class.forName("com.mysql.jdbc.Driver");

	String jdbcDriver = "jdbc:mysql://localhost:3306/LTHdb?" + "useUnicode=true&characterEncoding=euckr";
	String dbUser = "LTHdbid";
	String dbPass = "LTHdbpw";

	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	pstmt = conn
			.prepareStatement("SELECT user_id, user_pw, user_level, user_name FROM tb_user WHERE user_id = ?");
	pstmt.setString(1, user_id);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		if (user_pw.equals(rs.getString("user_pw"))) {
%>
			<script type="text/javascript">
			location.href='<%=request.getContextPath()%>/index.jsp';
			</script>
<%
			session.setAttribute("S_NAME", rs.getString("user_name"));
			session.setAttribute("S_LEVEL", rs.getString("user_level"));

	} else {
			alert = "ID 혹은 비밀번호를 확인해주세요";
%>
			<script type="text/javascript">
			alert('<%=alert%>');
			</script>
<%
	}
	} else {
		alert = "ID 혹은 비밀번호를 확인해주세요";
%>
		<script type="text/javascript">
		alert('<%=alert%>');
</script>
<%
	}
%>


<html>
<head>
<title>Missing Keeper</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form"
					action="<%=request.getContextPath()%>/user/login_processing.jsp"
					method="post">
					<span class="login100-form-title p-b-49"> Login </span>
					<div class="wrap-input100 validate-input m-b-23"
						data-validate="ID를 입력하세요">
						<span class="label-input100">ID</span> <input class="input100"
							type="text" name="user_id" placeholder="Type your username">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="비밀번호를 입력하세요">
						<span class="label-input100">Password</span> <input
							class="input100" type="password" name="user_pw"
							placeholder="Type your password"> <span
							class="focus-input100" data-symbol="&#xf190;"></span>
					</div>

					<div class="text-right p-t-8 p-b-31">
						<a href="#"> 비밀번호를 잊으셨나요? </a>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">Login</button>
						</div>
					</div>
				</form>
				<div class="txt1 text-center p-t-54 p-b-20">
					<span> 다른 계정으로 로그인하기 </span>
				</div>

				<div class="flex-c-m">
					<a href="#" class="login100-social-item bg1"> <i
						class="fa fa-facebook"></i>
					</a> <a href="#" class="login100-social-item bg2"> <i
						class="fa fa-twitter"></i>
					</a> <a href="#" class="login100-social-item bg3"> <i
						class="fa fa-google"></i>
					</a>
				</div>

				<div class="flex-col-c p-t-155">

					<a href="<%=request.getContextPath()%>/user/user_insert_form.jsp"
						class="txt2"> 회원가입 </a>
				</div>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>