<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
<link rel="stylesheet" href="../res/css/mypage.css">
<script type="text/javascript" src="../res/js/custom.js"></script>
<script	src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="../res/js/modernizr.custom.js"></script>

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
                            <div class="cbp-hrsub" style="width:600px;">
                                <div class="cbp-hrsub-inner" style="width:600px;">
                                    
									<div class="sub_ham">
                                        <h4>커뮤니티</h4>
                                        <ul>
                                            <li><a href="review/01reviewMain.html">후기</a></li>
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
                                        <ul>
                                            <li><a href="../qna/01qnaMain.html">Q&amp;A</a></li>
                                            <li><a href="../qna/08faqlist.html">FAQ</a></li>
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
                                            <li><a href="../travel/01TravelMain.html">서울</a></li>
                                            <li><a href="../travel/01TravelMain.html">경기</a></li>
                                            <li><a href="../travel/01TravelMain.html">제주</a></li>
                                            <li><a href="../travel/01TravelMain.html">부산</a></li>
                                            <li><a href="../travel/01TravelMain.html">강원도</a></li>
                                            <li><a href="../travel/01TravelMain.html">충청도</a></li>
                                            <li><a href="../travel/01TravelMain.html">전라도</a></li>
                                            <li><a href="../travel/01TravelMain.html">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">네팔</a></li>
                                            <li><a href="../travel/01TravelMain.html">대만</a></li>
                                            <li><a href="../travel/01TravelMain.html">몰디브</a></li>
                                            <li><a href="../travel/01TravelMain.html">말레이시아</a></li>
                                            <li><a href="../travel/01TravelMain.html">발리</a></li>
                                            <li><a href="../travel/01TravelMain.html">베트남</a></li>
                                            <li><a href="../travel/01TravelMain.html">부탄</a></li>
                                            <li><a href="../travel/01TravelMain.html">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="../travel/01TravelMain.html">일본</a></li>
                                            <li><a href="../travel/01TravelMain.html">인도</a></li>
                                            <li><a href="../travel/01TravelMain.html">인도네시아</a></li>
                                            <li><a href="../travel/01TravelMain.html">중국</a></li>
                                            <li><a href="../travel/01TravelMain.html">캄보디아</a></li>
                                            <li><a href="../travel/01TravelMain.html">태국</a></li>
                                            <li><a href="../travel/01TravelMain.html">필리핀</a></li>
                                            <li><a href="../travel/01TravelMain.html">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">미국</a></li>
                                            <li><a href="../travel/01TravelMain.html">하와이</a></li>
                                            <li><a href="../travel/01TravelMain.html">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">그리스</a></li>
                                            <li><a href="../travel/01TravelMain.html">노르웨이</a></li>
                                            <li><a href="../travel/01TravelMain.html">네덜란드</a></li>
                                            <li><a href="../travel/01TravelMain.html">독일</a></li>
                                            <li><a href="../travel/01TravelMain.html">덴마크</a></li>
                                            <li><a href="../travel/01TravelMain.html">록셈부르크</a></li>
                                            <li><a href="../travel/01TravelMain.html">루마니아</a></li>
                                            <li><a href="../travel/01TravelMain.html">몰타</a></li>
                                            <li><a href="../travel/01TravelMain.html">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="../travel/01TravelMain.html">스위스</a></li>
                                            <li><a href="../travel/01TravelMain.html">스웨덴</a></li>
                                            <li><a href="../travel/01TravelMain.html">스페인</a></li>
                                            <li><a href="../travel/01TravelMain.html">슬로바키아</a></li>
                                            <li><a href="../travel/01TravelMain.html">아이슬란드</a></li>
                                            <li><a href="../travel/01TravelMain.html">아일랜드</a></li>
                                            <li><a href="../travel/01TravelMain.html">영국</a></li>
                                            <li><a href="../travel/01TravelMain.html">이탈리아</a></li>
                                            <li><a href="../travel/01TravelMain.html">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="../travel/01TravelMain.html">체코</a></li>
                                            <li><a href="../travel/01TravelMain.html">터키</a></li>
                                            <li><a href="../travel/01TravelMain.html">러시아</a></li>
                                            <li><a href="../travel/01TravelMain.html">에스토니아</a></li>
                                            <li><a href="../travel/01TravelMain.html">크로아티아</a></li>
                                            <li><a href="../travel/01TravelMain.html">헝가리</a></li>
                                            <li><a href="../travel/01TravelMain.html">프랑스</a></li>
                                            <li><a href="../travel/01TravelMain.html">폴란드</a></li>
                                            <li><a href="../travel/01TravelMain.html">포르투칼</a></li>
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
			                            <h4 style="margin-top:4px;">Q&amp;A</h4>
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
                            <a href="qna/01qnaMain.html">문의사항</a>
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
								<div class="overlay"></div>
								<div class="demo">
								  <a id="launch" class="fbbutton" href="#">로그인</a>
								</div>
								<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

								<script src="../res/js/index.js"></script>

                    
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

			<div class="mySlides fade" style="display: block;">
				<img src="../res/img/trip/p.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="../res/img/trip/m.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="../res/img/trip/g.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="../res/img/trip/pr.jpg" style="width: 100%;">
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
				onclick="plusSlides(1)">&#10095;</a>

		</div>


		<!-- 메인 작업부분 -->

		<main>

		<div class="my_container">

			<div class="my_inner">

				<div class="my_inner_top">

					<div class="my_profile">

						<div class="my_profile_title">
							<h1>My 프로필</h1>
						</div>
						<!--end my_profile_title-->

						<div class="my_profile_content">
							<div class="my_profile_img">
								<img src="http://via.placeholder.com/150x100?text=ok?"
									alt="profile img" class="profile_img">
							</div>
							<div class="my_profile_name">
								<span class="profile_name">name</span>
							</div>
						</div>
						<!--end my_profile_content-->

						<p class="my_profile_modify">
							<a href="#"><b>수정</b></a>
						</p>
						<!--end my_profile_modify-->

					</div>
					<!--end profile-->

					<div class="my_personnal">

						<div class="my_personnal_title">
							<h1>My 정보</h1>
						</div>

						<div class="my_personnal_content">
							<div class="email">
								<dt class="per">
									<dr class="per_email">이메일</dr>
									<dr class="per_email_addr">aaa@vvv.com</dr>
								</dt>
							</div>
							<!--end email-->
							<div class="tel">
								<dt class="per">
									<dr class="per_tel">연락처</dr>
									<dr class="per_tel_num">010-1234-5678</dr>
								</dt>
							</div>
							<!--end tel-->

						</div>
						<!--end my_personnal_content-->

						<p class="my_personnal_modify">
							<a href="#"><b>수정</b></a>
						</p>
						<!--end my_profile_modify-->

					</div>
					<!--end my_personnal-->

				</div>
				<!--end my_inner_top-->

				<div class="my_inner_bottom">
					<div class="wishlist_container">
						<div class="wishlist_title">
							<h1>My 찜 목록</h1>
						</div>
						<div class="wishlist_title_add">
							<a href="#">더보기</a>
						</div>
						<div class="wishlist_content">
							<div class="wishlist_list">
								<div class="wishlist_img">
									<img src="http://via.placeholder.com/300x300?text=ok?" alt="">
								</div>
								<div class="wishlist_name">
									<p>
										<b>찜 목록 제목</b>
									</p>
								</div>
							</div>
						</div>

						<div class="activity_containner">
							<div class="activity_title">
								<h1>My 활동기록</h1>
							</div>

							<div class="ac_comment_add">
								<a href="#">내가 쓴 댓글 더보기</a>
							</div>

							<div class="ac_post_add">
								<a href="#">내가 쓴 게시글 더보기</a>
							</div>
						</div>
					</div>
				</div>
				<!--end my_inner_bottom-->
			</div>
			<!--end my_inner-->

		</div>
		<!-- end my_container --> </main>



		<footer>
			<div class="footer_nav">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">제휴제안</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>

				<p>copyright DESIGN YOUR TRIP</p>
			</div>
		</footer>

	</div>
	<!-- end fullweb -->

	<!--main_menu_nav-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="../res/js/cbpHorizontalMenu.min.js"></script>
	<script>$(function() {cbpHorizontalMenu.init();});</script>

	<!--main_login-->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
	<script src="../res/js/index.js"></script>

</body>
</html>
