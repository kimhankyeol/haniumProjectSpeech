<%@include file="../User/session.jsp" %>
<%@page import="java.util.List"%>
<%@page import="poly.dto.NotiDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<NotiDTO> nList = (List<NotiDTO>)request.getAttribute("nList");
%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>


    <title>두루마리 - 공지사항</title>
	<%@ include file="../header.jsp" %>

  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">


    <%@include file="../menu.jsp" %>

    <!-- / main menu-->

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">공지사항 게시판</h2>
          </div>
        </div>
        <div class="content-body"><!-- Basic Tables start -->
        <!-- 공지사항 화면 안뜨던것의 문제 -->
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Basic Tables</h4>
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
                        		<tr>
                        			<th width="200px">번호</th>
                        			<th width="200px">작성자</th>
                        			<th width="200px">제목</th>
                        			<th width="200px">작성일</th>
                        		</tr>
                        	</thead>
                        	<tbody>
                        	<%for (NotiDTO nDTO : nList){ %>
                        		<tr>
                        			<td><%=nDTO.getSeq() %></td>
                        			<td><%=session.getAttribute("userNo") %></td>
                        			<td><a href="/noti/notiDetail.do?seq=<%=nDTO.getSeq() %>"><%=nDTO.getTitle() %></a></td>
                        			<td><%=nDTO.getRegDate() %></td>
                        		</tr>
                        	<%} %>
                        	</tbody>
                        </table>
                    </div>
                </div>
                </div>
            
            
            
            
            
            </div>
            </div>
            </div>
          
          </div>
          </div>
          
          </div>
  
    <!-- ////////////////////////////////////////////////////////////////////////////-->

	<%@include file="../footer.jsp" %>

  </body>

</html>