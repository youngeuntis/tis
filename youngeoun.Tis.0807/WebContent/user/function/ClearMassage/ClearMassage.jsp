<%@page import="youngun.tis.user.admin.service.FunctionServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.FunctionService"%>
<%@page import="youngun.tis.user.admin.domain.User"%>
<%@page import="youngun.tis.user.admin.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8") ;
	String userId = request.getParameter("userId");
	String reason = request.getParameter("reason");
	boolean flag=false;
	System.out.println("forcedblind : "+ userId + reason);
	if(reason != null){
		
		UserService userService = new UserServiceImpl();
		User user = (User)userService.findUser(userId);
		System.out.println("user : "+user);
		int memberNum = user.getMemberNum();
		
		System.out.println("aa 확인 : "+ userId + reason);
		FunctionService funService = new FunctionServiceImpl(userId , memberNum);
		int check = funService.clearGrade();
		if(check==1){
			flag=true;
		}
	}
%>

<!doctype html>

<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../../../res/css/ClearMassage.css" />
<script type="text/javascript" src="../../../res/js/admin.js"></script>
</head>

<body>
	<div class="blindMain">
		<div class="blindTitle">
			<a> 알 림 </a>
		</div>
		<%
			if (!flag) {
		%>
		<form action="ClearMassage.jsp" method="post">
			<input type="hidden" name="userId" value="<%=userId%>">
			<input type="hidden" name="reason" value="yes">
			<div class="blindMassage">
				<br /> <br /> <br /> <a>선택 회원을 해제 하시겠습니까? </a>
			</div>


			<div class="blindbutton">
				<button id="Send_button" type="submit">확인</button>
				<input type="button" value="닫기" onclick="Confirm();">
			</div>
		</form>
		<%
			} else {
		%>
		<div class="blindMassage">
			<h1>회원 등급이 변경되었습니다.</h1>
		</div>
		<div class="blindbutton">
			<input type="button" value="닫기" onclick="Confirm();">
		</div>
		<%
			}
		%>
	</div>
	<div class="clear"></div>

</body>

</html>



