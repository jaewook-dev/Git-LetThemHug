<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

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
	if(S_NAME == null) {
%>
	<nav class="right">
		<a href="<%=request.getContextPath()%>/user/login.jsp" class="button alt"> Log in </a>
	</nav>
<%	
	} else {
%>
	<nav class="right">
		<a href="<%=request.getContextPath()%>/user/logout.jsp" class="button alt"> Logout </a>
	</nav>
<%		
	}
%>

</header>
