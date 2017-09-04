<%@page import="youngun.tis.mypage.domain.Wishlist"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.mypage.service.WishlistServiceImpl"%>
<%@page import="youngun.tis.mypage.service.WishlistService"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%Login dto = (Login) session.getAttribute("Login");%>
<!DOCTYPE HTML>
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
<title>My page</title>
<link rel="stylesheet" href="../res/css/mypage.css">
<script type="text/javascript" src="../res/js/custom.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="../res/js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/hanna.css">
</head>

<body>
	<div id="fullweb">
		<%@include file="../headerNav.jsp" %>

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
								<img src="<%=dto.getProfileImg()%>" alt="profile img"
									class="profile_img">
							</div>
							<div class="my_profile_name">
								<span class="profile_name"><%=dto.getNickName()%></span>
							</div>
						</div>
						<!--end my_profile_content-->

						<p class="my_profile_modify">
							<a href="profileModify.jsp">수정</a>
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
									<dr class="per_email_addr"><%=dto.getEmail()%></dr>
								</dt>
							</div>
							<!--end email-->
							<div class="tel">
								<dt class="per">
									<dr class="per_tel">연락처</dr>
									<dr class="per_tel_num"><%=dto.getPH()%></dr>
								</dt>
							</div>
							<!--end tel-->

						</div>
						<!--end my_personnal_content-->

						<p class="my_personnal_modify">
							<a href="personnalModify.jsp">수정</a>
						</p>
						<!--end my_profile_modify-->

					</div>
					<!--end my_personnal-->

				</div>
				<!--end my_inner_top-->

				<!-- 찜 목록 -->
				<%
					/* wishlist 가져오기 */

					int memberNum = dto.getMemberNum();
					int wishlistSize;
					/* int memberNum = 66; */
					WishlistService wishService = new WishlistServiceImpl();
					List<Wishlist> wishlist = wishService.findWishlist(memberNum);
					
					if(wishlist.size()<3){
						wishlistSize = wishlist.size();
					}else{
						wishlistSize = 3;
					}
				%>


				<div class="my_inner_bottom">
					<div class="wishlist_container">
						<div class="wishlist_title">
							<h1>My 찜 목록</h1>
						</div>
						<div class="wishlist_title_add">
							<a href="wishlist.jsp">더보기</a>
						</div>

						<div class="wishlist_content">

							<%
								if (wishlist.size() != 0) {
									for (int i = 0; i < wishlistSize; i++) {
							%>
							<div class="wishlist_list">
								<div class="wishlist_img">
									<a href="../travel/03SelectContent.jsp?blognum=<%=wishlist.get(i).getWishInfoNum()%>">
										<!--글보기 루트?글번호=<%-- <%=wishlist.get(i).getInfoNum%> --%> -->
										<img src="<%=wishlist.get(i).getWishImg()%>" alt="찜목록">
									</a>
								</div>
								<div class="wishlist_name">
									<a
										href="../travel/03SelectContent.jsp?blognum=<%=wishlist.get(i).getWishInfoNum()%>">
										<p><%=wishlist.get(i).getWishTitle()%></p>
									</a>
								</div>
							</div>
							<%
								}
								} else {
									out.print("<h2>즐겨찾기 내역이 없습니다.</h2>");
								}
							%>
						</div>


						<div class="activity_containner">
							<div class="activity_title">
								<h1>My 활동기록</h1>
							</div>

							<div class="ac_comment_add">
								<a href="commentMore.jsp">내가 쓴 댓글 더보기</a>
							</div>

							<div class="ac_post_add">
								<a href="postMore.jsp">내가 쓴 게시글 더보기</a>
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
