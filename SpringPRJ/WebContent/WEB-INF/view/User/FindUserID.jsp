<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<form action="/FindUserIDProc.do" method="post">
		<div>이메일 주소를 입력해주세요</div>
		<div style="display: flex">
			<input type="email" name="email" id="email">
			<input type="submit" value="확인" id="submitBtn">
		</div>
	</form>
</body>
</html>