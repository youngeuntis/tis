<%@page import="youngun.tis.mypage.domain.Page"%>
<%@page import="youngun.tis.mypage.domain.Post"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.mypage.service.PostMoreServiceImpl"%>
<%@page import="youngun.tis.mypage.service.PostMoreService"%>
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
<title>My history</title>
<link rel="stylesheet" href="../res/css/mypage.css">
<link rel="stylesheet" href="../res/css/myhistory.css">

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
		<%
			int member = dto.getMemberNum();
			
			PostMoreService postMoreService = new PostMoreServiceImpl();
			List<Post> qnaNotis = postMoreService.findContentQna(member);
			List<Post> revNotis = postMoreService.findContentRev(member);
			List<Post> blogNotis = postMoreService.findContentTravel(member);
			Page pageQnaNotis = new Page(qnaNotis.size(),5);
			Page pageRevNotis = new Page(revNotis.size(),5);
			Page pageBlogNotis = new Page(blogNotis.size(),5);
		%>
		<main>
		<div id="container">
			<div id="content">
				<div class="c_header">
					<h2>My 게시물</h2>
					<p class="contxt">회원님의 게시물을 전부 보여드립니다.</p>
				</div>
				
				<!-- Blog -->
				<div class="table">
					<table class="board">
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">여행정보 게시물 제목</th>
						</tr>
						
						<%
						String pageBlogNotisIndex = request.getParameter("page");
						if(pageBlogNotisIndex == null) pageBlogNotisIndex="1";
						int pageBlogIndexInt = Integer.parseInt(pageBlogNotisIndex);
						
							if(blogNotis.size() != 0){
								for(int i=pageBlogNotis.getPageNum()*(pageBlogIndexInt-1); 
										i<pageBlogIndexInt*pageBlogNotis.getPageNum(); i++){
									if(i>=blogNotis.size()) break;
						%>
						<tr>
							<td class="boardNum"><%=blogNotis.get(i).getTravPostNum() %></td>
							<td class="boardText">
							<a href="../travel/03SelectContent.jsp?blognum=<%=blogNotis.get(i).getTravPostNum() %>">
							<%=blogNotis.get(i).getTravPostTitle() %></a></td>
						</tr>
						<%
							}
						}else{%>
							<h2>작성한 여행정보 게시물이 없습니다</h2>
						<%
						}
						%>

					</table>

					<div class="prev-next">

						<table summary="페이지 네비게이션" class="Nnavi" align="center">
							<tbody>
								<tr>
								<%
									for(int i=0; i<pageBlogNotis.getPageCnt(); i++){
								%>
									<td class="on"><a href="postMore.jsp?page=<%=i+1 %>" 
										class="m-tcol-p"><%=i+1 %></a></td>
								<%
									}
								%>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				
				<!-- Review -->
				<div class="table">
					<table class="board">
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">여행후기 게시물 제목</th>
						</tr>

						<%
						String pageRevNotisIndex = request.getParameter("page");
						if(pageRevNotisIndex == null) pageRevNotisIndex="1";
						int pageRevNotisIndexInt = Integer.parseInt(pageRevNotisIndex);
							if(revNotis.size() != 0){
								for(int i=pageRevNotis.getPageNum()*(pageRevNotisIndexInt-1); 
										i<pageRevNotisIndexInt*pageRevNotis.getPageNum(); i++){
									if(i>=revNotis.size()) break;
						%>
						<tr>
							<td class="boardNum"><%=revNotis.get(i).getRevPostNum() %></td>
							<td class="boardText">
							<a href="../review/reviewMain.jsp?reivewNum=<%=revNotis.get(i).getRevPostNum() %>">
							<%=revNotis.get(i).getRevPostTitle() %></a></td>
						</tr>
						<%
							}
						}else{%>
							<h2>작성한 여행후기 게시물이 없습니다</h2>
						<%
						}
						%>


					</table>

					<div class="prev-next">

						<table summary="페이지 네비게이션" class="Nnavi" align="center">
							<tbody>
								<tr>
								<%
									Page pageRevPost = new Page(revNotis.size(),5);
									for(int i=0; i<pageRevPost.getPageCnt(); i++){
								%>
									<td class="on"><a href="#" class="m-tcol-p"><%=i+1 %></a></td>
								<%
									}
								%>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				
				<!-- QNA  -->
				<div class="table">
					<table class="board">
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">Q&amp;A 게시물 제목</th>
						</tr>

						<%
							if(qnaNotis.size() != 0){
								for(int i=0; i<qnaNotis.size(); i++){
						%>
						<tr>
							<td class="boardNum"><%=qnaNotis.get(i).getQnaPostNum() %></td>
							<td class="boardText">
							<a href="../qna/04view.jsp?qna_num=<%=qnaNotis.get(i).getQnaPostNum() %>">
							<%=qnaNotis.get(i).getQnaPostTitle() %></a></td>
						</tr>
						<%
							}
						}else{%>
							<h2>작성한 Q&amp;A 게시물이 없습니다</h2>
						<%
						}
						%>


					</table>

					<div class="prev-next">

						<table summary="페이지 네비게이션" class="Nnavi" align="center">
							<tbody>
								<tr>
								<%
									Page pageQnaPost = new Page(qnaNotis.size(),5);
									for(int i=0; i<pageQnaPost.getPageCnt(); i++){
								%>
									<td class="on"><a href="#" class="m-tcol-p"><%=i+1 %></a></td>
								<%
									}
								%>
								</tr>
							</tbody>
						</table>
					</div>

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