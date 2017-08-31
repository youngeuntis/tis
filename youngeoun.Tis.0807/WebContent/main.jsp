<%@page import="youngun.tis.travel.blog.domain.Blog"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.travel.blog.service.SearchService"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDaoImpl"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDao"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page session="true"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="description" content="해외 자유여행 컨텐츠 정보 공유">
<meta name="keywords"
	content="해외여행, 자유여행, 싱가포르, 싱가폴
			파리, 미국, 미주, 미국 자유여행, 일본, 태국, 하와이, 대만, 홍콩, 베트남, 필리핀,
			인도네시아, 프랑스, 스페인, 이탈리아, 영국">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Design Your TRip</title>
<link rel="stylesheet" href="res/css/styleMain.css">
<script type="text/javascript" src="res/js/custom.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="res/js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css"	href="http://fonts.googleapis.com/earlyaccess/hanna.css">

</head>

<body>
	<div id="fullweb">
		<header>
			<div class="Center">
				<div class="site-logo">
					<img src="res/img/logo/DYTR.png"
						style="display: inline-block; width: 15%; height: auto; margin-top: -15px;">
					<h1>
						<a href="main.jsp">Design Your Trip</a>
					</h1>
				</div>
				<div id="cbp-hrmenu" class="cbp-hrmenu">
					<ul>
						<li>
							<!-- 햄버거 --> <a href="#"><i class="fa fa-bars"></i></a>
							<div class="cbp-hrsub" style="width: 600px; left: 545px;">
								<div class="cbp-hrsub-inner" style="width: 600px;">
		
									<div class="sub_ham">
										<h4>커뮤니티</h4>
										<ul>
											<li><a href="review/reviewMain.jsp">후기</a></li>
										</ul>
									</div>
									<div class="sub_ham" id="sub_ham_event">
										<h4>이벤트</h4>
										<ul>
											<li><a href="event/01event.jsp">이벤트</a></li>
										</ul>
									</div>
									<div class="sub_ham">
										<h4>문의사항</h4>
										<ul>
											<li><a href="qna/01qnaMain.jsp">Q&amp;A</a></li>
											<li><a href="qna/08faqlist.jsp">FAQ</a></li>
										</ul>
									</div>
								</div>
								<!-- /cbp-hrsub-inner -->
							</div> <!-- /cbp-hrsub -->
						</li>
						<li><a href="#">여행지</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner">
									<div>
										<h4>대한민국</h4>
										<ul>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=서울">서울</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=경기">경기</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=제주">제주</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=부산">부산</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=강원도">강원도</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=충청도">충청도</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=전라도">전라도</a></li>
											<li><a href="travel/05TravelAfter.jsp?continent=대한민국&nation=경상도">경상도</a></li>
										</ul>
									</div>
									<div class="asia" style="width: 200px;">
										<h4>아시아</h4>
										<div class="asia_l">
											<ul>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=네팔">네팔</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=대만">대만</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=몰디브">몰디브</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=말레이시아">말레이시아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=발리">발리</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=베트남">베트남</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=부탄">부탄</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=싱가폴">싱가폴</a></li>
											</ul>
										</div>
										<div class="asia_r">
											<ul>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=일본">일본</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=인도">인도</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=인도네시아">인도네시아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=중국">중국</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=캄보디아">캄보디아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=태국">태국</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=필리핀">필리핀</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=아시아&nation=홍콩">홍콩</a></li>
											</ul>
										</div>
									</div>
									<div>
										<h4>미/대양주</h4>
										<ul>
											<li><a
												href="travel/05TravelAfter.jsp?continent=미대양주&nation=미국">미국</a></li>
											<li><a
												href="travel/05TravelAfter.jsp?continent=미대양주&nation=하와이">하와이</a></li>
											<li><a
												href="travel/05TravelAfter.jsp?continent=미대양주&nation=호주">호주</a></li>
										</ul>
									</div>
									<div class="eu" style="width: 300px">
										<h4>유럽</h4>
										<div class="eu_l">
											<ul>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=그리스">그리스</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=노르웨이">노르웨이</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=네덜란드">네덜란드</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=독일">독일</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=덴마크">덴마크</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=룩셈부르크">록셈부르크</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=루마니아">루마니아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=몰타">몰타</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=벨기에">벨기에</a></li>
											</ul>
										</div>
										<div class="eu_c">
											<ul>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=스위스">스위스</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=스웨덴">스웨덴</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=스페인">스페인</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=슬로바키아">슬로바키아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=아이슬란드">아이슬란드</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=아일랜드">아일랜드</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=영국">영국</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=이탈리아">이탈리아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=오스트리아">오스트리아</a></li>
											</ul>
										</div>
										<div class="eu_r">
											<ul>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=체코">체코</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=터키">터키</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=러시아">러시아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=에스토니아">에스토니아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=크로아티아">크로아티아</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=헝가리">헝가리</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=프랑스">프랑스</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=폴란드">폴란드</a></li>
												<li><a
													href="travel/05TravelAfter.jsp?continent=유럽&nation=포르투칼">포르투칼</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- /cbp-hrsub-inner -->
							</div> <!-- /cbp-hrsub --></li>
						<li><a href="#">커뮤니티</a>
							<div class="cbp-hrsub" style="width: 20% !important; left: 700px;">
								<div class="cbp-hrsub-inner" style="width: 300px;">
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-left: 40px; margin-right: 20px;">
										<h4>
											<a href="review/reviewMain.jsp">후기</a>
										</h4>
									</div>
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-right: 20px;">
										<h4>
											<a href="#">제목1</a>
										</h4>
									</div>
									<div class="sub_comunity"
										style="display: block; margin-top: -25px;">
										<h4>
											<a href="#">제목2</a>
										</h4>
									</div>
								</div>
							</div></li>
		
						<li><a href="#">이벤트</a>
							<div class="cbp-hrsub" style="width: 20% !important; left: 800px;">
								<div class="cbp-hrsub-inner" style="width: 300px;">
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-left: 40px; margin-right: 20px;">
										<h4>
											<a href="event/01event.jsp">이벤트</a>
										</h4>
									</div>
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-right: 20px;">
										<h4>
											<a href="#">제목1</a>
										</h4>
									</div>
									<div class="sub_comunity"
										style="display: block; margin-top: -25px;">
										<h4>
											<a href="#">제목2</a>
										</h4>
									</div>
								</div>
							</div></li>
		
						<li><a href="#">문의사항</a>
							<div class="cbp-hrsub" style="width: 20% !important; left: 800px;">
								<div class="cbp-hrsub-inner" style="width: 300px;">
									<div class="sub_comunity"
										style="position: relative; margin-left: 80px; margin-right: 20px; display: block; float: left;">
										<h4>
											<a href="qna/01qnaMain.jsp">Q&amp;A</a>
										</h4>
									</div>
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-right: 20px;">
										<h4>
											<a href="qna/08faqlist.jsp">FAQ</a>
										</h4>
									</div>
								</div>
							</div></li>
					</ul>
				</div>
		
				<div class="right_nav">
					<!-- signup -->
					<%if(dto == null){ %>
					<div class="right_nav_join">
						<a href="user/signup/signup.jsp">회원가입</a>
					</div>
					<%} %>
					<!-- end join -->
		
					<!-- main_login -->
					<div id="login">
						<section class="modal signup badge-overlay-signin">
							<a class="btn-close badge-overlay-close" id="closepopup" href="#">✖</a>
							<section id="signup">
								<h2>Login</h2>
								<form id="login-email" class="badge-login-form"
									action="user/login/loginoutControl.jsp" method="POST">
									<input type="hidden" name="action" value="login"> <input
										type="hidden" id="jsid-login-form-next-url" name="next" value="">
									<input type="hidden" name="location" value="1">
									<p class="lead">Log in with your id password</p>
									<div class="field">
										<label for="jsid-login-email-name">ID</label> <input
											id="jsid-login-email-name" type="text" name="login_user_id"
											value="" autofocus="autofocus">
									</div>
									<div class="field">
										<label for="login-email-password">PASSWORD</label> <input
											id="login-email-password" type="password" name="login_user_pw"
											value="">
									</div>
									<script type="text/javascript">
									function checkid() {
										window.open("user/login/pwCheck.jsp", "", "width=600, height=280");
									}
									</script>
									<div class="btn-container">
									<input type="submit" value="Log in">
										<a class="forgot-password" href="#" onclick="javascript:checkid()" >Forgot Password</a>
									</div>
								</form>
							</section>
						</section>
					</div>
					<div class="overlay"></div>
		
					<%if(dto != null){ %>
		
					<div class="demo">
						<a id="my" class="my" href="mypage/myPage.jsp"><label>마이페이지</label></a>
						<a id="launch" class="fbbutton"
							href="user/login/loginoutControl.jsp?action=logout"><label>로그아웃</label>
						</a> <%if(dto.getUserId().equals("admin")){ %> <a id="launch" class="fbbutton"
							href="user/admin/adminmain.jsp"><label style="margin-right: 10px">관리자페이지</label>
						</a> <%} %>
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
						<form method="get" action="common/search.jsp">
							<div>
								<input id="nav_search" type="search" name="keyWord"
									placeholder="여행지를 검색" maxlength="255">
							</div>
							<div>
								<button id="search_button" type="submit">
									<!--검색-->
								</button>
							</div>
						</form>
					</div>
					<!--end .right_nav_search -->
				</div>
			</div>
			<!--end .Center-->
		</header>

		<div class="slideshow-container">

			<div class="mySlides fade" style="display: block;">
				<img src="res/img/mainslide/p.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="res/img/mainslide/m.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="res/img/mainslide/g.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="res/img/mainslide/pr.jpg" style="width: 100%;">
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
				onclick="plusSlides(1)">&#10095;</a>
		</div>

		<!-- 메인 작업부분 -->

		<main>
		<div class="best">
			<h1 class="bestTitle">Best Travel Content</h1>
			<div class="bestDiv">
				<h2 class="bestDivIneer">
			<%
				BlogDao blogDao = new BlogDaoImpl(); //OR 맵핑
				SearchService service = new SearchService(blogDao); //서비스 객체 생성 
				List<Blog> allBlogList = blogDao.getBlogListNoPara(); //모든 블로그 리스트
				List<Blog> blogListNew = service.sortArrayByViewCnt(allBlogList); // 조회 많은 순으로 정렬된 ArrayList
				for(int i=0; i<4; i++){
			%>
					<a href="travel/03SelectContent.jsp?blognum=<%=blogListNew.get(i).getBlogNum()%>">
						<div class="best<%=i%>">
							<img src="<%=blogListNew.get(i).getImg()%>">
							<h3 style="color:chocolate;"><%=blogListNew.get(i).getBlogTitle() %></h3>
							<p style="font-size:12px; display:inline;">Hits : <%=blogListNew.get(i).getHits()%></p>
							<p style="font-size:12px; display:inline;">작성자 : <%=service.printNickName(blogListNew.get(i).getMemberNum())%></p>
						</div>
					</a>
			<%
				}
			%>
				</h2>
			</div>
		</div>
		
		<hr style="width: 400px; margin: 0 auto; border: 1px solid #DC4D28;">
		<div class="best">
			<h1 class="bestTitle">Hot Event</h1>
			<div class="bestDiv">
				<h2 class="bestDivIneer">
					<a href="event/01.html">
						<div class="best1">
							<img src="res/img/mainslide/g.jpg">
							<h3>그리스 산토리니</h3>
						</div>
					</a>
					<div class="best2"></div>
					<div class="best3"></div>
					<div class="best4"></div>
				</h2>
			</div>
		</div>
		</main>

		<!-- video -->
		<div class="main_player">
			<div class="player_overlay"></div>
			<iframe
				src="https://www.youtube.com/embed/p2vI7IEvGJg?version=2&amp;autoplay=1&amp;loop=1&amp;vq=hd1080&amp;playlist=p2vI7IEvGJg"
				frameborder="0" allowfullscreen="" class="video"></iframe>
		</div>
		<!-- end video -->

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
		<!--p태그로 잡으면 안되나봐 -->

	</div>
	<!-- end fullweb -->

	<!--main_menu_nav-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="res/js/cbpHorizontalMenu.min.js"></script>
	<script>
		$(function() {
			cbpHorizontalMenu.init();
		});
	</script>

	<!--main_login-->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
	<script src="res/js/index.js"></script>
</body>
</html>
