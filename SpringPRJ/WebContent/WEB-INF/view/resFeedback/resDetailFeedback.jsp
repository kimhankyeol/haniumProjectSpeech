<%@page import="poly.dto.ResFeedbackDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ResFeedbackDTO rDTO = (ResFeedbackDTO)request.getAttribute("rDTO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용자피드백 게시판</title>
</head>
<body style="text-align: center;">
	<div style="text-align:center; font-size:2em; color: white; background-color: #003074;">
		이용자피드백 게시판
	</div>
	<div>
		<span><%=rDTO.getFeedback_no() %></span>
		<span><%=rDTO.getF_title() %></span>
	</div>
	<div>
		<%=rDTO.getContent() %>
	</div>
	
	<!-- 해당 모의면접 질문리스트들, 그리고 클릭시 재생할 녹음파일들-->
	<!-- 평가 남기기 -->

<div style="padding: 0 5%;">	<!-- <hr />-->
<%@ include file="../feedbackComment.jsp" %>
</div>	
</body>
</html>