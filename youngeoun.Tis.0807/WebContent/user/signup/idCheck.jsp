<%@page import="youngun.tis.user.management.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.management.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	String userId = request.getParameter("userId");

	UserService userIdCheck = new UserServiceImpl();
	userIdCheck.findUserId(userId);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="../../res/css/idCheck.css" />
	<title>아이디 중복 체크</title>

<script type="text/javascript">
	
	// 회원가입창의 아이디 입력란의 값을 가져온다.
	function pValue(){
	    document.getElementById("userId").value = opener.document.sign.userId.value;
	}
	
	
	// 사용하기 클릭 시 부모창으로 값 전달 
	function sendCheckValue(){
	    // 중복체크 결과인 idCheck 값을 전달한다.
	    opener.document.userInfo.idDuplication.value ="idCheck";
	    // 회원가입 화면의 ID입력란에 값을 전달
	    opener.document.userInfo.id.value = document.getElementById("userId").value;
	    
	    if (opener != null) {
	        opener.chkForm = null;
	        self.close();
	    }    
	}    
</script>



</head>
<body onload="pValue()">
	<div class="blindMain">
		<div class="blindTitle">
			<a> 알 림 </a>
		</div>
		<div class="blindMassage">
			<form id="checkForm" method="post" action="idCheck.jsp">
	            <input type="text" name="idinput" id="userId">
	            <input type="button" value="중복확인" onclick="idCheck()">
	        </form>
        <div id="msg"></div>
        <br>
		</div>
		<div class="blindbutton">
     		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
     		<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
		</div>
	</div>
	<div class="clear"></div>
</body>

</html>



