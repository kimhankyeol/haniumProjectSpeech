<%@page import="poly.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<ReviewDTO> rList=(List<ReviewDTO>)request.getAttribute("rData"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>면접 후기 게시판</title>
</head>
<body>
<div>sdsdsd</div>

<% for (int i=0;i<rList.size();i++){%>
<div><%= rList.get(i).getReviewNo() %></div>
<div><%= rList.get(i).getReviewTitle() %></div>
<div><%= rList.get(i).getReviewWriter() %></div>
<div><%= rList.get(i).getReviewRegDate() %></div>
<% } %>

</body>
</html>