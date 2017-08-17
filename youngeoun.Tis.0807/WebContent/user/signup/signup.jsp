<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Form</title>
<link rel="stylesheet" href="../../res/css/signStyle.css">

<script type="text/javascript">
function execute() {


</script>

</head>

<body>
	<div id='container'>
		<div class='signup'>
			<form name="sign" action="signupControl.jsp" method="post">
				<input type="text" name="userId" id="userId" placeholder="아이디" maxlength="12"/> 
				<input type="password" name="userPw" id="userPw" placeholder="비밀번호" maxlength="12" /> 
				<input type="password" name="userPwCheck" id="userPwCheck" placeholder="비밀번호 확인"  />
				<input type="text" name="userName" id="userName" placeholder="이름" maxlength="8"/>
				<input type="text" name="userBirth" id="userBirth" placeholder="생년월일 :ex) 20170731" maxlength="8"/>
				<input type="radio" name="userGender" value="m" checked="checked" id="m"/> <label for="m">남자</label>
				<input type="radio" name="userGender" value="f" id="f" ><label for="f">여자</label>
				<input type="text" name="userNickname" id="userNickname" placeholder="닉네임" maxlength="12"/> 
				<input type="text" name="userEmail" id="userEmail" placeholder="이메일 : ex) ex@tis.com" /> 
				<input type="text" name="userPH" id="userPH" placeholder="휴대폰 :ex) 01088888888" maxlength="11"/> 
				<input type='submit' value="가입" />
			</form>
		</div>
		
		<!-- 이용약관 -->
		<div class='whysign'>
			<h1>약관 내용</h1>
			<input type="radio" name="sign_check" value="_ok"> 약관 동의
			<p>부정 가입 또는 잘못된 행동을 할 경우 강제 탈퇴 될 수 있습니다</p>
			<p>
				예: <span>광고</span> <span>음란물 배포</span> <span>장 영근씨</span> <span>장 결근씨</span>
			</p>
			<span id=result></span>
		</div>
	</div>
</body>
</html>