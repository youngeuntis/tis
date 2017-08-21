<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<head>
	<meta charset="utf-8">
	<link rel = "stylesheet" href = "../../../res/css/blindMassage.css"/>
	<script type="text/javascript" src="../../../res/js/admin.js"></script>
</head>

<body>
      <div class="blindMain">    
      
      <div class="blindTitle"><a> 알 림 </a></div>
      
      <div class="blindMassage">
         
          <br />
          <br />
          <br />
          <a>선택 회원을 </a>
           <select size = "1" style="width: 50px; height: 22px;">
                   <option>도배</option>
                   <option>광고</option>
                   <option>욕설</option>
            </select>
            <a>의 사유로 </a>
            <select size = "1" style="width: 50px; height: 22px;">
                   <option>10일</option>
                   <option>50일</option>
                   <option>100일</option>
                   <option>영구</option>
            </select>
            <a> 제재 합니다.</a>
       
       
       
       </div>  
        <div class="blindbutton">
              <button id="Send_button" type="submit">확인</button>
              <input type="button" value="닫기" onclick="Confirm();">
        </div>
    </div>
           <div class="clear"></div>


  
</body>

</html>



