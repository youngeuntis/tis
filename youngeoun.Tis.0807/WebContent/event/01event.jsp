<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.mypage.domain.Wishlist"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.mypage.service.WishlistServiceImpl"%>
<%@page import="youngun.tis.mypage.service.WishlistService"%>
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
<title>My wishlist</title>
<link rel="stylesheet" href="../res/css/mypage.css">
<link rel="stylesheet" href="../res/css/mywishlist.css">

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

        <main>

            <div id="container">
                <div id="content">
                    <div class="c_header">
                        <h2>EVENT!!</h2>
                        <p class="contxt">이벤트 핫딜!</p>
                    </div>

                    <div class="listcontainer">
                    
                    <% 
						for(int i=0; i<1; i++){ 
					%>
                    
                        <div class="wishlist">
                            <div class="wishlistImg">
                                <a href="http://www.hanatour.com/asp/booking/productPackage/pk-12000.asp?pkg_code=APP111170905Z2N&hanacode=pack_ae_md_1"
                                 target="_blank">
                                    <img src="../res/img/event/event.jpg" alt=" 찜 목록" />
                                </a>
                            </div>

                            <div class="wishlistName">
                                <a href="#">
                                    <p>보라카이 5일- 일급리조트 + 특식</p>
                                </a>
                            </div>
                        </div>
                        <%
						}
				%>
                        
                        
                    </div>  
                    
                </div>
            </div>

        </main>


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