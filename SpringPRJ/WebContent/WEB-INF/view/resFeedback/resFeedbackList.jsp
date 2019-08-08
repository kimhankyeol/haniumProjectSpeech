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

	<p style="text-align:center; margin: 2% 0;">current user : <%=userNo %></p>
	<% 	for(FeedbackCommentDTO fcDTO : fcDTOs) {%>
			<div id=<%=fcDTO.getCommentNo() %> style="min-width: 30%; max-width: 50%;
						margin:1% auto;
						border: 1px solid black; padding: 10px;">
				<span style="padding:0 1px; display:none;"><%=fcDTO.getCommentNo() %></span>
				<span style="padding:0 1px;"><%=fcDTO.getRegNo() %></span>
				<span style="padding:0 1px;"><%=fcDTO.getRegDate() %></span>
				<div id="commentContent<%=fcDTO.getCommentNo() %>" style="min-height: 64px; padding: 6px 14px;"><%=fcDTO.getCommenttext() %></div>
				<%if(fcDTO.getRegNo().equals(userNo)){ %>
					<button type="button" id="commentedit" onclick="commentEdit('<%=fcDTO.getCommentNo()%>')">수정</button>
					<button type="button" id="commentdel" onclick="commentDel('<%=fcDTO.getCommentNo()%>')">삭제</button>
				<%}%>
			</div>
		<%} %>
	
</body>
</html>