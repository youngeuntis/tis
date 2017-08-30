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
    pageEncoding="UTF-8"%>
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
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <style>
    .editorSelect{
    	background-color: #5c9cd8;
    	margin-bottom : 5px;
    	font-size : 15px;
    	height : 25px;
    	color : #fff;
    }
    </style>
	
</head>
<body>
     
    <div id="fullweb">
        <%@include file="../headerNav.jsp" %>
        <div class="picture">
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
        
        <script src="../res/js/nicEdit.js" type="text/javascript"></script>
        <script type="text/javascript">
        bkLib.onDomLoaded(function() {

            new nicEditor({fullPanel : true}).panelInstance('area2');
        });
        </script>
        
	<% 
		ReviewDao reviewDao = new ReviewDaoImpl();
	    SearchService service = new SearchService(reviewDao);
	    String continent = request.getParameter("continent");
		String category = null;
    
		String reviewNum = request.getParameter("reviewNum");
		List<Review> reviews = reviewDao.getReviewListNoPara();
		Review selectReview = service.searchReview(reviews, reviewNum);
	%>
	<div class="editor" style="position: relative; height: 900px; width:1200px; left:50%; margin-left: -600px;">
		<form action="reviewInsert2.jsp" method="post">
			<div style="width:1200px; overflow : hidden;  margin-top:10px;" >
	        	<textarea cols="60" style="width:1300px; height:20px;" name="review_title"><%=selectReview.getReviewTitle()%></textarea>
	        </div>
			
			
			
			 <%-- <select class="editorSelect" id="mySelect" name="continent" value="<%=selectReview.getNationCode()%>" onchange="subCategory();">
             </select>
             <select class="editorSelect" id="subSelect" name="country" value="<%=selectReview.getNationCode()%>">
             </select> --%>
            
			<div>
				<textarea cols="60" id="area2" style="height: 800px; width:1200px; position:relative; overflow:scroll;" name="review_content"><%=selectReview.getReviewContent() %></textarea>
			</div>
			
				<input type="hidden" name="reviewNum" value="<%=selectReview.getReviewNum() %>">
				<input type="hidden" name="continent" value="<%=selectReview.getContinentCode()%>">
				<input type="hidden" name="country" value="<%=selectReview.getNationCode()%>">
				<button type="submit" class="action-button shadow animate blue" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">저장</button>
		</form>
				<button onclick="cancelMove()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">취소</button>
   </div>
            <script>
                    function cancelMove(){
                        var answer = confirm("확인을 누르시면 이전 페이지로 이동합니다. 이동를 원하십니까?")
                        if(answer) history.go(-1);
                    }
            </script>
</body>
</html>