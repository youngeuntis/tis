<%@page import="youngun.tis.review.service.SearchService"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.review.domain.Review"%>
<%@page import="youngun.tis.review.domain.PageReview"%>
<%@page import="youngun.tis.review.domain.Country"%>
<%@page import="youngun.tis.review.dao.ReviewDaoImpl"%>
<%@page import="youngun.tis.review.dao.ReviewDao"%>
<%@page import="youngun.tis.review.dao.TravelDao"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="youngun.tis.review.mapper.ReviewMapper"%>
<%@page import="youngun.tis.review.mapper.TravelMapper"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
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
    <link rel="stylesheet" href="../res/css/styleMain.css">
    <link rel="stylesheet" href="../res/css/review.css">
    <link rel="stylesheet" href="../res/css/selectOption.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">

</head>

<body>

    <div id="fullweb">
        <header>
            <div class="Center">
                <div class="site-logo">
                    <img src="../res/img/logo/DYTR.png" style="display:inline-block; width:15%;height:auto; margin-top:-15px;">
                    <h1><a href="../main.html">Design Your Trip</a></h1>
                </div>
                <div id="cbp-hrmenu" class="cbp-hrmenu">
                    <ul>
                        <li>
							<!-- 햄버거 -->
                            <a href="#"><i class="fa fa-bars"></i></a>
                            <div class="cbp-hrsub" style="width:600px; left:545px;">
                                <div class="cbp-hrsub-inner" style="width:600px;">
                                    
									<div class="sub_ham">
                                        <h4>커뮤니티</h4>
                                        <ul>
                                            <li><a href="../review/01.html">후기</a></li>
                                        </ul>
                                    </div>
                                    <div class="sub_ham" id="sub_ham_event" >
                                        <h4>이벤트</h4>
                                        <ul>
                                            <li><a href="../event/01.html">이벤트</a></li>
                                        </ul>
                                    </div>
									<div class="sub_ham">
                                        <h4>문의사항</h4>
                                        <ul>
                                            <li><a href="../qna/01.html">Q&amp;A</a></li>
                                            <li><a href="../qna/08.html">FAQ</a></li>
                                        </ul>
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
                                            <li><a href="../travel/01.html">서울</a></li>
                                            <li><a href="../travel/01.html">경기</a></li>
                                            <li><a href="../travel/01.html">제주</a></li>
                                            <li><a href="../travel/01.html">부산</a></li>
                                            <li><a href="../travel/01.html">강원도</a></li>
                                            <li><a href="../travel/01.html">충청도</a></li>
                                            <li><a href="../travel/01.html">전라도</a></li>
                                            <li><a href="../travel/01.html">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="../travel/01.html">네팔</a></li>
                                            <li><a href="../travel/01.html">대만</a></li>
                                            <li><a href="../travel/01.html">몰디브</a></li>
                                            <li><a href="../travel/01.html">말레이시아</a></li>
                                            <li><a href="../travel/01.html">발리</a></li>
                                            <li><a href="../travel/01.html">베트남</a></li>
                                            <li><a href="../travel/01.html">부탄</a></li>
                                            <li><a href="../travel/01.html">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="../travel/01.html">일본</a></li>
                                            <li><a href="../travel/01.html">인도</a></li>
                                            <li><a href="../travel/01.html">인도네시아</a></li>
                                            <li><a href="../travel/01.html">중국</a></li>
                                            <li><a href="../travel/01.html">캄보디아</a></li>
                                            <li><a href="../travel/01.html">태국</a></li>
                                            <li><a href="../travel/01.html">필리핀</a></li>
                                            <li><a href="../travel/01.html">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="../travel/01.html">미국</a></li>
                                            <li><a href="../travel/01.html">하와이</a></li>
                                            <li><a href="../travel/01.html">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="../travel/01.html">그리스</a></li>
                                            <li><a href="../travel/01.html">노르웨이</a></li>
                                            <li><a href="../travel/01.html">네덜란드</a></li>
                                            <li><a href="../travel/01.html">독일</a></li>
                                            <li><a href="../travel/01.html">덴마크</a></li>
                                            <li><a href="../travel/01.html">록셈부르크</a></li>
                                            <li><a href="../travel/01.html">루마니아</a></li>
                                            <li><a href="../travel/01.html">몰타</a></li>
                                            <li><a href="../travel/01.html">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="../travel/01.html">스위스</a></li>
                                            <li><a href="../travel/01.html">스웨덴</a></li>
                                            <li><a href="../travel/01.html">스페인</a></li>
                                            <li><a href="../travel/01.html">슬로바키아</a></li>
                                            <li><a href="../travel/01.html">아이슬란드</a></li>
                                            <li><a href="../travel/01.html">아일랜드</a></li>
                                            <li><a href="../travel/01.html">영국</a></li>
                                            <li><a href="../travel/01.html">이탈리아</a></li>
                                            <li><a href="../travel/01.html">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="../travel/01.html">체코</a></li>
                                            <li><a href="../travel/01.html">터키</a></li>
                                            <li><a href="../travel/01.html">러시아</a></li>
                                            <li><a href="../travel/01.html">에스토니아</a></li>
                                            <li><a href="../travel/01.html">크로아티아</a></li>
                                            <li><a href="../travel/01.html">헝가리</a></li>
                                            <li><a href="../travel/01.html">프랑스</a></li>
                                            <li><a href="../travel/01.html">폴란드</a></li>
                                            <li><a href="../travel/01.html">포르투칼</a></li>
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
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-left:40px; margin-right: 20px;">
			                            <h4><a href="../review/01.html">후기</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="#">제목1</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; ">
			                            <h4><a href="#">제목2</a></h4>
		                           	</div>
	                           	</div>
                           	</div>            
                        </li>
	                    
	                    <li>
	                        <a href="#">이벤트</a>
	                        <div class="cbp-hrsub" style="width:20%!important; left:800px;">
                                <div class="cbp-hrsub-inner" style="width:300px;">
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-left:40px; margin-right: 20px;">
			                            <h4><a href="../event/01.html">이벤트</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="#">제목1</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; ">
			                            <h4><a href="#">제목2</a></h4>
		                           	</div>
	                           	</div>
                           	</div>
	                    </li>
                        
                        <li>
                            <a href="#">문의사항</a>
                            <div class="cbp-hrsub" style="width:20%!important; left:800px;">
                                <div class="cbp-hrsub-inner" style="width:300px;">
		                           	<div class="sub_comunity" style="position:relative; margin-left:80px; margin-right : 20px; display:block; float:left;">
			                            <h4><a href="../qna/01.html">Q&amp;A</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="../qna/08.html">FAQ</a></h4>
		                           	</div>
	                           	</div>
                           	</div>
                        </li>
                    </ul>
                </div>

                <div class="right_nav">
                    <!-- main_join -->
                    <%if(dto == null){ %>
                    <div class="right_nav_join"><a>회원가입</a>
                    </div>
                    <%} %>
                    <!-- end join -->
                    
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
															<p class="lead">Log in with your id password </p>
											<div class="field">
												<label for="jsid-login-email-name">ID</label>
												<input id="jsid-login-email-name" type="text" name="username" value="" autofocus="autofocus">
											</div>
											<div class="field">
												<label for="login-email-password">PASSWORD</label>
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
					
					<%if(dto != null){ %>
						<div class="demo">
							<a id="my" class="my" href="mypage/myPage.jsp"><label>마이페이지</label></a>
							<a id="launch" class="fbbutton"
								href="user/login/loginoutControl.jsp?action=logout"><label>로그아웃</label>
							</a>
							<%if(dto.getUserId().equals("admin")){ %>
							<a id="launch" class="fbbutton"
								href="user/login/loginoutControl.jsp?action=logout"><label>관리자페이지</label>
							</a>
							<%} %>
						</div>
						<%}else{ %>
						<div class="demo">
							<a id="launch" class="fbbutton" href="#">로그인</a>
						</div>
						<%} %>
						<script
							src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
	
						<script src="res/js/index.js"></script>
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


        <div class="slideshow-container">
			<h1 style="position: absolute; top:50%; left:50%; transform: translate(-50%, -50%);                                                                   
     font-size:5rem;  color: white;  z-index: 2; text-align: center;">여행후기</h1>
            <div class="mySlides fade" style="display:block;">
                <img src="../res/img/travelImg/p.jpg" style="width:100%; ">
            </div>

            <div class="mySlides fade">
                <img src="../res/img/travelImg/m.jpg" style="width:100%; ">
            </div>

            <div class="mySlides fade">
                <img src="../res/img/travelImg/g.jpg" style="width:100%; ">
            </div>

            <div class="mySlides fade">
                <img src="../res/img/travelImg/pr.jpg" style="width:100%;">
            </div>

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

        </div>
		
		
		<!-- 메인 작업부분 -->
		
				
       <% 
			ReviewDao reviewDao = new ReviewDaoImpl();
			SearchService service = new SearchService(reviewDao);
			String title = request.getParameter("review_title");
			String content = request.getParameter("review_content");
			String continent = request.getParameter("continent");
			String country = request.getParameter("country");
			String reviewNum = request.getParameter("reviewNum");
			String userNum = request.getParameter("userNum");
			Pattern p = Pattern.compile("(http://i.imgur.com/)+(([a-zA-Z0-9]*.jpg)|([a-zA-Z0-9]*.png)|([a-zA-Z0-9]*.jpeg))");
			Matcher m = p.matcher(content);
			List<Review> reviews = reviewDao.getReviewListNoPara();
			Review review = null;
			if(reviewNum == null){
				review = new Review();
				service.writeReview(review, title, content, continent, country, m);
				reviewDao.insertInfo(review);
			}else{
				review = service.searchReview(reviews, reviewNum);
				service.writeReview(review, title, content, continent, country, m);
				service.modifyReview(review);
			}
			
			/* blog.setContinentCode(continent);
			blog.setNationCode(country);
			blog.setBlogTitle(title);
			blog.setBlogContent(content);
			while(m.find()){
				blog.setImg(m.group());
			} */			
		%>
		
		
        <main>
        	<h2>글이 등록되었습니다.</h2>
        	<button onclick="move()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">메인으로</button>
        	<script>
        		function move(){
        			history.go(-2);
        		}
        	</script>
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
        </footer>

    </div> <!-- end fullweb -->

    <!--main_menu_nav-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="../res/js/cbpHorizontalMenu.min.js"></script>
    <script>$(function() {cbpHorizontalMenu.init();});</script>

    <!--main_login-->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script src="../res/js/index.js"></script>

</body>

</html>