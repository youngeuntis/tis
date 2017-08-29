<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>

<head>
    <meta charset="utf-8">
    <meta name="description" content="해외 자유여행 컨텐츠 정보 공유">
    <meta name="keywords" content="해외여행, 자유여행, 싱가포르, 싱가폴
			파리, 미국, 미주, 미국 자유여행, 일본, 태국, 하와이, 대만, 홍콩, 베트남, 필리핀,
			인도네시아, 프랑스, 스페인, 이탈리아, 영국">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Design Your TRip</title>
    <link rel="stylesheet" href="../../res/css/styleMain.css">
    <script type="text/javascript" src="js/custom.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <link rel = "stylesheet" href =  "../../res/css/AdminStyleSub.css"/>
    <script type="text/javascript" src="../../res/js/admin.js"></script>
</head>

<body>

  <div id="fullweb">
		<header>
			<div class="Center">
				<div class="site-logo">
					<img src="../../res/img/DYTR.png"
						style="display: inline-block; width: 15%; height: auto; margin-top: -15px;">
					<h1>
						<a href="../../main.jsp">Design Your Trip</a>
					</h1>
				</div>
			</div>
			<div id="cbp-hrmenu" class="cbp-hrmenu" >
			<ul style=" width: 900px; height: 80px;
			margin-left: 80px;">
				<li><a href="adminmain.jsp">메인</a></li>
				<li><a href="adminFull.jsp">회원 관리</a></li>
				<li><a href="adminBlind.jsp">제재 회원 관리</a></li>
				<li><a href="adminForcedBlind.jsp">강퇴 회원 관리</a></li>
				<li><a href="adminStep.jsp">스텝 관리</a></li>
			
			</ul>
			</div>
		</header>


    
		
		
		<!-- 메인 작업부분 -->
		
		
		
        <main>
        

     <div class="main">
       <div class="mainB"><h1>최근 제재 회원순</h1>
            <div class="mainSerch">
              <div class="mainSerch1"><select class="serchOption">
                   <option>아이디</option>
                   <option>이름</option>
               </select></div>
              <div class="mainSerch2"><input id="search" type="search" name="search_member" placeholder="검색" maxlength="255"></div>
                  <div class="mainSerch3">
                      <button id="member_button" type="submit"><!--검색--></button>
                  </div>
               
              
              
            </div>
             <div class="mainBb">
              <ul id="gnb3">
                    <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
		            <li><a href="#">가입일▼</a></li>
                    <li><a href="#">최근방문일▼</a></li>
                    <li><a href="#">게시글수▼</a></li>
                    <li><a href="#">댓글수▼</a></li>
                    <li><a href="#">방문수▼</a></li>
                 </ul>
             </div>
              
             
             <div class="mainB2"> 
                      <div class="memberDataBcheck"><input type="checkbox"></div>
                      <div class="memberDataBid"><p>TIS1234</p></div>
                      <div class="memberDataBname"><p>길동잉</p></div>
                      <div class="memberDataBjoindate"><p>2017.08.08</p></div>
                      <div class="memberDataBvisitdate"><p>2017.08.08</p></div>
                      <div class="memberDataBwhite"><p>2500</p></div>
                      <div class="memberDataBcoment"><p>2481</p></div>
                      <div class="memberDataBvisitcount"><p>2158</p></div>
                    </div>
                     
             <div class="memberNum"><a>◀ 1 2 3 4 5 ▶</a></div>
             <div class="mainBbutton">
             
              </div>
            
             
              
        </div>
          <div class="mainBoption">
                    <ul id="gnb4">
                     <li><a href="javascript:blindMassage(625, 285)" >제재</a></li>
					<li><a href="javascript:forcedblindMassage(620, 285)" >강제 탈퇴</a></li>
					<li><a href="javascript:popUpEmail(620, 670)" >메일</a></li>
					<li><a href="javascript:popUpMassage(420, 350)" >쪽지</a></li>
					<li><a href="javascript:StepMassage(620, 285)" >스텝 기능</a></li>
                 </ul>
            </div>
         <div class="clear"></div>
    </div>
        
        
        
			
        </main>

       

        <footer>
            <div class="footer_nav">
                
                    <ul>
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">제휴제안</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li><a href="#">개인정보처리방침</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
            

                <p> copyright DESIGN YOUR TRIP</p>
            </div>
        </footer> <!--p태그로 잡으면 안되나봐 -->

    </div> <!-- end fullweb -->

    <!--main_menu_nav-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/cbpHorizontalMenu.min.js"></script>
    <script>$(function() {cbpHorizontalMenu.init();});</script>

    <!--main_login-->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script src="js/index.js"></script>

</body>

</html>
