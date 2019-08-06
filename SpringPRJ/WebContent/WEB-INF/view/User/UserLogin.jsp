<%@page import="poly.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="session.jsp" %>
<%if(id==""){ %>
<form name="loginForm" method="POST" action="/UserLogin.do">
	<div>
		<div>회원 아이디</div>
		<input type="text" name="id">
		<div style="display:flex"></div>
		<div>회원 비밀번호</div>
		<input id="pw" type="password" name="passwd">
	</div>
	<input type="submit" value="로그인" id="loginBtn" >
	<div><a href="FindUserID.do">아이디</a>/<a href="FindUserPw.do">비밀번호</a> 찾기</div>
	</form>
	<div><button onclick="location.href='/UserReg.do'">회원가입</button></div>
	<%} else {%>
	<div>
	<%=id%>님, 안녕하세요!
	</div>
	<button onclick="location.href='/logout.do'">로그아웃</button>
	<%}%>