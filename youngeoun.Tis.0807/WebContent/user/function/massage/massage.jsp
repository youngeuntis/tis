<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>

<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="../../../res/css/Massage.css" />
	<script type="text/javascript" src="../../../res/js/admin.js"></script>
</head>

<body>
	<div class="massage">
		<div class="massageWindows">
			<a> Massage </a>
		</div>
		<div class="massageName">
			<div class="massageName2">
				<a> &nbsp;받는 사람 </a>
			</div>
			<div class="massageName3">
				<input type="text"  style="height:20px; width:255px; float: left; maxlength="40">
			</div>
		</div>
		<div class="massageA">
			<div class="massageOBJ">
				<a> &nbsp;제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목 </a>
			</div>
			<div class="massageOBJ2">
				<input type="text"  style="height:20px; width:255px; float: left; maxlength="40">
			</div>
		</div>
		<div class="massageB">
			<div class="massageSub">
				<a>내용</a>
			</div>
			<div class="massageCon">
				<textarea id="writeNote" style="width:352px; height:168px; resize:none;" 
				onkeyup="nWrite.checkContentLength();" rows="5" cols="55" 
				title="쪽지 내용을 입력해 주세요." ></textarea>
			
			
			</div>
		</div>
		<div class="massageC">
			<div class="massageSend">
				<button id="Send_button" type="submit">전송</button>
			</div>
			<div class="massageCancel">
				<input type="button" value="닫기" onclick="Confirm2();">
			</div>
		</div>
	</div>
	<div class="clear"></div>
</body>
</html>
