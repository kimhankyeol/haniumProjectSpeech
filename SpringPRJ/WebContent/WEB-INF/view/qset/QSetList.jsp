<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- session.jsp 경로 설정 -->

<%@ include file="../User/session.jsp" %>
<%@page import="java.util.List"%>
<%@page import="poly.dto.QSetDTO"%>
<%
	List<QSetDTO> qList = (List<QSetDTO>)request.getAttribute("qList");
%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>

<meta charset="UTF-8">
<title>질문 세트 선택</title>
<!-- header.jsp 경로 설정 -->
<%@ include file="../header.jsp" %>
</head>
<body  data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">
	<!-- menu.jsp 경로설정 -->
	<%@ include file="../menu.jsp" %>
	<div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">질문 세트 선택</h2>
          </div>
        </div>
        <div class="content-body"><!-- Basic example section start -->
<section id="qSetList">
	<div class="row">
		<div class="col-lg-4 col-md-12">
		<%if(qList.isEmpty()){ %>
			<div class="text-xs-center">
			- 등록된 질문이 없습니다 -
			</div>
		<%}else{ %>
			<!-- 질문 세트 카드 시작 -->
			<%for(QSetDTO qDTO : qList){ %>
			<div class="card">
				<div class="card-body">
					<div class="card-block">
						<h4 class="card-title info"><%=qDTO.getQset_title() %></h4>
						<p class="card-text"><%=qDTO.getQset_desc() %></p>
					</div>
				</div>
				<div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
					<span class="float-xs-left"><i class="icon-eye6"></i><%=qDTO.getViewcount() %></span>
					<span class="col-xs-2"><i class="icon-heart"></i><%=qDTO.getLikes() %></span>
				</div>
			</div>
			<%} %>
			<!-- 질문 세트 카드 끝 -->
		<%} %>
		</div>
	</div>
</section>
<!-- Text alignment section end -->

        </div>
      </div>
    </div>
	
	
	
	
	<!-- footer.jsp 경로설정 -->
	<%@include file="../footer.jsp" %>
</body>
</html>