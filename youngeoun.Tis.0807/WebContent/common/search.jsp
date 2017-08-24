<%@page import="youngun.tis.common.domain.Search"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.common.service.SearchServiceImpl"%>
<%@page import="youngun.tis.common.service.SearchService"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page session="true"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<%
	String keyWord = request.getParameter("keyWord");
	
	SearchService searchService = new SearchServiceImpl();
	List<Search> contentlist = searchService.findAllContent(keyWord);
	
%>


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
    <link rel="stylesheet" href="../res/css/mypage.css">
	<link rel="stylesheet" href="../res/css/myhistory.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
	
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
		
		
		<!-- 메인 작업부분 -->
        <main>
	    <div id="container">
			<div id="content">
				<div class="c_header">
					<h2>검색 결과</h2>
				</div>
				
				<div class="table">
					<div class="c_header">
						<p class="contxt">최근 글</p>
					</div>	
					<hr>
					<table class="board">
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">내용</th>
						</tr>
						
						<tr>
							<td class="boardNum"></td>
							<td class="boardText"></td>
						</tr>
					</table>
					<br><br>
					
					
					<div class="c_header">
						<p class="contxt">커뮤니티</p>
					</div>
					
					<hr>
					<table class="board">
						
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">내용</th>
						</tr>
						
						<%for(int i=0;i<contentlist.size();i++){ %>
						<tr>
							<td class="boardNum"><%=contentlist.get(i).getWritingNum() %></td>
							<td class="boardText"><%=contentlist.get(i).getSearchContent() %></td>
						</tr>
						<%} %>
					</table>					

				</div>
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
