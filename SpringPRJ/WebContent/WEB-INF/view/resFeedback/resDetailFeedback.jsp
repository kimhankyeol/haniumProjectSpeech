<%@page import="poly.dto.ResFeedbackDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../User/session.jsp" %>
<%
	ResFeedbackDTO rDTO = (ResFeedbackDTO)request.getAttribute("rDTO");
	String feedback_no = rDTO.getFeedback_no();
%>

<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
  
	<%@include file="../header.jsp" %>
  
<title>이용자피드백 게시판</title>
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

	<div class="content-body" >
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
      <div class="card-body collapse in" style="text-align:center;">
       <div class="card-block card-dashboard">
		<input type="hidden" name="feedback_no" value="<%=feedback_no %>">
		<div style="margin-top: 5%;">
			<span><%=feedback_no %></span>
			<span><%=rDTO.getF_title() %></span>
		</div>
		<div style="margin-top: 2%; margin-bottom: 4%">
			<%=rDTO.getContent() %>
		</div>
	
		<!-- 해당 모의면접 질문리스트들, 그리고 클릭시 재생할 녹음파일들-->
		<!-- 평가 남기기 -->
	</div>
	</div>
<div style="padding: 0 5%;">	<!-- <hr />-->
<%@ include file="../feedbackComment.jsp" %>
</div>
 <!-- ////////////////////////////////////////////////////////////////////////////-->

    <%@include file="../footer.jsp" %>
    
</body>
</html>