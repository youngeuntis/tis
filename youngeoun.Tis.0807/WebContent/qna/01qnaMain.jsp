<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.qna.dao.PostDaoImpl"%>
<%@page import="youngun.tis.qna.dao.PostDao"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.PostMapper"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.qna.service.PostServiceImpl"%>
<%@page import="youngun.tis.qna.service.PostService"%>
<%@page import="youngun.tis.qna.service.PageServiceImpl"%>
<%@page import="youngun.tis.qna.service.PageService"%>
<%@page import="youngun.tis.qna.domain.Page"%>
<%@page import="youngun.tis.qna.domain.Post"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Page myPage = null;
	String currentPage = request.getParameter("currentPage");
	if(currentPage != null) myPage = new Page(Integer.parseInt(currentPage));
	else myPage = new Page();
	
	PostMapper postMapper = Configuration.getMapper(PostMapper.class);
	PostDao postDao = new PostDaoImpl(postMapper);
	
	PageService pageService = new PageServiceImpl(5, myPage);
	pageContext.setAttribute("pageMaker", pageService);
	PostService postService = new PostServiceImpl(postDao);
	List<Post> posts = postService.listPosts(myPage);
	pageContext.setAttribute("posts", posts);
	
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
    <link rel="stylesheet" href="../res/css/styleMain.css">
    
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <link rel="stylesheet" href="../res/css/qna.css">
    <!--main_menu_nav-->
    <script src="../res/js/modernizr.custom.js"></script>
    <!--end main_menu_nav-->
    <script type="text/javascript">
        function move(url) {
            location.href = url;
        }
    </script>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <style type="text/css">
    .text-center{text-align:center;}


.pagination{display:inline-block;
	padding-left:0;
	margin:20px 0;
	border-radius:4px;}
.pagination>li{display:inline-block;}
.pagination>li>a,.pagination>li>span{
	position:relative;float:left;
	padding:6px 12px;
	margin-left:-1px;
	line-height:1.42857143;
	color:#337ab7;
	text-decoration:none;
	background-color:#fff;
	border:1px solid #ddd;}
.pagination>li:first-child>a,.pagination>li:first-child>span{
	margin-left:0;
	border-top-left-radius:4px;
	border-bottom-left-radius:4px}
	.pagination>li:last-child>a,.pagination>li:last-child>span{
	border-top-right-radius:4px;
	border-bottom-right-radius:4px;}
	.pagination>li>a:focus,.pagination>li>a:hover,.pagination>li>span:focus,.pagination>li>span:hover{
	z-index:2;
	color:#23527c;
	background-color:#eee;
	border-color:#ddd;}
	</style>
</head>

<body>

    <div id="fullweb">
        <%@include file="../headerNav.jsp" %>

        <div class="slideshow-container">

            <div class="mySlides fade" style="display:block;">
                <img src="../res/img/faq1.jpg" style="width:100%; ">
            </div>
        </div>

        <main>
            <div class = "board" style=" height:400px;">
	 <table class="boardTable" bgcolor="white" border-style="outset">
	   <colgroup>
             <col width="50" />
             <col width="700" />
             <col width="140" />
             <col width="110" />
        </colgroup>
			<thead style="background-color: #e0e0eb;">
				<tr style= "height:50px;">
					<th style="width:50px">번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th style="width:50px">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="post" items="${posts}">
					<tr style= "height:50px;">
						<td style= "color : black;">${post.postNo}</td>
						<td style= "color : black;"><a href="04view.jsp?qna_num=${post.postNo}" style= "color : black;">${post.title}</a></td>
						<td style= "color : black;">${post.writer}</td>
						<td style= "color : black;">${post.regDate}</td>
						<td style= "color : black;"><span class="badge">${post.viewCnt}</span></td>
					</tr>
				</c:forEach>
			</tbody>
	</table>
		<!-- 페이징 -->
		
		<div class="text-center" style="text-align:center;">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li><a href="list.jsp?currentPage=${pageMaker.startPage-1}">&laquo;</a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<li <c:out value ="${pageMaker.page.currentPage==idx? 'class=active':'' }"/>>
						<a href="01qnaMain.jsp?currentPage=${idx}">${idx}</a>
					</li>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<li><a href="01qnaMain?currentPage=${pageMaker.endPage+1}">&raquo;</a></li>
				</c:if>
			</ul>
			<div class=boardButton style="float:right;">
        	<input class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px; margin-top: 15px;" type=button value="글쓰기"  onclick="move('02insert.jsp');">
			<input class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px; margin-top: 15px;" type=button value="내 글">
			<input class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px; margin-top: 15px;" type=button value="내 댓글">
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
        </footer>
    </div>
    <!-- end fullweb -->

    <!--main_menu_nav-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="../res/js/cbpHorizontalMenu.min.js"></script>
    <script>
        $(function() {
            cbpHorizontalMenu.init();
        });
    </script>

    <!--main_login-->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script src="../res/js/index.js"></script>


</body>
</html>