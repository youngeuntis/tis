<%@page import="java.util.List"%>
<%@page import="youngun.tis.user.admin.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<User> Fuser = (List<User>)session.getAttribute("Fuser");
	
	

%>
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
                    <img src="img/DYTR.png" style="display:inline-block; width:15%;height:auto; margin-top:-15px;">
                    <h1><a href="main.html">Design Your Trip</a></h1>
                </div>
                <div id="cbp-hrmenu" class="cbp-hrmenu">
                    <ul>
                        <li>
							<!-- 햄버거 -->
                            <a href="#"><i class="fa fa-bars"></i></a>
                            <div class="cbp-hrsub" style="width:600px;">
                                <div class="cbp-hrsub-inner" style="width:600px;">
                                    
									<div class="sub_ham">
                                        <h4>커뮤니티</h4>
                                        <ul>
                                            <li><a href="#">후기</a></li>
                                            <li><a href="#">Q&amp;A</a></li>
                                            <li><a href="#">FAQ</a></li>
                                        </ul>
                                    </div>
                                    <div class="sub_ham" id="sub_ham_event" >
                                        <h4>이벤트</h4>
                                        <ul>
                                            <li><a href="#">이벤트</a></li>
                                        </ul>
                                    </div>
									<div class="sub_ham">
                                        <h4>문의사항</h4>
                                    </div>
                                </div>
                                <!-- /cbp-hrsub-inner -->
                            </div>
                            <!-- /cbp-hrsub -->
                        </li>
                        <li>
                            <a href="#">여행지</a>
                            <div class="cbp-hrsub">
                                <div class="cbp-hrsub-inner">
                                    <div>
                                        <h4>대한민국</h4>
                                        <ul>
                                            <li><a href="#">서울</a></li>
                                            <li><a href="#">경기</a></li>
                                            <li><a href="#">제주</a></li>
                                            <li><a href="#">부산</a></li>
                                            <li><a href="#">강원도</a></li>
                                            <li><a href="#">충청도</a></li>
                                            <li><a href="#">전라도</a></li>
                                            <li><a href="#">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="#">네팔</a></li>
                                            <li><a href="#">대만</a></li>
                                            <li><a href="#">몰디브</a></li>
                                            <li><a href="#">말레이시아</a></li>
                                            <li><a href="#">발리</a></li>
                                            <li><a href="#">베트남</a></li>
                                            <li><a href="#">부탄</a></li>
                                            <li><a href="#">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="#">일본</a></li>
                                            <li><a href="#">인도</a></li>
                                            <li><a href="#">인도네시아</a></li>
                                            <li><a href="#">중국</a></li>
                                            <li><a href="#">캄보디아</a></li>
                                            <li><a href="#">태국</a></li>
                                            <li><a href="#">필리핀</a></li>
                                            <li><a href="#">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="#">미국</a></li>
                                            <li><a href="#">하와이</a></li>
                                            <li><a href="#">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="#">그리스</a></li>
                                            <li><a href="#">노르웨이</a></li>
                                            <li><a href="#">네덜란드</a></li>
                                            <li><a href="#">독일</a></li>
                                            <li><a href="#">덴마크</a></li>
                                            <li><a href="#">록셈부르크</a></li>
                                            <li><a href="#">루마니아</a></li>
                                            <li><a href="#">몰타</a></li>
                                            <li><a href="#">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="#">스위스</a></li>
                                            <li><a href="#">스웨덴</a></li>
                                            <li><a href="#">스페인</a></li>
                                            <li><a href="#">슬로바키아</a></li>
                                            <li><a href="#">아이슬란드</a></li>
                                            <li><a href="#">아일랜드</a></li>
                                            <li><a href="#">영국</a></li>
                                            <li><a href="#">이탈리아</a></li>
                                            <li><a href="#">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="#">체코</a></li>
                                            <li><a href="#">터키</a></li>
                                            <li><a href="#">러시아</a></li>
                                            <li><a href="#">에스토니아</a></li>
                                            <li><a href="#">크로아티아</a></li>
                                            <li><a href="#">헝가리</a></li>
                                            <li><a href="#">프랑스</a></li>
                                            <li><a href="#">폴란드</a></li>
                                            <li><a href="#">포르투칼</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /cbp-hrsub-inner -->
                            </div>
                            <!-- /cbp-hrsub -->
                        </li>
                        <li>
                            <a href="#">커뮤니티</a>
                            <div class="cbp-hrsub" style="width:20%!important; left:700px;">
                                <div class="cbp-hrsub-inner" style="width:300px;">
		                            <div class="sub_comunity" style="position:relative; margin-left:50px; margin-right : 20px; display:block; float:left;">
			                            <h4 style="margin-top:4px;">Q&A</h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4>FAQ</h4>
		                           	</div>
                                    <div class="sub_comunity" style="display:block; margin-top: -25px;">
			                            <h4>후기</h4>
		                           	</div>
	                           	</div>
                           	</div>            
                        </li>
                        <li>
                            <a href="#">이벤트</a>
                        </li>
                        <li>
                            <a href="#">문의사항</a>
                        </li>
                    </ul>
                </div>

                <div class="right_nav">
                    <!-- main_join -->
                    <div class="right_nav_join"><a>회원가입</a></div><!-- end join -->
                    
                    <!-- main_login -->
								<div id ="login">
									  <section class="modal signup badge-overlay-signin">
										<a class="btn-close badge-overlay-close" id="closepopup" href="#">✖</a>
										<section id="signup">
										<h2>Login</h2>
										<form id="login-email" class="badge-login-form" action="" method="POST">
											<input type="hidden" value="">
											<input type="hidden" id="jsid-login-form-next-url" name="next" value="">
																	<input type="hidden" name="location" value="1">
															<p class="lead">Log in with your email address </p>
											<div class="field">
												<label for="jsid-login-email-name">Email</label>
												<input id="jsid-login-email-name" type="text" name="username" value="" autofocus="autofocus">
											</div>
											<div class="field">
												<label for="login-email-password">Password</label>
												<input id="login-email-password" type="password" name="password" value="">
														</div>
											<div class="btn-container">
												<input type="submit" value="Log in" onclick="">
												<a class="forgot-password" href="" onclick="">Forgot Password</a>
											</div>
										</form>
										</section>
									</section>
								</div>
								<div class="overlay"></div>
								<div class="demo">
								  <a id="launch" class="fbbutton" href="#">로그인</a>
								 
								</div>
								<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

								<script src="js/index.js"></script>

                    
                    <div class="clear"></div>
                    
                    <!-- main_search -->
                    <div class="right_nav_search">
                        <form method="get">
                            <div>
                                <input id="nav_search" type="search" name="search_keyword" placeholder="여행지를 검색" maxlength="255">
                            </div>
                            <div>
                                <button id="search_button" type="submit"><!--검색--></button>
                            </div>
                        </form>
                    </div><!--end .right_nav_search -->
                </div><!--end .right_nav -->
            </div><!--end .Center-->
        </header>


    
		
		
		<!-- 메인 작업부분 -->
		
		
		
        <main>
        
<div class="adminMenu">
	<ul id="gnb">
				<li><a href="adminmainControl.jsp"><h2>메인</h2></a></li>
				<li><a href="adminFullControl.jsp"><h2>회원 관리</h2></a></li>
				<li><a href="adminBlindControl.jsp"><h2>제재 회원 관리</h2></a></li>
				<li><a href="adminForcedBlindControl.jsp"><h2>강제 탈퇴 회원 관리</h2></a></li>
				<li><a href="adminStepControl.jsp"><h2>스텝 관리</h2></a></li>
	</ul>
</div>
     <div class="main">
       <div class="mainB"><h1>전체 회원</h1>
            <div class="mainSerch">
              <div class="mainSerch1"><select class="serchOption" size = "1" style="width: 65px; height: 22px;">
                   <option>아이디</option>
                   <option>이름</option>
               </select></div>
              <div class="mainSerch2"><input id="search" style="width: 170px; height: 22px; type="search" type="search" name="search_member" placeholder="검색" maxlength="255"></div>
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
           
           <%for(int i=0;i<Fuser.size();i++){ %>
                      <div class="memberDataBcheck"><input type="checkbox"></div>
                      <div class="memberDataBid"><p><%=Fuser.get(i).getUserId() %></p></div>
                      <div class="memberDataBname"><p><%=Fuser.get(i).getUserName() %></p></div>
                      <div class="memberDataBjoindate"><p><%=Fuser.get(i).getJoinDate()%></p></div>
                      <div class="memberDataBvisitdate"><p><%=Fuser.get(i).getUntilvisit() %></p></div>
                      <div class="memberDataBwhite"><p><%=Fuser.get(i).getWriteCount() %></p></div>
                      <div class="memberDataBcoment"><p><%=Fuser.get(i).getReplCount() %></p></div>
                      <div class="memberDataBvisitcount"><p></p></div>
             <%} %>
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
