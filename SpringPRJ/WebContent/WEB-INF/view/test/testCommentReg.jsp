<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	댓글 작성하기
	<br />
	<form action="/test/commentRegProc.do" method="post">
	댓글란
	<input type="text" name="comment" placeholder="후기를 남겨주세요." maxlength="500" style="width:300px" />
	<input type="submit" value="확인">
	
	</form>
</body>
</html>