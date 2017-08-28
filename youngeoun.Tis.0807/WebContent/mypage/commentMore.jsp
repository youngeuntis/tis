<%@page import="youngun.tis.mypage.domain.Page"%>
<%@page import="youngun.tis.mypage.domain.Comment"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.mypage.service.CommentMoreServiceImpl"%>
<%@page import="youngun.tis.mypage.dao.CommentMoreDaoImpl"%>
<%@page import="youngun.tis.mypage.service.CommentMoreService"%>
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
		
			int memberNum = dto.getMemberNum();
					
			CommentMoreService commentMoreService = new CommentMoreServiceImpl();
			List<Comment> commentReply = commentMoreService.findCommentMore(memberNum);
			List<Comment> commentRevReply = commentMoreService.findRevCommentMore(memberNum);
			Page pageQnaRe = new Page(commentReply.size(),10);
			Page pageRevRe = new Page(commentRevReply.size(),10);
		%>
		<main>
		<div id="container">
			<div id="content">
				<div class="c_header">
					<h2>My 댓글</h2>
					<p class="contxt">회원님의 댓글을 전부 보여드립니다.</p>
				</div>

				<!--qna 댓글  -->
				<div class="table">
					<table class="board">
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">Q&amp;A 댓글 내용</th>
						</tr>

						<%
						String pageCommentIndex = request.getParameter("page");
						if(pageCommentIndex == null) pageCommentIndex="1";
						int pageIndexInt = Integer.parseInt(pageCommentIndex);
						
						if(commentReply.size() != 0){						
							for(int i=pageQnaRe.getPageNum()*(pageIndexInt-1); i<pageIndexInt*pageQnaRe.getPageNum(); i++){
								if(i>=commentReply.size()) break;			
						%>
						<tr>
							<td class="boardNum"><%=commentReply.get(i).getQnaReplyNum() %></td>
							<td class="boardText"><a
								href="../qna/09replySucssess.jsp?qna_reply_num=<%=commentReply.get(i).getQnaReplyNum() %>">
									<%=commentReply.get(i).getQnaReplyCont() %></a></td>
						</tr>
						<%
							}
						}else{%>
						<h2>작성한 Q&amp;A의 댓글이 없습니다.</h2>
						<%
						}						
						%>

					</table>

					<div class="prev-next">

						<table summary="페이지 네비게이션" class="Nnavi" align="center">
							<tbody>
								<tr>
								<%
									for(int i=0; i<pageQnaRe.getPageCnt(); i++){
								%>
									<td class="on"><a href="commentMore.jsp?page=<%=i+1 %>"
										class="m-tcol-p"><%=i+1 %></a></td>
								<%
									}
								%>
								</tr>
							</tbody>
						</table>
					</div>

				</div>

				<!--rev 댓글  -->
				<div class="table">
					<table class="board">
						<tr>
							<th class="boardNums">번호</th>
							<th class="boardTexts">여행후기 댓글 내용</th>
						</tr>


						<%
						String pageRevCommentIndex = request.getParameter("page");
						if(pageRevCommentIndex == null) pageRevCommentIndex="1";
						int pageRevIndexInt = Integer.parseInt(pageRevCommentIndex);
						
						if(commentRevReply.size() != 0){
							for(int i=pageRevRe.getPageNum()*(pageRevIndexInt-1); i<pageRevIndexInt*pageRevRe.getPageNum(); i++){
								if(i>=commentRevReply.size()) break;			
						%>

						<tr>
							<td class="boardNum"><%=commentRevReply.get(i).getRevReplyNum() %></td>
							<td class="boardText"><a
								href="../review/reviewMain.jsp?review_reply_num=<%=commentRevReply.get(i).getRevReplyNum() %>">
									<%=commentRevReply.get(i).getRevReplyCont() %></td>
						</tr>

						<%
							}
						}else{%>						
							<h2>작성한 여행후기의 댓글이 없습니다.</h2>						
						<%}%>

					</table>

					<div class="prev-next">

						<table summary="페이지 네비게이션" class="Nnavi" align="center">
							<tbody>
								<tr>
									<%
									for(int i=0; i<pageRevRe.getPageCnt(); i++){
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