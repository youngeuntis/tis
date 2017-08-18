<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Form</title>
<link rel="stylesheet" href="../../res/css/signStyle.css">

<script type="text/javascript">
function sendIt() {
	
    var email = document.sign.userEmail.value;
    var birth = document.sign.userBirth.value;
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
/* 
    //아이디 입력여부 검사
    if (sign.userId.value == "") {
        alert("아이디를 입력하지 않았습니다.");
        sign.userId.value.focus();
        return;
    }

    //아이디 유효성 검사 (영문소문자, 숫자만 허용)
    for (i = 0; i < document.sign.userId.value.length; i++) {
        ch = document.sign.userId.value.charAt(i);
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
            alert("아이디는 대소문자, 숫자만 입력가능합니다.");
            document.sign.userId.focus();
            document.sign.userId.select();
            return;
        }
    }

    //아이디에 공백 사용하지 않기
    if (document.sign.userId.value.indexOf(" ") >= 0) {
        alert("아이디에 공백을 사용할 수 없습니다.");
        document.sign.userId.focus();
        document.sign.userId.select();
        return;
    }

    
 	//아이디 길이 체크 (4~12자)
    if (document.sign.userId.value.length<4 || document.sign.userId.value.length>12) {
        alert("아이디를 4~12자까지 입력해주세요.");
        document.sign.userId.focus();
        document.sign.userId.select();
        return;
    }

    //비밀번호 입력여부 체크
    if (document.sign.userPw.value == "") {
        alert("비밀번호를 입력하지 않았습니다.");
        document.sign.userPw.focus();
        return;
    }

    //비밀번호 길이 체크(4~12자 까지 허용)
    if (document.sign.userPw.value.length<4 || document.sign.userPw.value.length>12) {
        alert("비밀번호를 4~12자까지 입력해주세요.");
        document.sign.userPw.focus();
        document.sign.userPw.select();
        return;
    }

    //비밀번호와 비밀번호 확인 일치여부 체크
    if (document.sign.userPw.value != document.sign.userPwCheck.value) {
        alert("비밀번호가 일치하지 않습니다");
        document.sign.userPwCheck.value = "";
        document.sign.userPwCheck.focus();
        return;
    }
    
    //이름
    if (document.sign.userName.value == "") {
        alert("이름을 입력하지 않았습니다.");
        document.sign.userName.focus();
        return;
    }
    if(document.sign.userName.value.length<2){
        alert("이름을 2자 이상 입력해주십시오.");
        document.sign.userName.focus();
        return;
    }
    
    // 생년월일 숫자가 아닌 것을 입력한 경우
    for (i = 0; i < document.sign.userBirth.value.length; i++) {
        ch = document.sign.userBirth.value.charAt(i);
        if (!(ch >= '0' && ch <= '9')) {
            alert("생년월일은 숫자만 입력하세요.");
            document.sign.userBirth.focus();
            document.sign.userBirth.select();
            return;
        }
    }
    if (document.sign.userBirth.value.length!=8) {
		alert("생년월일은 8자리로 입력해주세요");
        document.sign.userBirth.value = "";
        document.sign.userBirth.focus();
        return;
    }
    
    //닉네임 입력여부 검사
    if (sign.userNickname.value == "") {
        alert("아이디를 입력하지 않았습니다.");
        sign.userNickname.value.focus();
        return;
    }

    //닉네임 유효성 검사 (영문소문자, 숫자만 허용)
    for (i = 0; i < document.sign.userNickname.value.length; i++) {
        ch = document.sign.userNickname.value.charAt(i);
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
            alert("아이디는 대소문자, 숫자만 입력가능합니다.");
            document.sign.userNickname.focus();
            document.sign.userNickname.select();
            return;
        }
    }


	//이메일
    if (document.sign.userEmail.value == "") {
        alert("이메일을 입력하지 않았습니다.");
        document.sign.userEmail.focus();
        return;
    }    

    if (regex.test(email) === false) {
        alert("잘못된 이메일 형식입니다.");
        document.sign.userEmail.focus();
        return;
    }
  
    //휴대폰
    if (sign.userPH.value == "") {
        alert("휴대폰번호를 입력하지 않았습니다.");
        sign.userPH.value.focus();
        return;
    }
    
    for (i = 0; i < document.sign.userPH.value.length; i++) {
        ch = document.sign.userPH.value.charAt(i);
        if (!(ch >= '0' && ch <= '9')) {
            alert("휴대폰번호는 숫자만 입력하세요.");
            document.sign.userPH.focus();
            document.sign.userPH.select();
            return;
        }
    }
    
    if (document.sign.userPH.value.length < 10) {
		alert("휴대폰번호는 10자리이상 입력해주세요");
        document.sign.userPH.focus();
        return;
    }
*/    
    
    document.sign.submit();
}

</script>

</head>

<body>
	<div id='container'>
		<div class='signup'>
			<form name="sign" action="signupControl.jsp" method="post" >
				<input type="text" name="userId" id="userId" placeholder="아이디 (최대12자리)" maxlength="12" /> <button>중복확인</button>
				<input type="password" name="userPw" id="userPw" placeholder="비밀번호 (최대12자리)" maxlength="12" /> 
				<input type="password" name="userPwCheck" id="userPwCheck" placeholder="비밀번호 확인" /> 
				<input type="text" name="userName" id="userName" placeholder="이름" maxlength="8" /> 
				<input type="text" name="userBirth" id="userBirth" placeholder="생년월일 :ex) 20170731" maxlength="8" /> 
				<input type="radio" name="userGender" value="m" checked="checked" id="m" /> <label for="m">남자</label> 
				<input type="radio" name="userGender" value="f" id="f"><label for="f">여자</label> 
				<input type="text" name="userNickname" id="userNickname" placeholder="닉네임" maxlength="12" /> 
				<input type="text" name="userEmail" id="userEmail" placeholder="이메일 : ex) ex@tis.com" /> 
				<input type="text" name="userPH" id="userPH" placeholder="휴대폰 :ex) 01088888888" maxlength="11" /> 
				<input type="button" value="가입" onclick="sendIt();" />
			</form>
		</div>

		<!-- 이용약관 -->
		<div class='whysign'>
			<h1>약관 내용</h1>
			<input type="radio" name="sign_check" value="_ok"> 약관 동의
			<textarea rows="10" cols="60" disabled="disabled" >부정 가입 또는 잘못된 행동을 할 경우 강제 탈퇴 될 수 있습니다
				
			</textarea>
			
			<p>
				예: <span>광고</span> <span>음란물 배포</span> <span>장 영근씨</span> <span>장 결근씨</span>
			</p>
			<span id=result></span>
		</div>
	</div>
</body>
</html>