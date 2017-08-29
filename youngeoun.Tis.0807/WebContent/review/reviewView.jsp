<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="../res/css/review.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">

</head>

<body>
    <div id="fullweb">
        <%@include file="../headerNav.jsp" %>
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
		
		<main>
            <table class="type31">
					<th><img src="../res/img/123.jpg" style="width:100%; height: 300px;"></th>
            </table> 
            <table class="type32">
                    <th>제목이 들어갑니다.</th>
            </table>
            <table class="type33">
                <td>내용이 들어갑니다.</td>
			</table>
            <table class="type15">
				<th onclick="deleteReview()" >삭제</th>
					<script>
	                    function deleteReview(){
	                        var answer = confirm("삭제하시겠습니까? 확인을 누르시면 글이 삭제 됩니다.")
	                        if(answer) location.replace("reviewMain2.jsp");
	                    }
            		</script>
            </table>
            <table class="type15">
				<th onclick="changeReview()" >수정</th>
					<script>
	                    function changeReview(){
	                        var answer = confirm("수정하시겠습니까? 확인을 누르시면 수정 페이지로 이동합니다.")
	                        if(answer) location.replace("reviewModify.jsp");
	                    }
            		</script>
            </table>
            <table class="type15">
            	<th><a href="reviewMain2.jsp"/>목록으로</th>
			</table>
			
			
			
			<!-- 
            <table class="type41">
                <th>댓글</th>
            </table>
            <table class="type42">
                <tr>
                    <th rowspan="2"></th>
                    <td><a href="03reviewView.jsp"/>수정</td>
                </tr>
                <tr>
                    <td><a href="03reviewView.jsp"/>삭제</td>
                </tr>
            </table>             -->
            
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