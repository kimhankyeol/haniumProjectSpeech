<%@include file="../User/session.jsp" %>
<%@page import="java.util.List"%>
<%@page import="poly.dto.NotiDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<NotiDTO> nList = (List<NotiDTO>)request.getAttribute("nList");
	NotiDTO nDTO = (NotiDTO)request.getAttribute("nDTO");
%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
   <%@include file="../header.jsp" %>
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">
	<%@include file="../menu.jsp" %>
   

<div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">공지사항 게시판</h2>
          </div>

        </div>
        <div class="content-body"><!-- Basic Tables start -->
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
           <form action="/noti/notiModify.do" method="post">
				<input type="hidden" name="seq" value="<%=nDTO.getSeq() %>" />
					<table border="1">
						<col width="100px" />
						<col width="500px" />
							<tr>
								<td align="center">제목</td>
								<td><input type="text" readonly="readonly" name="title" maxlength="100" style="width:450px" value="<%=nDTO.getTitle() %>"/></td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea readonly="readonly" name="contents" style="width:550px; height:400px"><%=nDTO.getContent()%></textarea>
								</td>
							</tr>
		<tr>
			<td align="center" colspan="2">
				<input type="submit" value="수정" />
				<input type="button" onclick="location.href='/noti/notiDelete.do?seq=<%=nDTO.getSeq() %>'" value="삭제" />
				<input type="button" onclick="location.href='/noti/notiList.do'" value="돌아가기" />
			</td>
		</tr>
	</table>
</form>
                    </div>
                </div>

    <!-- ////////////////////////////////////////////////////////////////////////////-->

	<%@include file="../footer.jsp" %>
    
  </body>
