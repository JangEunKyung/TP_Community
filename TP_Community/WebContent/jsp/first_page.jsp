<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
<link rel="stylesheet" href="../css/login.css"/>
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
					
					
					<div class="id">
						<input type="text" id="userid" name="userid" value="아이디">
					</div>
					
					<div class="pw">
						<input type="text" id="userpw" name="userpw" value="비밀번호">
					</div>
					
					<div class="selectWrap">
						<select>
							<option>클래스</option>
						</select>
					</div>
					
					<div class="btn">
						<a href = "../jsp/main.jsp"><input type="button" value="로그인"></a>
					</div>
					
					<div class="btn2">
						<a href ="../jsp/join.jsp" ><input type= "button" value = "회원가입"></a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>