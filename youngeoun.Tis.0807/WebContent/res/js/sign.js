//회원가입 유효성검사.

function sendIt() {
    var email = document.sign.userEmail.value;
    var birth = document.sign.userBirth.value;
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

	
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
    
    var chk_radio = document.getElementsByName('signCheck');
	var sel_type = null;
	for(var i=0;i<chk_radio.length;i++){
		if(chk_radio[i].checked == true){ 
			sel_type = chk_radio[i].value;
		}
	}

	if(sel_type == null){
            alert("약관에 동의해주세요."); 
		return false;
	}
	
    document.sign.submit();
}
