<%@page import="java.util.List"%>
<%@page import="poly.util.CmmUtil" %>
<%@page import="poly.dto.FeedbackCommentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<FeedbackCommentDTO> fcDTOs = (List<FeedbackCommentDTO>)(request.getAttribute("fcDTO"));
	String userNo = CmmUtil.nvl((String)session.getAttribute("userNo"));

//테스트용으로 해둠. 나중에 지워야함.
	if(userNo.isEmpty()){
	userNo = "1";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	current user : <%=userNo %>
	<% 	for(FeedbackCommentDTO fcDTO : fcDTOs) {%>
			<div style="min-width: 30%; max-width: 50%;
						margin:0 auto;
						text-align:center; border: 1px solid black; border-radius: 2px; padding: 3px;">
				<span style="padding:0 1px;" id="commentNum"><%=fcDTO.getCommentNo() %></span>
				<span style="padding:0 1px;"><%=fcDTO.getRegNo() %></span>
				<span style="padding:0 1px;"><%=fcDTO.getRegDate() %></span>
				<div style="min-height: 64px; padding: 6px 14px;"><%=fcDTO.getCommenttext() %></div>
				<%if(fcDTO.getRegNo().equals(userNo)){ %>
					<button type="button" id="commentedit" >수정</button>
					<button type="button" id="commentdel" onclick="commentdel('<%=fcDTO.getCommentNo()%>')">삭제</button>
				<%}%>
			</div>
		<%} %>
</body>
</html>