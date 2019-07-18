<%@page import="poly.dto.NotiDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	NotiDTO nDTO = (NotiDTO)request.getAttribute("nDTO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/noti/notiModifyProc.do" method="post">
	<input type="hidden" name="seq" value="<%=nDTO.getSeq() %>">
	<table border="1">
		<col width="100px" />
		<col width="500px" />
		<tr>
			<td align="center">제목</td>
			<td><input type="text" name="title" maxlength="100" style="width:450px" value="<%=nDTO.getTitle() %>"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea name="contents" style="width:550px; height:400px"><%=nDTO.getContent()%></textarea>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<input type="submit" value="확인" />
				<input type="button" onclick="location.href='/noti/notiDetail.do?seq=<%=nDTO.getSeq() %>>'" value="취소" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>