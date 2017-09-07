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
	
	if(userEmail != null && !userEmail.equals("")){
			
		LoginService pwSelect = new LoginServiceImpl(userEmail);
		Login user = (Login)pwSelect.findUserPw(userEmail);
		
		flag = user.isFlag();
		userPw = user.getPassword();
		System.out.print("flag = "+ flag);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../../res/css/idCheck.css" />
	<title>비밀번호 찾기</title>
	

<script type="text/javascript">
function asd() {
	
	var email = document.email.userEmail.value;
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

	if (regex.test(email) === false) {
        alert("이메일 형식으로 입력해 주세요.");
        document.email.userEmail.focus();
        return;
	}
	
	document.email.submit();
}
</script>


</head>
<body>
	<div class="main">
		<div class="title">
			<a> 비 밀 번 호 찾 기 </a>
		</div>
		
		<div class="massage">
			<%if(userEmail == null || !flag){ %>
			
			<form id="email" name="email" action="pwCheck.jsp" method="post" style="margin : 50px ">
           		<input type="text" name="userEmail" id="userEmail">
           		<input type="button" value="비밀번호 찾기" onclick='asd()'>
       		</form>
       			<%if(userEmail != null){ %>
       			<div class="chMassge">
       			<span><%=userEmail %> 은 없는 이메일 입니다.</span>
       			</div>
       			<%} %>
       		
       		<%}else if(flag){ %>
       		<div class="chMassge">
	       		<span>찾으신 비밀번호는 : <%=userPw %> 입니다.</span>
       		</div>
       		<%}%>
		</div>
		
		<div class="button">
     		<input id="cancelBtn" type="button" value="확인" onclick="window.close()">
		</div>
	</div>
</body>

</html>



