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
	
	String userId = request.getParameter("userId");         // ID
	String password = request.getParameter("userPw");       // PW
 	String userName  = request.getParameter("userName");    // name
	String birth = request.getParameter("userBirth");       // birth
	String gender = request.getParameter("userGender");     // gender
	String nickName = request.getParameter("userNickname"); // nick
	String email = request.getParameter("userEmail");	      // email
	String phoneNum = request.getParameter("userPH");    	  // phone
	
	UserService userService = new UserServiceImpl();
	User user = new User(userName, userId, password, birth, phoneNum, email, nickName, gender);
	
	boolean flag = userService.saveUser(user);
	
	
	if(flag){
		//회원가입 성공시
		response.sendRedirect("../../main.jsp");
	}
%>
