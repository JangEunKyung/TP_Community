<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="..css/booststrap.css">
<link rel="stylesheet" href="../css/login.css"/>
<title>LoginPage</title>
</head>
<body>
	<div class="bg">
		<div class="outerwrap">
			<div class="innerwrap">
				
				<div class="HB">
					<h1>Academy Community</h1>
				</div>
					<div class="login">
				
					<h1>LOGIN</h1>
					  
					<div class = "jumbotron" style="padding-top: 20px;">
						<form method = "post" action="first_pageAction.jsp">
					<div class="id">
						<input type="text" class ="form-control" placeholder="아이디" id="user_id" name="user_id" maxlength ="20">
					</div>
					
					<div class="pw">
						<input type="password" class ="form-control" placeholder="비밀번호" id="user_pass" name="user_pass" maxlength ="20">
					</div>
					
					<div class="btn">
						<input type="submit" class="btn btn-primary form-control" value="로그인"></a>
					</div> </form>
					</div>
					
					<div class="btn">
						<a href ="../jsp/join.jsp" ><input type= "submit" value = "회원가입"></a>
					</div>
					      
				</div>
			</div>
		</div>
	</div>
</body>
</html>