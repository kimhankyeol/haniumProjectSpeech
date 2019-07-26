<%@page import="java.util.List"%>
<%@page import="poly.dto.FeedbackCommentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<FeedbackCommentDTO> fcDTOs = (List<FeedbackCommentDTO>)(request.getAttribute("fcDTO"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<% 	for(FeedbackCommentDTO fcDTO : fcDTOs) {%>
			<div style="min-width: 30%; max-width: 50%;
						margin:0 auto;
						text-align:center; border: 1px solid black; border-radius: 2px; padding: 3px;">
				<span style="padding:0 1px;"><%=fcDTO.getCommentNo() %></span>
				<span style="padding:0 1px;"><%=fcDTO.getRegDate() %></span>
				<div style="min-height: 64px; padding: 6px 14px;"><%=fcDTO.getCommenttext() %></div>
				<button type="button" id="commentedit">수정</button>
				<button type="button" id="commentdel">삭제</button>
			</div>
		<%} %>
</body>
</html>