<%@page import="poly.dto.ResFeedbackDTO" %>
<%@page import="java.util.List" %>
<%@ include file="../User/session.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	List<ResFeedbackDTO> rList = (List<ResFeedbackDTO>)request.getAttribute("rList");
%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
  
<title>두루마리 - 이용자피드백 게시판</title>
 <%@include file="../header.jsp" %>

</head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

	<%@include file="../menu.jsp" %>
       
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">피드백 게시판</h2>
          </div>
        </div>
        
                <div class="content-body"><!-- Basic Tables start -->
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">모의면접결과 피드백하기</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                        <li><a data-action="reload"><i class="icon-reload"></i></a></li>
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        <li><a data-action="close"><i class="icon-cross2"></i></a></li>
                    </ul>
                </div>
            </div>
 <div class="card-body collapse in">
       <div class="card-block card-dashboard">
            <div class="table-responsive">
	 <table class="table table-striped">
	<thead>
		<tr style="width: 80%">
			<th style="width: 20%">번호</th>
			<th style="width: 50%">제목</th>
			<th style="width: 30%">작성일</th>
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
</div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->

<%@include file="../footer.jsp" %>

</body>
</html>