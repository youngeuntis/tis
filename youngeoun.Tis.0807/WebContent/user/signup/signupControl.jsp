<%@page import="youngun.tis.user.management.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.management.service.UserService"%>
<%@page import="youngun.tis.user.management.domain.User"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%
	/* join parameter */
	request.setCharacterEncoding("UTF-8");
	
	/* String sign_check = request.getParameter("sign_check"); */
	
	String userId = request.getParameter("join_user_id");         // ID
	String password = request.getParameter("join_user_pw");       // PW
 	String userName  = request.getParameter("join_user_name");    // name
	String birth = request.getParameter("join_user_birth");       // birth
	String gender = request.getParameter("join_user_gender");     // gender
	String nickName = request.getParameter("join_user_nickname"); // nick
	String email = request.getParameter("join_user_email");	      // email
	String phoneNum = request.getParameter("join_user_ph");    	  // phone
	
	UserService userService = new UserServiceImpl();
	User user = new User(userName, userId, password, birth, phoneNum, email, nickName, gender);
	
	boolean flag = userService.saveUser(user);
	
	
	if(!flag){
		out.println("가입성공");
		response.sendRedirect("../../main.jsp");
	}
%>
