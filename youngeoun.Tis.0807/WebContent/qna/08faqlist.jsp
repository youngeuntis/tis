<%@page import="youngun.tis.user.login.domain.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
    <link rel="stylesheet" href="../res/css/faq.css">
    <!-- modernizr -->
    <script src="../res/js/modernizr.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/jquery-2.1.1.js"></script>
    <script src="../res/js/jquery.mobile.custom.min.js"></script>
    <script src="../res/js/qnamain.js"></script>
    <!-- Resource jQuery -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <!--main_menu_nav-->
    <script src="../res/js/modernizr.custom.js"></script>
    <!--end main_menu_nav-->
</head>
<body>
	<div id="fullweb">
		<%@include file="../headerNav.jsp" %>
		<div class="slideshow-container">
			<div class="mySlides fade" style="display: block;">
				<img src="../res/img/faq1.jpg" style="width: 100%;">
			</div>
		</div>
		<main>
		<div class="cd-faq">
			<ul class="cd-faq-categories">
				<li><a class="selected" href="#account">계정관련</a></li>
				<li><a href="#review">후기관련</a></li>
				<li><a href="#board">게시판관련</a></li>
				<li><a href="#events">이벤트관련</a></li>
			</ul>
			<!-- cd-faq-categories -->
			<div class="cd-faq-items">
				<ul id="account" class="cd-faq-group">
					<li class="cd-faq-title">
						<h2>계정관련</h2>
					</li>
					<li><a class="cd-faq-trigger" href="#0">[발리상품] 호텔에서 픽업,
							미팅시 확인 방법</a>
						<div class="cd-faq-content">
							<p>발리 상품의 경우 호텔로 픽업, 드롭 서비스가 포함되어 있는 경우가 많습니다. 상품을 구매하시면 예약
								확정후 바우처를 이메일로 송부해드리며 바우처 내용에는 예약번호와 예약 내용 그리고 호텔 미팅 시간이 기재되어
								있습니다. 픽업 차량 예약 확인 등은 투숙하시는 호텔 로비 컨시어지에서 확인 가능하십니다. 이용하시는 상품의 업체와
								호텔은 해당일 픽업 관련 정보를 주고 받고 있기 때문입니다. 추가로 변경, 확인 등의 요청도 호텔측에 가능합니다.
							</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">How do I sign up?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Quasi cupiditate et laudantium esse adipisci consequatur modi
								possimus accusantium vero atque excepturi nobis in doloremque
								repudiandae soluta non minus dolore voluptatem enim reiciendis
								officia voluptates, fuga ullam? Voluptas reiciendis cumque
								molestiae unde numquam similique quas doloremque non,
								perferendis doloribus necessitatibus itaque dolorem quam officia
								atque perspiciatis dolore laudantium dolor voluptatem eligendi?
								Aliquam nulla unde voluptatum molestiae, eos fugit ullam,
								consequuntur, saepe voluptas quaerat deleniti. Repellendus magni
								sint temporibus, accusantium rem commodi?</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">Can I remove a
							post?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Blanditiis provident officiis, reprehenderit numquam.
								Praesentium veritatis eos tenetur magni debitis inventore fugit,
								magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio
								velit.</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">How do reviews
							work?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Blanditiis provident officiis, reprehenderit numquam.
								Praesentium veritatis eos tenetur magni debitis inventore fugit,
								magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio
								velit.</p>
						</div> <!-- cd-faq-content --></li>
				</ul>
				<!-- cd-faq-group -->
				<ul id="review" class="cd-faq-group">
					<li class="cd-faq-title">
						<h2>후기관련</h2>
					</li>
					<li><a class="cd-faq-trigger" href="#0">How does syncing
							work?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Impedit quidem delectus rerum eligendi mollitia, repudiandae
								quae beatae. Et repellat quam atque corrupti iusto architecto
								impedit explicabo repudiandae qui similique aut iure ipsum quis
								inventore nulla error aliquid alias quia dolorem dolore, odio
								excepturi veniam odit veritatis. Quo iure magnam, et cum.
								Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum
								accusamus sapiente aliquid quis ea assumenda deserunt
								praesentium voluptatibus, accusantium a mollitia necessitatibus
								nostrum voluptatem numquam modi ab, sint rem.</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">How do I upload
							files from my phone or tablet?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Nisi tempore, placeat quisquam rerum! Eligendi fugit dolorum
								tenetur modi fuga nisi rerum, autem officiis quaerat quos. Magni
								quia, quo quibusdam odio. Error magni aperiam amet architecto
								adipisci aspernatur! Officia, quaerat magni architecto nostrum
								magnam fuga nihil, ipsum laboriosam similique voluptatibus
								facilis nobis? Eius non asperiores, nesciunt suscipit veniam
								blanditiis veritatis provident possimus iusto voluptas, eveniet
								architecto quidem quos molestias, aperiam eum reprehenderit
								dolores ad deserunt eos amet. Vero molestiae commodi unde dolor
								dicta maxime alias, velit, nesciunt cum dolorem, ipsam soluta
								sint suscipit maiores mollitia assumenda ducimus aperiam neque
								enim! Quas culpa dolorum ipsam? Ipsum voluptatibus numquam
								natus? Eligendi explicabo eos, perferendis voluptatibus hic sed
								ipsam rerum maiores officia! Beatae, molestias!</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">How do I link to a
							file or folder?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Blanditiis provident officiis, reprehenderit numquam.
								Praesentium veritatis eos tenetur magni debitis inventore fugit,
								magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio
								velit.</p>
						</div> <!-- cd-faq-content --></li>
				</ul>
				<!-- cd-faq-group -->
				<ul id="board" class="cd-faq-group">
					<li class="cd-faq-title">
						<h2>게시판관련</h2>
					</li>
					<li><a class="cd-faq-trigger" href="#0">How do I change my
							password?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Perferendis earum autem consectetur labore eius tenetur esse, in
								temporibus sequi cum voluptatem vitae repellat nostrum odio
								perspiciatis dolores recusandae necessitatibus, unde, deserunt
								voluptas possimus veniam magni soluta deleniti! Architecto,
								quidem, totam. Fugit minus odit unde ea cupiditate ab aperiam
								sed dolore facere nihil laboriosam dolorum repellat deleniti
								aliquam fugiat laudantium delectus sint iure odio,
								necessitatibus rem quisquam! Ipsum praesentium quam nisi sint,
								impedit sapiente facilis laudantium mollitia quae fugiat
								similique. Dolor maiores aliquid incidunt commodi doloremque
								rem! Quaerat, debitis voluptatem vero qui enim, sunt reiciendis
								tempore inventore maxime quasi fugiat accusamus beatae modi
								voluptates iste officia esse soluta tempora labore quisquam
								fuga, cum. Sint nemo iste nulla accusamus quam qui quos, vero,
								minus id. Eius mollitia consequatur fugit nam consequuntur
								nesciunt illo id quis reprehenderit obcaecati voluptates
								corrupti, minus! Possimus, perspiciatis!</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">How do I delete my
							account?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Illo tempore soluta, minus magnam non blanditiis dolore, in nam
								voluptas nobis minima deserunt deleniti id animi amet, suscipit
								consequuntur corporis nihil laborum facere temporibus. Qui
								inventore, doloribus facilis, provident soluta voluptas
								excepturi perspiciatis fugiat odit vero! Optio assumenda animi
								at! Assumenda doloremque nemo est sequi eaque, ipsum id, labore
								rem nisi, amet similique vel autem dolore totam facilis
								deserunt. Mollitia non ut libero unde accusamus praesentium sint
								maiores, illo, nemo aliquid?</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">How do I change my
							account settings?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Blanditiis provident officiis, reprehenderit numquam.
								Praesentium veritatis eos tenetur magni debitis inventore fugit,
								magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio
								velit.</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">I forgot my
							password. How do I reset it?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Ipsum at aspernatur iure facere ab a corporis mollitia molestiae
								quod omnis minima, est labore quidem nobis accusantium ad totam
								sunt doloremque laudantium impedit similique iste quasi cum!
								Libero fugit at praesentium vero. Maiores non consequuntur
								rerum, nemo a qui repellat quibusdam architecto voluptatem?
								Sequi, possimus, cupiditate autem soluta ipsa rerum officiis cum
								libero delectus explicabo facilis, odit ullam aperiam
								reprehenderit! Vero ad non harum veritatis tempore beatae
								possimus, ex odio quo.</p>
						</div> <!-- cd-faq-content --></li>
				</ul>
				<!-- cd-faq-group -->
				<ul id="events" class="cd-faq-group">
					<li class="cd-faq-title">
						<h2>이벤트관련</h2>
					</li>
					<li><a class="cd-faq-trigger" href="#0">Can I have an
							invoice for my subscription?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Impedit quidem delectus rerum eligendi mollitia, repudiandae
								quae beatae. Et repellat quam atque corrupti iusto architecto
								impedit explicabo repudiandae qui similique aut iure ipsum quis
								inventore nulla error aliquid alias quia dolorem dolore, odio
								excepturi veniam odit veritatis. Quo iure magnam, et cum.
								Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum
								accusamus sapiente aliquid quis ea assumenda deserunt
								praesentium voluptatibus, accusantium a mollitia necessitatibus
								nostrum voluptatem numquam modi ab, sint rem.</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">Why did my credit
							card or PayPal payment fail?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Tenetur accusantium dolorem vel, ad, nostrum natus eos, nemo
								placeat quos nisi architecto rem dolorum amet consectetur
								molestiae reprehenderit cum harum commodi beatae necessitatibus.
								Mollitia a nostrum enim earum minima doloribus illum autem,
								provident vero et, aspernatur quae sunt illo dolorem. Corporis
								blanditiis, unde, neque, adipisci debitis quas ullam accusantium
								repudiandae eum nostrum quis! Velit esse harum qui, modi ratione
								debitis alias laboriosam minus eaque, quod, itaque labore illo
								totam aut quia fuga nemo. Perferendis ipsa laborum atque
								assumenda tempore aspernatur a eos harum non id commodi
								excepturi quaerat ullam, explicabo, incidunt ipsam, accusantium
								quo magni ut! Ratione, magnam. Delectus nesciunt impedit
								praesentium sed, aliquam architecto dolores quae, distinctio
								consectetur obcaecati esse, consequuntur vel sit quis blanditiis
								possimus dolorum. Eaque architecto doloremque aliquid quae
								cumque, vitae perferendis enim, iure fugiat, soluta aut!</p>
						</div> <!-- cd-faq-content --></li>
					<li><a class="cd-faq-trigger" href="#0">Why does my bank
							statement show multiple charges for one upgrade?</a>
						<div class="cd-faq-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Blanditiis provident officiis, reprehenderit numquam.
								Praesentium veritatis eos tenetur magni debitis inventore fugit,
								magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio
								velit.</p>
						</div> <!-- cd-faq-content --></li>
				</ul>
				<!-- cd-faq-group -->
			</div>
			<!-- cd-faq-items -->
			<a href="#0" class="cd-close-panel">Close</a>
		</div>
		</main>
		<!-- cd-faq -->
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
</body>
</html>
