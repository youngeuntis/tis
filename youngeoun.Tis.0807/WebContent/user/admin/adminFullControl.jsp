<%@page import="youngun.tis.user.admin.domain.User"%>
<%@page import="youngun.tis.user.admin.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	
//	String aaa = request.getParameter("이전 name명");
	
	UserService userService = new UserServiceImpl();
	User user = userService.findUsers();
	
	session.setAttribute("user", user);
	response.sendRedirect("adminFull.jsp");
	
%>
</html>