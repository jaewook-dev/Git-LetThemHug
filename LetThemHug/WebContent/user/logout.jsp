<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
	session.invalidate();	//���� ����
%>
<script type="text/javascript">
	location.href='<%= request.getContextPath()%>/index.jsp';
</script>