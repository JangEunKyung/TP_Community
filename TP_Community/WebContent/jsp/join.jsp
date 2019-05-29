<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinPage</title>
<link rel="stylesheet" href="../css/join.css"/>
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
					
					
					<div class="id">
						<input type="text" id="userid" name="userid" value="아이디">
					</div>
					
					<div class="pw">
						<input type="text" id="userpw" name="userpw" value="비밀번호">
					</div>
					
					<div class="email">
						<input type="text" id="email" name="email" value="email">
					</div>
					
					<div class="selectGender">
						<select>
							<option>성별을 선택해주세요.</option>
							<option>남</option>
							<option>여</option>
						</select>
					</div>
					
					
					<div class="selectWrap">
						<select>
							<option>클래스</option>
						</select>
					</div>
					
					<div class="btn">
						<a href = "../jsp/first_page.jsp"><input type= "button" value = "회원가입완료"></a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>