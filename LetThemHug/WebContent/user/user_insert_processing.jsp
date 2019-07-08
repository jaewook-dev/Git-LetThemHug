<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%
	request.setCharacterEncoding("euc-kr");

	// user_insert_form.jsp���� �� �޾ƿ�
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String user_level = "�����";
	String user_name = request.getParameter("user_name");
	String user_email = request.getParameter("user_email");
	String alert = null;

	Connection conn = null;
	PreparedStatement pstmt_insert = null;
	PreparedStatement pstmt_select = null;
	ResultSet rs = null;

	// ����̹� �ε�
	Class.forName("com.mysql.jdbc.Driver");

	// DB ����
	String jdbcDriver = "jdbc:mysql://localhost:3306/LTHdb?" + "useUnicode=true&characterEncoding=euckr";
	String dbUser = "LTHdbid";
	String dbPass = "LTHdbpw";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	pstmt_select = conn.prepareStatement("SELECT * FROM tb_user WHERE user_id = ?");
	pstmt_select.setString(1, user_id);
	rs = pstmt_select.executeQuery();
	
	if(rs.next()) {
		alert = "�ߺ��� ���̵� �ֽ��ϴ�";
%>
		<script type="text/javascript">
		alert('<%=alert%>');
		location.href='<%=request.getContextPath()%>/user/user_insert_form.jsp';
		</script>
<%
	} else {
		// Query������ ���� statement �Ǵ� prepareStatement ��ü����
		pstmt_insert = conn.prepareStatement("INSERT INTO tb_user VALUES (?, ?, ?, ?, ?)");
		pstmt_insert.setString(1, user_id);
		pstmt_insert.setString(2, user_pw);
		pstmt_insert.setString(3, user_level);
		pstmt_insert.setString(4, user_name);
		pstmt_insert.setString(5, user_email);

		// Query���� ����
		int result = pstmt_insert.executeUpdate();
		

		pstmt_insert.close();
		conn.close();

		response.sendRedirect(request.getContextPath() + "/user/login.jsp");
	}

%>
