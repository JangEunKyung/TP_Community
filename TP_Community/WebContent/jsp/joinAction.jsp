<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="user_id" />
<jsp:setProperty name="user" property="user_pass" /> 
<jsp:setProperty name="user" property="user_pass2" /> 
<jsp:setProperty name="user" property="user_name" />
<jsp:setProperty name="user" property="user_email" /> 
<jsp:setProperty name="user" property="user_gen" />
<jsp:setProperty name="user" property="user_class" /> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
<title>LoginPage</title>
</head>
<body>
	<%
		if(user.getUser_id() == null || user.getUser_pass() == null || user.getUser_pass2() == null || user.getUser_name() == null || user.getUser_email() == null 
			|| user.getUser_gen() == null || user.getUser_class() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('칸을 모두 입력해주세요.')");
			script.println("history.back()");
			script.println("</script>");			
		}
		else if(user.getUser_pass().equals(user.getUser_pass2())){
				UserDAO dao = new UserDAO(); //인스턴스생성
	
				int result = dao.join(user);		
		
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('해당 아이디가 이미 존재합니다.')");
					script.println("history.back()");
					script.println("</script>");
					
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'first_page.jsp'");
					script.println("</script>");
				}
		}
		else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호가 일치하지 않습니다.')");
				script.println("history.back()");
				script.println("</script>");
		}
	%>
</body>
</html>