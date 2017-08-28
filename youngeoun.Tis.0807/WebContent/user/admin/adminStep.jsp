<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.user.admin.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<User> StepUser = (List<User>)session.getAttribute("StepUser");
%>
<% Login dto = (Login)session.getAttribute("Login"); %>
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
        <%@include file="../../headerNavAdmin.jsp"%>
		<!-- 메인 작업부분 -->
        <main>
        
<div class="adminMenu">
	<ul id="gnb">
				<li><a href="adminmain.jsp"><h2>메인</h2></a></li>
				<li><a href="adminFull.jsp"><h2>회원 관리</h2></a></li>
				<li><a href="adminBlind.jsp"><h2>제재 회원 관리</h2></a></li>
				<li><a href="adminForcedBlindControl.jsp"><h2>강제 탈퇴 회원 관리</h2></a></li>
				<li><a href="adminStepControl.jsp"><h2>스텝 관리</h2></a></li>
	</ul>
</div>
     <div class="main">
       <div class="mainB"><h1>스텝 관리</h1>
            <div class="mainSerch">
              <div class="mainSerch1"><select class="serchOption" size = "1" style="width: 65px; height: 22px;">
                   <option>아이디</option>
                   <option>이름</option>
               </select></div>
              <div class="mainSerch2"><input id="search" type="search" style="width: 170px; height: 22px; name="search_member" placeholder="검색" maxlength="255"></div>
                  <div class="mainSerch3">
                      <button id="member_button" type="submit"><!--검색--></button>
                  </div>
               
              
              
            </div>
             <div class="mainBb">
              <ul id="gnb9">
                    <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
		            <li><a href="#">처리일▼</a></li>
                    <li><a href="#">등급▼</a></li>
                 </ul>
             </div>
              
             
             <div class="mainB2Step"> 
              <%for(int i=0;i<StepUser.size();i++){ %>
                        <div class="memberstepDataBcheck"><p><input type="checkbox"></p></div>
                        <div class="memberstepDataBid"><p><%=StepUser.get(i).getUserId() %></p></div>
                        <div class="memberstepDataBname"><p><%=StepUser.get(i).getUserName() %></p></div>
                        <div class="memberstepDataBdate"><p></p></div>
                        <div class="memberstepDataBgrade"><p></p></div>
              <%} %>   
                        
             </div>
                     
             <div class="memberNum"><a>◀ 1 2 3 4 5 ▶</a></div>
             <div class="mainBbutton">
             
              </div>
            
             
              
        </div>
          <div class="mainBoption">
                    <ul id="gnb5">
		            <li><a href="javascript:popUpEmail(620, 670)" >메일</a></li>
                    <li><a href="javascript:ClearMassage(625, 285)">스텝 해제</a></li>
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
