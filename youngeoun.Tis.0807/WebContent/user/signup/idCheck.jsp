<%@page import="youngun.tis.user.management.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.management.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%

 	String userId = request.getParameter("userId");
	System.out.print("userId="+userId);	
		
	UserService userIdCheck = new UserServiceImpl();
	boolean userIdCK = userIdCheck.findUserId(userId); 
	
	System.out.print("idcheck="+userIdCK);
	
	String msg = null;
	
	if(!userIdCK){
		msg = "사용할 수 있습니다.";
	}else{
		msg = "이미 있는 아이디입니다.";
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../../res/css/idCheck.css" />
	<title>아이디 중복 체크</title>

<script type="text/javascript">
	// 회원가입창의 아이디 입력란의 값을 가져온다.
/* 	function pValue(){
	    document.getElementById("userId").value = opener.document.sign.userId.value;
	}
 */
	// 사용하기 클릭 시 부모창으로 값 전달 
	function sendCheckValue(){
	    // 회원가입 화면의 ID입력란에 값을 전달
	    opener.document.sign.userId.value = document.getElementById("userId").value;
	    
	    if (opener != null) {
	        opener.chkForm = null;
	        self.close();
	    }    
	}    
</script>



</head>
<body>
	<div class="main">
		<div class="title">
			<a> 알 림 </a>
		</div>
		<div class="massage">
			<form action="idCheck.jsp" method="post" style="margin-top: 50px">
           		<input type="text" name="userId" id="userId" value="<%=userId%>">
           		<input type="submit" value="중복체크">
       		</form>
        <br>
        <span><%=msg %></span>
		</div>
		<div class="button">
     		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
     		<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
		</div>
	</div>
</body>

</html>



