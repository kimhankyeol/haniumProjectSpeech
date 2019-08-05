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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Project Dashboard - Robust Free Bootstrap Admin Template</title>
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/app-assets/images/ico/apple-icon-60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/app-assets/images/ico/apple-icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/resources/app-assets/images/ico/apple-icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/resources/app-assets/images/ico/apple-icon-152.png">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/app-assets/images/ico/favicon.ico">
    <link rel="shortcut icon" type="image/png" href="/resources/app-assets/images/ico/favicon-32.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/bootstrap.css">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/vendors/css/extensions/pace.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href="/resources/app-assets/css/core/colors/palette-gradient.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css">
    <!-- END Custom CSS-->
  
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