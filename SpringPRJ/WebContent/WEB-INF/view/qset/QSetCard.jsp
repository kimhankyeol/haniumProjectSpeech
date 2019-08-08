<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="poly.dto.QSetDTO"%>
<%@page import="java.util.List"%>
<%
	List<QSetDTO> qList = (List<QSetDTO>)request.getAttribute("qList");
%>
<%if(qList.isEmpty()){ %>
			<div class="text-xs-center" id="noMore">
			- 더이상 질문이 없습니다 -
			<script>
			noMore = true;
			</script>
			</div>
		<%}else{ %>
			<!-- 질문 세트 카드 시작 -->
			<%for(QSetDTO qDTO : qList){ %>
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="card">
					<div class="card-body">
						<div class="card-block">
							<h4 class="card-title info indigo"><%=qDTO.getQset_title() %></h4>
							<p class="card-text"><%=qDTO.getQset_desc() %></p>
						</div>
					</div>
					<div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
						<span class="float-xs-left"><i class="icon-eye6"></i><%=qDTO.getViewcount() %></span>
						<span class="col-xs-2"><i class="icon-heart"></i><%=qDTO.getLikes() %></span>
					</div>
				</div>
			</div>
			<%} %>
			<!-- 질문 세트 카드 끝 -->
		<%} %>