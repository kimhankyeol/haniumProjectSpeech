<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<form action="/FindUserPwProc.do" method="post">
		<div>아이디를 입력해주세요</div>
		<div style="display: flex">
			<input type="text" name="id" id="id">
			<input type="submit" value="확인" id="submitBtn">
		</div>
	</form>
</body>
</html>