<%@page import="youngun.tis.review.service.SearchService"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.review.domain.Review"%>
<%@page import="youngun.tis.review.domain.PageReview"%>
<%@page import="youngun.tis.review.domain.Country"%>
<%@page import="youngun.tis.review.dao.ReviewDaoImpl"%>
<%@page import="youngun.tis.review.dao.ReviewDao"%>
<%@page import="youngun.tis.review.dao.TravelDao"%>
<%@page import="youngun.tis.review.mapper.ReviewMapper"%>
<%@page import="youngun.tis.review.mapper.TravelMapper"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
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
    <link rel="stylesheet" href="../res/css/travelMain.css">
    <link rel="stylesheet" href="../res/css/selectOption2.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
	
</head>

<body>

    <div id="fullweb">
     <%@include file="../headerNav.jsp" %>
        <div class="picture">
            <div class="nation_title" style="margin-left:-108px;">
                <h2>여행후기</h2>
            </div>
			
			<div class="centerSelect" style="margin-left : -160px;">
              <select name="sources" id="sources" class="custom-select sources" placeholder="--Continent--" >
                <option value="대한민국">대한민국</option>
                <option value="유럽">유럽</option>
                <option value="미대양주">미대양주</option>
                <option value="아시아">아시아</option>
              </select>
            </div>
            
	    	<script>
		    	$(".custom-select").each(function() {
		    		  var classes = $(this).attr("class"),
		    		      id      = $(this).attr("id"),
		    		      name    = $(this).attr("name");
		    		  var template =  '<div class="' + classes + '">';
		    		      template += '<span class="custom-select-trigger">' + $(this).attr("placeholder") + '</span>';
		    		      template += '<div class="custom-options">';
		    		      $(this).find("option").each(function() {
		    		        template += '<a href=reviewMain2.jsp?continent='+$(this).attr("value")+'>'+'<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>' +'</a>';
		    		      });
		    		  template += '</div></div>';
		    		  
		    		  $(this).wrap('<div class="custom-select-wrapper"></div>');
		    		  $(this).hide();
		    		  $(this).after(template);
		    		});
		    		$(".custom-option:first-of-type").hover(function() {
		    		  $(this).parents(".custom-options").addClass("option-hover");
		    		}, function() {
		    		  $(this).parents(".custom-options").removeClass("option-hover");
		    		});
		    		$(".custom-select-trigger").on("click", function() {
		    		  $('html').one('click',function() {
		    		    $(".custom-select").removeClass("opened");
		    		  });
		    		  $(this).parents(".custom-select").toggleClass("opened");
		    		  event.stopPropagation();
		    		});
		    		$(".custom-option").on("click", function() {
		    		  $(this).parents(".custom-select-wrapper").find("select").val($(this).data("value"));
		    		  $(this).parents(".custom-options").find(".custom-option").removeClass("selection");
		    		  $(this).addClass("selection");
		    		  $(this).parents(".custom-select").removeClass("opened");
		    		});
	    	</script>
    		
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