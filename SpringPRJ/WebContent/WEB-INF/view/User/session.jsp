<%@page import="poly.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = CmmUtil.nvl((String)session.getAttribute("id"));
	String userNo = CmmUtil.nvl((String)session.getAttribute("userNo"));

	//테스트용으로 해둠. 나중에 지워야함.
	if(userNo.isEmpty()){
		userNo = "1";
	}

%>