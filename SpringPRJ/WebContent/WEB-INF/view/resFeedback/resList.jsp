<%@page import="poly.dto.ResFeedbackDTO" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	List<ResFeedbackDTO> rList = (List<ResFeedbackDTO>)request.getAttribute("rList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용자피드백 게시판</title>
</head>
<body>

<div>
	<div style="text-align:center; font-size:2em; color: white; background-color: #003074;">
		이용자피드백 게시판
	</div>
	<table style="width: 80%;">
	<thead>
		<tr style="width: 80%">
			<th style="width: 20%">글번호</th>
			<th style="width: 50%">글제목</th>
			<th style="width: 30%">날짜</th>
		</tr>
	</thead>
	<tbody>
		<%for(ResFeedbackDTO rDTO : rList) {%>
			<tr>
				<td><%=rDTO.getFeedback_no() %></td>
				<td><a href="/resFeedback/resDetailFeedback.do?feedbackno=<%=rDTO.getFeedback_no() %>"><%=rDTO.getF_title() %></a></td>
				<td><%=rDTO.getRegdate() %></td>
			</tr>
			<%} %>
	</tbody>
	</table>
</div>
</body>
</html>