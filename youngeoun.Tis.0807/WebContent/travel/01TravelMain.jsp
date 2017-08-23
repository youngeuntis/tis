<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.travel.blog.domain.Wish"%>
<%@page import="youngun.tis.travel.blog.service.SearchService"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDaoImpl"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDao"%>
<%@page import="youngun.tis.travel.blog.domain.Blog"%>
<%@page import="youngun.tis.travel.blog.mapper.BlogMapper"%>
<%@page import="youngun.tis.travel.blog.domain.Country"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.travel.blog.mapper.TravelMapper"%>
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
    <link rel="stylesheet" href="../res/css/selectOption.css">
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
                <h2>여행정보</h2>
                <h3>Informations</h3>
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
		    		        template += '<a href=05TravelAfter.jsp?continent='+$(this).attr("value")+'>'+'<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>' +'</a>';
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
		
		
		<!-- 메인 작업부분 -->
		
		
		
        <main>
	        <%
				String isDel = request.getParameter("del");
	        	String wish = request.getParameter("wish");
	        	Blog blog = (Blog)session.getAttribute("Blog");
				BlogDao blogDao = new BlogDaoImpl();
				SearchService service = new SearchService(blogDao);
				if(isDel==null&&wish==null){
			%>
				<h2>DYTR(Design Your Trip)은 여러분이 여행정보를 쉽고 빠르게 획득할 수 있도록 설계된 사이트입니다.</h2><br>
				<h2>상단의 메뉴에서 나라를 직접 선택하시거나 카테고리를 통해 검색하시면 되겠습니다.</h2>
			<% 
				}else if(isDel!=null&&isDel.equals("y")){
				
				service.eleminateBlog(blog);
			%>
					<h1> 삭제가 완료 되었습니다.</h1>
					<button onclick="javascript:history.back();" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">메인으로</button>
			<%
				}else if(wish!=null&&wish.equals("true")){
					Wish wishClass = new Wish(blog, dto);
					service.addWish(wishClass);
			%>
				<h2>즐겨찾기 추가되었습니다.</h2>
				<button onclick="javascript:history.back();" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">메인으로</button>
			<%
				} else if(wish!=null&&wish.equals("false")){ 
			%><
				<h2>즐겨찾기 삭제되었습니다.</h2>
				<button onclick="javascript:history.back();" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">메인으로</button>
			<%
				Wish delwish = service.configureWish(dto.getMemberNum(), blog.getBlogNum());
	  			service.deleteWish(delwish);
				}
			%>
			 
			<div class="clear"></div>
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
        </footer> <!--p태그로 잡으면 안되나봐 -->

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
