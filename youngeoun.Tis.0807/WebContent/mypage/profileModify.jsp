<%@page import="youngun.tis.user.login.domain.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<% Login dto = (Login)session.getAttribute("Login"); %>
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
<title>My profile</title>
<link rel="stylesheet" href="../res/css/mypage.css">
<link rel="stylesheet" href="../res/css/myprofile.css">

<script type="text/javascript" src="../res/js/custom.js"></script>
<script
	src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
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
		<div id="container">
			<div id="content">
				<div class="c_header">
					<h2>프로필 수정</h2>
					<p class="contxt">Design Your Trip 대표 프로필과 별명을 수정 하실 수 있습니다.</p>
				</div>
				<form id="profileForm" method="post" enctype="multipart/form-data">
					<table border="0" class="tbl_model">
						<caption>
							<span class="blind">프로필 수정</span>
						</caption>
						<colgroup>
							<col style="width: 20%">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">
									<div class="thcell">프로필 사진</div>
								</th>
								<td>
									<div class="tdcell">
										<div class="profile_photo">
											<img id="imgThumb" src="<%=dto.getProfileImg()%>" width="150" height="150" alt="profile img">
										</div>
										<p class="btn_area_btm">
											<span class="btn_file"> 
												<label for="inputImge" class="btn_model">사진변경</label> 
												<input type="file" id="inputImge" name="profileImg" accept="image/*">
											</span> 
											<a href="#" class="btn_model">삭제</a>

										</p>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<div class="thcell">
										<label for="inpNickname">별명</label>
									</div>
								</th>
								<td>
									<div class="tdcell">
										<p class="contxt_webctrl nickname">
											<input type="text" 
											onfocus="if(this.value=='<%=dto.getNickName()%>') this.value='';" 
											onblur="if(this.value=='') this.value='<%=dto.getNickName()%>';" 
											name="nickname" id="inpNickname" value="<%= dto.getNickName() %>"
												style="width: 254px">
											<!-- Enter 입력으로 submit이 되는걸 방지하기 위한 Input -->
											<input type="text" style="display: none;">
										</p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_wrap">
						<a href="myPage.jsp" class="btn_model commit">적용</a> <a href="#"
							class="btn_model reset">취소</a>
					</div>
				</form>
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

