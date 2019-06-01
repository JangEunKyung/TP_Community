<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
<title>LoginPage</title>
</head>
<body>
	<%
		 session.invalidate();
	%>
	<script>
		location.href = 'first_page.jsp'
	</script>
</body>
</html>