<%@page import="poly.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = CmmUtil.nvl((String)session.getAttribute("id"));
	String userNo = CmmUtil.nvl((String)session.getAttribute("userNo"));
%>