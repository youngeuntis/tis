<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<head>
    <meta charset="utf-8">
    <link rel = "stylesheet" href = "../../../res/css\StepMassage.css"/>
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
           <select select size = "1" style="width: 75px; height: 22px;">
                   <option>매니저1</option>
                   <option>매니저2</option>
                   <option>매니저3</option>
          </select>
         
            <a> (으)로 임명합니다.</a>
       </div>  
       
       
       <div class="blindbutton">
              <button id="Send_button" type="submit">확인</button>
              <input type="button" value="닫기" onclick="Confirm();">
        </div>
        
      </div>
          
           <div class="clear"></div>


  
</body>

</html>



