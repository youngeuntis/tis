<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.user.login.service.LoginServiceImpl"%>
<%@page import="youngun.tis.user.login.service.LoginService"%>
<%@page import="youngun.tis.user.management.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.management.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%
	boolean flag = false;
	String userPw = null;
	String userEmail = request.getParameter("userEmail");
	System.out.print("userEmail : "+userEmail);	
	if(userEmail!=null && !userEmail.equals("")){
		
		LoginService pwSelect = new LoginServiceImpl(userEmail);
		Login user = (Login)pwSelect.findUserPw(userEmail);
		
		flag = user.isFlag();
		userPw = user.getPassword();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../../res/css/idCheck.css" />
	<title>비밀번호 찾기</title>

</head>
<body>
	<div class="blindMain">
		<div class="blindTitle">
			<a> 비 밀 번 호 찾 기 </a>
		</div>
		
		<div class="blindMassage">
			<%if(userEmail==null){ %>
			<form action="pwCheck.jsp" method="post" style="margin : 50px ">
           		<input type="text" name="userEmail">
           		<input type="submit" value="비밀번호 찾기">
       		</form>
       		<%}else if(!flag){ %>
       		
       		<span></span>
       		
       		<%} %>
		</div>
		
		<div class="blindbutton">
     		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
     		<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
		</div>
	</div>
</body>

</html>



