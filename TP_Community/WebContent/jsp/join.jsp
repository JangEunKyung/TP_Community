<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="..css/booststrap.css">
<link rel="stylesheet" href="../css/login.css"/>
<title>JoinPage</title>
</head>
<body>
	<div class="bg">
		<div class="outerwrap">
			<div class="innerwrap">
				
				<div class="HB">
					<h1>Academy Community</h1>
				</div>
					<div class="join">
				
					<h1>JOIN</h1>
					<div class = "jumbotron" style="padding-top: 20px;">
					<form method ="post" action="joinAction.jsp">
						<div class="id">
							<input type="text" class ="form-control" placeholder="아이디" id="user_id" name="user_id" maxlength ="20">
						</div>
						
						<div class="pw">
							<input type="password" class ="form-control" placeholder="비밀번호" id="user_pass" name="user_pass" maxlength ="20">
						</div>
						<div class="pw">
							<input type="password" class ="form-control" placeholder="비밀번호 확인" id="user_pass2" name="user_pass2" maxlength ="20">
						</div>
						
						<div class="pw">
							<input type="text" class ="form-control" placeholder="이름" id="user_name" name="user_name" maxlength ="20">
						</div>
						<div class="pw">
							<input type="email" class ="form-control" placeholder="이메일" id="user_email" name="user_email" maxlength ="50">
						</div>
						
						<div>
							남자 <input type="radio" name="user_gen" value="남자" checked="checked">
	    					여자 <input type="radio" name="user_gen" value="여자" > <p>
						</div>
																
						<div class="pw">
							<input type="text" class ="form-control" placeholder="수업명" id="user_class" name="user_class" maxlength ="50">
						</div>
						
						<div class="btn">
							<input type="submit" class="btn btn-primary form-control" value="가입"></a>
						</div>
					</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>