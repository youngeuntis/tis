<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.user.login.service.LoginServiceImpl"%>
<%@page import="youngun.tis.user.login.service.LoginService"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	/* login관련 */
	String action = request.getParameter("action");
	String loginId = request.getParameter("login_user_id");
	String loginPw = request.getParameter("login_user_pw");
	//xml 에서 인터셉터로 떠넘긴다; 
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>입력처리</title>
</head>
<body>
<%
	if(action.equals("login")){
		LoginService loginService = new LoginServiceImpl(loginId, loginPw);
		
		Login login = loginService.findUserLogin(loginId);
		
		System.out.print("로그인"+login.getUserId()+login.isFlag());
		
		if(!login.isFlag()){
			response.sendRedirect("../../main.jsp");
			System.out.print("틀림");
		}else{
			System.out.print("됨");
			session.setAttribute("Login", login);
			response.sendRedirect("../../main.jsp");
		}
	}else if(action.equals("logout")){
		//세션 전체 무효화(로그아웃시 주로 사용)
		session.invalidate();
		response.sendRedirect("../../main.jsp");
	}
%>
</body>
</html>