<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>

<html>

<head>
<meta charset="utf-8">
<meta name="description" content="해외 자유여행 컨텐츠 정보 공유">
<meta name="keywords"
	content="해외여행, 자유여행, 싱가포르, 싱가폴
			파리, 미국, 미주, 미국 자유여행, 일본, 태국, 하와이, 대만, 홍콩, 베트남, 필리핀,
			인도네시아, 프랑스, 스페인, 이탈리아, 영국">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>My personnal</title>
<link rel="stylesheet" href="../res/css/mypage.css">
<link rel="stylesheet" href="../res/css/mypersonnal.css">
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/hanna.css">

<script type="text/javascript" src="../res/js/custom.js"></script>
<script
	src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script src="../res/js/modernizr.custom.js"></script>
<script src="../res/js/click.js"></script>


</head>

<body>

	<div id="fullweb">
		<header>
			<div class="Center">
				<div class="site-logo">
					<img src="../res/img/logo/DYTR.png"
						style="display: inline-block; width: 15%; height: auto; margin-top: -15px;">
					<h1>
						<a href="../main.html">Design Your Trip</a>
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
											<li><a href="../review/reviewMain.html">후기</a></li>
										</ul>
									</div>
									<div class="sub_ham" id="sub_ham_event">
										<h4>이벤트</h4>
										<ul>
											<li><a href="../event/event.html">이벤트</a></li>
										</ul>
									</div>
									<div class="sub_ham">
										<h4>문의사항</h4>
										<ul>
											<li><a href="../qna/qnaMain.html">Q&amp;A</a></li>
											<li><a href="../qna/faqlist.html">FAQ</a></li>
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
											<li><a href="../travel/TravelMain.html">서울</a></li>
											<li><a href="../travel/TravelMain.html">경기</a></li>
											<li><a href="../travel/TravelMain.html">제주</a></li>
											<li><a href="../travel/TravelMain.html">부산</a></li>
											<li><a href="../travel/TravelMain.html">강원도</a></li>
											<li><a href="../travel/TravelMain.html">충청도</a></li>
											<li><a href="../travel/TravelMain.html">전라도</a></li>
											<li><a href="../travel/TravelMain.html">경상도</a></li>
										</ul>
									</div>
									<div class="asia" style="width: 200px;">
										<h4>아시아</h4>
										<div class="asia_l">
											<ul>
												<li><a href="../travel/TravelMain.html">네팔</a></li>
												<li><a href="../travel/TravelMain.html">대만</a></li>
												<li><a href="../travel/TravelMain.html">몰디브</a></li>
												<li><a href="../travel/TravelMain.html">말레이시아</a></li>
												<li><a href="../travel/TravelMain.html">발리</a></li>
												<li><a href="../travel/TravelMain.html">베트남</a></li>
												<li><a href="../travel/TravelMain.html">부탄</a></li>
												<li><a href="../travel/TravelMain.html">싱가폴</a></li>
											</ul>
										</div>
										<div class="asia_r">
											<ul>
												<li><a href="../travel/TravelMain.html">일본</a></li>
												<li><a href="../travel/TravelMain.html">인도</a></li>
												<li><a href="../travel/TravelMain.html">인도네시아</a></li>
												<li><a href="../travel/TravelMain.html">중국</a></li>
												<li><a href="../travel/TravelMain.html">캄보디아</a></li>
												<li><a href="../travel/TravelMain.html">태국</a></li>
												<li><a href="../travel/TravelMain.html">필리핀</a></li>
												<li><a href="../travel/TravelMain.html">홍콩</a></li>
											</ul>
										</div>
									</div>
									<div>
										<h4>미/대양주</h4>
										<ul>
											<li><a href="../travel/TravelMain.html">미국</a></li>
											<li><a href="../travel/TravelMain.html">하와이</a></li>
											<li><a href="../travel/TravelMain.html">호주</a></li>
										</ul>
									</div>
									<div class="eu" style="width: 300px">
										<h4>유럽</h4>
										<div class="eu_l">
											<ul>
												<li><a href="../travel/TravelMain.html">그리스</a></li>
												<li><a href="../travel/TravelMain.html">노르웨이</a></li>
												<li><a href="../travel/TravelMain.html">네덜란드</a></li>
												<li><a href="../travel/TravelMain.html">독일</a></li>
												<li><a href="../travel/TravelMain.html">덴마크</a></li>
												<li><a href="../travel/TravelMain.html">록셈부르크</a></li>
												<li><a href="../travel/TravelMain.html">루마니아</a></li>
												<li><a href="../travel/TravelMain.html">몰타</a></li>
												<li><a href="../travel/TravelMain.html">벨기에</a></li>
											</ul>
										</div>
										<div class="eu_c">
											<ul>
												<li><a href="../travel/TravelMain.html">스위스</a></li>
												<li><a href="../travel/TravelMain.html">스웨덴</a></li>
												<li><a href="../travel/TravelMain.html">스페인</a></li>
												<li><a href="../travel/TravelMain.html">슬로바키아</a></li>
												<li><a href="../travel/TravelMain.html">아이슬란드</a></li>
												<li><a href="../travel/TravelMain.html">아일랜드</a></li>
												<li><a href="../travel/TravelMain.html">영국</a></li>
												<li><a href="../travel/TravelMain.html">이탈리아</a></li>
												<li><a href="../travel/TravelMain.html">오스트리아</a></li>
											</ul>
										</div>
										<div class="eu_r">
											<ul>
												<li><a href="../travel/TravelMain.html">체코</a></li>
												<li><a href="../travel/TravelMain.html">터키</a></li>
												<li><a href="../travel/TravelMain.html">러시아</a></li>
												<li><a href="../travel/TravelMain.html">에스토니아</a></li>
												<li><a href="../travel/TravelMain.html">크로아티아</a></li>
												<li><a href="../travel/TravelMain.html">헝가리</a></li>
												<li><a href="../travel/TravelMain.html">프랑스</a></li>
												<li><a href="../travel/TravelMain.html">폴란드</a></li>
												<li><a href="../travel/TravelMain.html">포르투칼</a></li>
											</ul>
										</div>
									</div>
								</div>
								<!-- /cbp-hrsub-inner -->
							</div> <!-- /cbp-hrsub --></li>
						<li><a href="#">커뮤니티</a>
							<div class="cbp-hrsub"
								style="width: 20% !important; left: 700px;">
								<div class="cbp-hrsub-inner" style="width: 300px;">
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-left: 40px; margin-right: 20px;">
										<h4>
											<a href="../review/reviewMain.html">후기</a>
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
							<div class="cbp-hrsub"
								style="width: 20% !important; left: 800px;">
								<div class="cbp-hrsub-inner" style="width: 300px;">
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-left: 40px; margin-right: 20px;">
										<h4>
											<a href="../event/event.html">이벤트</a>
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
							<div class="cbp-hrsub"
								style="width: 20% !important; left: 800px;">
								<div class="cbp-hrsub-inner" style="width: 300px;">
									<div class="sub_comunity"
										style="position: relative; margin-left: 80px; margin-right: 20px; display: block; float: left;">
										<h4>
											<a href="../qna/qnaMain.html">Q&amp;A</a>
										</h4>
									</div>
									<div class="sub_comunity"
										style="display: block; margin-top: -25px; margin-right: 20px;">
										<h4>
											<a href="../qna/faqlist.html">FAQ</a>
										</h4>
									</div>
								</div>
							</div></li>
					</ul>
				</div>

				<div class="right_nav">
					<!-- main_join -->
					<div class="right_nav_join">
						<a>회원가입</a>
					</div>
					<!-- end join -->

					<!-- main_login -->
					<div id="login">
						<section class="modal signup badge-overlay-signin">
							<a class="btn-close badge-overlay-close" id="closepopup" href="#">✖</a>
							<section id="signup">
								<h2>Login</h2>
								<form id="login-email" class="badge-login-form" action=""
									method="POST">
									<input type="hidden" value=""> <input type="hidden"
										id="jsid-login-form-next-url" name="next" value=""> <input
										type="hidden" name="location" value="1">
									<p class="lead">Log in with your id password</p>
									<div class="field">
										<label for="jsid-login-email-name">ID</label> <input
											id="jsid-login-email-name" type="text" name="username"
											value="" autofocus="autofocus">
									</div>
									<div class="field">
										<label for="login-email-password">PASSWORD</label> <input
											id="login-email-password" type="password" name="password"
											value="">
									</div>
									<div class="btn-container">
										<input type="submit" value="Log in" onclick=""> <a
											class="forgot-password" href="" onclick="">Forgot
											Password</a>
									</div>
								</form>
							</section>
						</section>
					</div>
					<div class="overlay"></div>
					<div class="demo">
						<a id="launch" class="fbbutton" href="#">로그인</a>
					</div>
					<script
						src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

					<script src="../res/js/index.js"></script>


					<div class="clear"></div>

					<!-- main_search -->
					<div class="right_nav_search">
						<form method="get">
							<div>
								<input id="nav_search" type="search" name="search_keyword"
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
				<!--end .right_nav -->
			</div>
			<!--end .Center-->
		</header>

		<div class="slideshow-container">

			<div class="mySlides fade" style="display: block;">
				<img src="../res/img/travelImg/p.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="../res/img/travelImg/m.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="../res/img/travelImg/g.jpg" style="width: 100%;">
			</div>

			<div class="mySlides fade">
				<img src="../res/img/travelImg/pr.jpg" style="width: 100%;">
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
				onclick="plusSlides(1)">&#10095;</a>
		</div>

		<!-- 메인 작업부분 -->

		<main>
		<div id="container">
			<!-- CONTENTS -->
			<div id="content">
				<div class="c_header">
					<h2>연락처 수정</h2>
					<p class="contxt1">
						<strong>(회원)</strong>님의 연락처 정보입니다.
					</p>
					<p class="contxt2">*회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의
						없이 공개 또는 제 3자에게 제공되지 않습니다.</p>
				</div>
				<fieldset>
					<table border="0" class="tbl_model">
						<caption>
							<span class="blind">연락처 수정 입력</span>
						</caption>
						<colgroup>
							<col style="width: 22%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">
									<div class="thcell">
										사용자 <span class="word_br">이름</span>
									</div>
								</th>
								<td>
									<div class="tdcell">
										<p class="contxt_tit">김철수</p>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<div class="thcell">휴대전화</div>
								</th>
								<td>
									<div class="tdcell">
										<p id="p_txt_phoneNo" class="contxt_tit">010-1234-1234</p>
										<p class="contxt_desc">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 또는 이벤트
											알림을 받을 때 사용할 휴대전화입니다.</p>
										<div id="d_phoneNo" style="display: none">
											<p id="p_txt_phoneNo_changeYn" class="contxt_tit2">
												<label for="phoneNo" class="contxt_tit2">변경할 휴대전화</label>
											</p>
											<p class="contxt_webctrl">
												<select id="internationalCode" name="internationalCode"
													class="country_drop"
													onchange="javascript:setInternationalCode('internationalCode','input_internationalCode', '');">
													<option value="233">가나</option>
													<option value="241">가봉</option>
													<option value="592">가이아나</option>
													<option value="220">감비아</option>
													<option value="502">과테말라</option>
													<option value="1671">괌</option>
													<option value="1473">그레나다</option>
													<option value="30">그리스</option>
													<option value="224">기니</option>
													<option value="245">기니비사우</option>
													<option value="264">나미비아</option>
													<option value="674">나우루</option>
													<option value="234">나이지리아</option>
													<option value="672">남극,오스트레일리아의외</option>
													<option value="27">남아프리카공화국</option>
													<option value="31">네덜란드</option>
													<option value="599">네덜란드령보네르</option>
													<option value="297">네덜란드령아루바</option>
													<option value="977">네팔</option>
													<option value="47">노르웨이</option>
													<option value="64">뉴질랜드</option>
													<option value="683">뉴질랜드령니우에</option>
													<option value="690">뉴질랜드령토켈라우제도</option>
													<option value="227">니제르</option>
													<option value="505">니카라과</option>
													<option value="82">대한민국</option>
													<option value="45">덴마크</option>
													<option value="299">덴마크령그린란드</option>
													<option value="298">덴마크령페로제도</option>
													<option value="1809">도미니카공화국</option>
													<option value="1829">도미니카공화국 2</option>
													<option value="1849">도미니카공화국 3</option>
													<option value="49">독일</option>
													<option value="670">동티모르</option>
													<option value="856">라오스</option>
													<option value="231">라이베리아</option>
													<option value="371">라트비아</option>
													<option value="7">러시아/카자흐스탄</option>
													<option value="961">레바논</option>
													<option value="266">레소토</option>
													<option value="40">루마니아</option>
													<option value="352">룩셈부르크</option>
													<option value="250">르완다</option>
													<option value="218">리비아</option>
													<option value="370">리투아니아</option>
													<option value="423">리히텐슈타인</option>
													<option value="261">마다가스카르</option>
													<option value="692">마셜제도공화국</option>
													<option value="691">마이크로네시아연방</option>
													<option value="853">마카오</option>
													<option value="389">마케도니아공화국</option>
													<option value="265">말라위</option>
													<option value="60">말레이시아</option>
													<option value="223">말리</option>
													<option value="52">멕시코</option>
													<option value="377">모나코</option>
													<option value="212">모로코</option>
													<option value="230">모리셔스</option>
													<option value="222">모리타니아</option>
													<option value="258">모잠비크</option>
													<option value="382">몬테네그로</option>
													<option value="373">몰도바</option>
													<option value="960">몰디브</option>
													<option value="356">몰타</option>
													<option value="976">몽골</option>
													<option value="1">미국/캐나다</option>
													<option value="1670">미국령북마리아나제도</option>
													<option value="95">미얀마</option>
													<option value="678">바누아투</option>
													<option value="973">바레인</option>
													<option value="1246">바베이도스</option>
													<option value="1242">바하마</option>
													<option value="880">방글라데시</option>
													<option value="229">베냉</option>
													<option value="58">베네수엘라</option>
													<option value="84">베트남</option>
													<option value="32">벨기에</option>
													<option value="375">벨라루스</option>
													<option value="501">벨리즈</option>
													<option value="387">보스니아헤르체고비나</option>
													<option value="267">보츠와나</option>
													<option value="591">볼리비아</option>
													<option value="257">부룬디</option>
													<option value="226">부르키나파소</option>
													<option value="975">부탄</option>
													<option value="359">불가리아</option>
													<option value="55">브라질</option>
													<option value="673">브루나이</option>
													<option value="685">사모아</option>
													<option value="966">사우디아라비아</option>
													<option value="378">산마리노</option>
													<option value="239">상투메프린시페</option>
													<option value="221">세네갈</option>
													<option value="381">세르비아</option>
													<option value="248">세이셀</option>
													<option value="1784">세인트빈센트그레나딘</option>
													<option value="252">소말리아</option>
													<option value="677">솔로몬제도</option>
													<option value="249">수단</option>
													<option value="597">수리남</option>
													<option value="94">스리랑카</option>
													<option value="268">스와질랜드</option>
													<option value="46">스웨덴</option>
													<option value="41">스위스</option>
													<option value="34">스페인</option>
													<option value="421">슬로바키아</option>
													<option value="386">슬로베니아</option>
													<option value="963">시리아</option>
													<option value="232">시에라리온</option>
													<option value="65">싱가포르</option>
													<option value="971">아랍에미리트</option>
													<option value="374">아르메니아</option>
													<option value="54">아르헨티나</option>
													<option value="354">아이슬란드</option>
													<option value="509">아이티</option>
													<option value="353">아일랜드</option>
													<option value="994">아제르바이잔</option>
													<option value="93">아프가니스탄</option>
													<option value="376">안도라</option>
													<option value="355">알바니아</option>
													<option value="213">알제리</option>
													<option value="244">앙골라</option>
													<option value="251">에디오피아</option>
													<option value="291">에리트레아</option>
													<option value="372">에스토니아</option>
													<option value="593">에콰도르</option>
													<option value="503">엘살바도르</option>
													<option value="44">영국</option>
													<option value="290">영국령세인트헬레나</option>
													<option value="246">영국령인도양지역</option>
													<option value="350">영국령지브롤터</option>
													<option value="500">영국령포클랜드제도</option>
													<option value="967">예멘</option>
													<option value="968">오만</option>
													<option value="43">오스트리아</option>
													<option value="504">온두라스</option>
													<option value="962">요르단</option>
													<option value="256">우간다</option>
													<option value="598">우루과이</option>
													<option value="998">우즈베키스탄</option>
													<option value="380">우크라이나</option>
													<option value="964">이라크</option>
													<option value="98">이란</option>
													<option value="972">이스라엘</option>
													<option value="20">이집트</option>
													<option value="39">이탈리아</option>
													<option value="91">인도</option>
													<option value="62">인도네시아</option>
													<option value="81">일본</option>
													<option value="1876">자메이카</option>
													<option value="260">잠비아</option>
													<option value="240">적도기니</option>
													<option value="995">조지아</option>
													<option value="86">중국</option>
													<option value="236">중앙아프리카공화국</option>
													<option value="253">지부티</option>
													<option value="263">짐바브웨</option>
													<option value="235">차드</option>
													<option value="420">체코</option>
													<option value="56">칠레</option>
													<option value="237">카메룬</option>
													<option value="238">카보베르데</option>
													<option value="974">카타르</option>
													<option value="855">캄보디아왕국</option>
													<option value="254">케냐</option>
													<option value="269">코모로,마요트</option>
													<option value="506">코스타리카</option>
													<option value="225">코트디부아르</option>
													<option value="57">콜롬비아</option>
													<option value="242">콩고</option>
													<option value="243">콩고민주공화국</option>
													<option value="53">쿠바</option>
													<option value="965">쿠웨이트</option>
													<option value="682">쿡제도</option>
													<option value="385">크로아티아</option>
													<option value="996">키르기스스탄</option>
													<option value="686">키리바시</option>
													<option value="357">키프로스</option>
													<option value="886">타이완</option>
													<option value="992">타지키스탄</option>
													<option value="255">탄자니아</option>
													<option value="66">태국</option>
													<option value="90">터키</option>
													<option value="228">토고</option>
													<option value="676">통가</option>
													<option value="993">투르크메니스탄</option>
													<option value="216">튀니지</option>
													<option value="1868">트리니다드토바고</option>
													<option value="507">파나마</option>
													<option value="595">파라과이</option>
													<option value="92">파키스탄</option>
													<option value="675">파푸아뉴기니</option>
													<option value="680">팔라우</option>
													<option value="970">팔레스타인</option>
													<option value="51">페루</option>
													<option value="351">포르투갈</option>
													<option value="48">폴란드</option>
													<option value="1787">푸에르토리코</option>
													<option value="33">프랑스</option>
													<option value="590">프랑스령과들루프</option>
													<option value="594">프랑스령기아나</option>
													<option value="687">프랑스령뉴칼레도니아</option>
													<option value="262">프랑스령레위니옹</option>
													<option value="596">프랑스령마르티니크</option>
													<option value="508">프랑스령생피에르미클롱</option>
													<option value="681">프랑스령월리스푸투나제</option>
													<option value="689">프랑스령폴리네시아</option>
													<option value="679">피지</option>
													<option value="358">핀란드</option>
													<option value="63">필리핀</option>
													<option value="36">헝가리</option>
													<option value="61">호주</option>
													<option value="852">홍콩</option>
												</select> <span class="country_code_w"> <span
													id="input_internationalCode" class="country_code">+82</span>
													<input type="text" id="phoneNo" name="phoneNo"
													maxlength="14"
													onkeydown="check_num_ajax2('phoneNo', '2', 'e_phoneNo','e_authNo');">
												</span> <a href="#"
													onclick="sendSmsForChangePhoneNo();return false;"
													class="btn_model"><span class="btn4">인증</span></a>
											</p>
											<p id="e_phoneNo" class="contxt_alert"></p>

											<p class="contxt_tit2">
												<label for="authNo">인증번호 입력</label>
											</p>
											<p class="contxt_webctrl">
												<input type="text" id="authNo" name="authNo" value=""
													maxlength="6"
													onkeydown="check_num_ajax2('authNo', '2', 'e_authNo','e_phoneNo');"
													disabled="" class="focus" style="width: 254px">
											</p>
											<form action="03.html" method="get">
												<p class="btn_area_btm">
													<a href="#" onclick="telnone();return false;"
														class="btn_model"><b id="b_txt_phoneNo_reg"
														class="btn3">수정완료</b></a> <a href="#"
														onclick="telnone();return false;" class="btn_model"><b
														id="b_txt_phoneNo_cncl" class="btn2">수정취소</b></a>
												</p>
											</form>
										</div>
										<p id="p_phoneNo" class="btn_area_btm">
											<a href="#" onclick="telmodify();return false;"
												class="btn_model"><b class="btn2">수정</b></a>
										</p>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row">
									<div class="thcell">
										<span class="word_br">이메일</span>
									</div>
								</th>
								<td>
									<div class="tdcell">
										<p id="p_txt_myLetterEmail" class="contxt_tit">aaaa@email.com</p>
										<p class="contxt_desc">이벤트 등 다양한 소식 및 알림을 받기 위해 사용할 이메일
											주소입니다.</p>

										<div id="d_myLetterEmail" style="display: none">
											<p class="contxt_tit2">
												<label for="myLetterEmail">변경할 이메일</label>
											</p>
											<p class="contxt_desc">변경할 이메일 주소를 입력하세요.(예 :
												abc@naver.com)</p>
											<p class="contxt_webctrl">
												<input type="text" name="myLetterEmail" id="myLetterEmail"
													value="" style="width: 254px">
											</p>
											<p id="e_myLetterEmail" class="contxt_alert"></p>
											<p class="btn_area_btm">
												<a href="#" onclick="emailnone();return false;"
													class="btn_model"><b class="btn3">수정완료</b></a> <a href="#"
													onclick="emailnone();return false;" class="btn_model"><b
													class="btn2">수정취소</b></a>
											</p>
										</div>
										<p id="p_myLetterEmail" class="btn_area_btm">
											<a href="#" onclick="emailmodify();return false;"
												class="btn_model"><b class="btn2">수정</b></a>
										</p>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row">
									<div class="thcell">
										<span class="word_br">비밀번호</span>
									</div>
								</th>
								<td>
									<div class="tdcell">

										<div id="d_myLetterPW" style="display: none">
											<p class="contxt_tit2">
												<label for="myLetterPW">변경할 비밀번호</label>
											</p>
											<br />
											<p class="contxt_desc">새 비밀번호를 입력하세요.</p>
											<p class="contxt_webctrl">
												<input type="text" name="myLetterPW" id="myLetterPW"
													value="" maxlength="12" style="width: 254px">
											</p>
											<p class="contxt_desc">새 비밀번호를 다시 입력하세요.</p>
											<p class="contxt_webctrl">
												<input type="text" name="myLetterPW" id="myLetterPW"
													value="" maxlength="12" style="width: 254px">
											</p>
											<p id="e_myLetterPW" class="contxt_alert"></p>
											<p class="btn_area_btm">
												<a href="#" onclick="PWnone(); return false;"
													class="btn_model"><b class="btn3">수정완료</b></a> <a href="#"
													onclick="PWnone();return false;" class="btn_model"><b
													class="btn2">수정취소</b></a>
											</p>
										</div>
										<p id="p_myLetterPW" class="btn_area_btm">
											<a href="#" onclick="PWmodify(); return false;"
												class="btn_model"><b class="btn2">수정</b></a>
										</p>
									</div>
								</td>
							</tr>

						</tbody>
					</table>
				</fieldset>
			</div>
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

				<p>copyright DESIGN YOUR TRIP</p>
			</div>
		</footer>

	</div>
	<!-- end fullweb -->

	<!--main_menu_nav-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="../res/js/cbpHorizontalMenu.min.js"></script>
	<script>
        $(function() {
            cbpHorizontalMenu.init();
        });
    </script>

	<!--main_login-->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
	<script src="../res/js/index.js"></script>


</body>

</html>
