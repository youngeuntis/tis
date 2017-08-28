<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.PostMapper"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<%
PostMapper postMapper = Configuration.getMapper(PostMapper.class);

int postNo = Integer.parseInt(request.getParameter("qna_num"));
String content = postMapper.getContent(postNo);
String title = postMapper.getTitle(postNo);
%>
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
<title>Design Your TRip</title>
<link rel="stylesheet" href="../res/css/styleMain.css">
<link rel="stylesheet" href="../res/css/qna.css">
<script type="text/javascript" src="../res/js/custom.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<!--main_menu_nav-->
<script src="../res/js/modernizr.custom.js"></script>
<!--end main_menu_nav-->
<script type="text/javascript">
        function move(url) {
            location.href = url;
        }

        function boardViewCheck() {
            var form = document.BoardWriteForm;
            return true;
        }
    </script>

</head>

<body>

	<div id="fullweb">
		<%@include file="../headerNav.jsp" %>

		<div class="slideshow-container">

			<div class="mySlides fade" style="display: block;">
				<img src="../res/img/faq1.jpg" style="width: 100%;">
			</div>

			<main>
			<form action="06modifiedSucssess.jsp">
				<div class="writing">
					<input type="hidden" name="qna_num" value="<%=postNo%>"/>
					<div class="board_title">
						<textarea name="qna_title"
							style="width: 1000px; height: 50px; font-size:19px;"><%=title %></textarea>
					</div>
					<div class="board_content">
						<textarea name="qna_content" style="width: 1000px; height: 500px;"><%=content %></textarea>
					</div>
						<div class="board_button" style="float:right;">
                        	<input type="radio" name="open_check" value="1" checked />공개
							<input type="radio" name="open_check" value="0"/>비공개
                            <button type="submit" class="action-button shadow animate blue" style="padding: 10px 10px;">수정</button>
                            <input type="button" value="목록으로" class="action-button shadow animate blue" style="padding: 10px 10px;" onclick="move('01qnaMain.jsp');">
                        </div>
					</div>
				</div>
			</form>
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
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
	<script src="../res/js/index.js"></script>


</body>
</html>