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
		FunctionService funService = new FunctionServiceImpl(userId , reason, memberNum);
		int check = funService.changeGrade();
		if(check==1){
			flag=true;
		}
	}
%>

<!doctype html>

<head>
    <meta charset="utf-8">
    <link rel = "stylesheet" href = "../../../res/css/forcedblindMassage.css"/>
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
		<form action="forcedblindMassage.jsp" method="post">
			<input type="hidden" name="userId" value="<%=userId%>">
			<div class="blindMassage">
				<br /> <br /> <br /> <a>선택 회원을 </a> <select name="reason"
					size="1" style="width: 50px; height: 22px;">
					<option value="도배">도배</option>
					<option value="광고">광고</option>
					<option value="욕설">욕설</option>
				</select> <a>의 사유로 </a> <a> 강제 탈퇴 합니다.</a>
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



