<%@page import="poly.dto.NotiDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<NotiDTO> nList = (List<NotiDTO>)request.getAttribute("nList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:800px; margin-left:5%; margin-top:5%">
	<div style="text-align:center; font-size:2em">게시판</div>
	<table class="table table-striped">
		<thead>
			<tr>
				<th width="100px">글번호</th>
				<th width="500px">글제목</th>
				<th width="200px">날짜</th>
			</tr>
		</thead>
		<tbody>
		<%for(NotiDTO nDTO : nList) { %>
			<tr>
				<td><%=nDTO.getSeq() %></td>
				<td><a href="/noti/notiDetail.do?seq=<%=nDTO.getSeq()%>"><%=nDTO.getTitle() %></a></td>
				<td><%=nDTO.getRegDate() %></td>
			</tr>
		<% } %>
		</tbody>
	</table>
	<hr />
	<a class="btn btn-primary" href="/noti/notiReg.do" role="button">글 작성</a>
</div>
</body>
</html>