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
        <header>
            <div class="Center">
                <div class="site-logo">
                    <img src="../res/img/logo/DYTR.png" style="display:inline-block; width:15%;height:auto; margin-top:-15px;">
                    <h1><a href="../main.html">Design Your Trip</a></h1>
                </div>
                <div id="cbp-hrmenu" class="cbp-hrmenu">
                    <ul>
                        <li>
							<!-- 햄버거 -->
                            <a href="#"><i class="fa fa-bars"></i></a>
                            <div class="cbp-hrsub" style="width:600px; left:545px;">
                                <div class="cbp-hrsub-inner" style="width:600px;">
                                    
									<div class="sub_ham">
                                        <h4>커뮤니티</h4>
                                        <ul>
                                            <li><a href="../review/01reviewMain.html">후기</a></li>
                                        </ul>
                                    </div>
                                    <div class="sub_ham" id="sub_ham_event" >
                                        <h4>이벤트</h4>
                                        <ul>
                                            <li><a href="../event/01event.html">이벤트</a></li>
                                        </ul>
                                    </div>
									<div class="sub_ham">
                                        <h4>문의사항</h4>
                                        <ul>
                                            <li><a href="../qna/01qnaMain.html">Q&amp;A</a></li>
                                            <li><a href="../qna/08faqlist.html">FAQ</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /cbp-hrsub-inner -->
                            </div>
                            <!-- /cbp-hrsub -->
                        </li>
                        <li>
                            <a href="#">여행지</a>
                            <div class="cbp-hrsub">
                                <div class="cbp-hrsub-inner">
                                    <div>
                                        <h4>대한민국</h4>
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">서울</a></li>
                                            <li><a href="../travel/01TravelMain.html">경기</a></li>
                                            <li><a href="../travel/01TravelMain.html">제주</a></li>
                                            <li><a href="../travel/01TravelMain.html">부산</a></li>
                                            <li><a href="../travel/01TravelMain.html">강원도</a></li>
                                            <li><a href="../travel/01TravelMain.html">충청도</a></li>
                                            <li><a href="../travel/01TravelMain.html">전라도</a></li>
                                            <li><a href="../travel/01TravelMain.html">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">네팔</a></li>
                                            <li><a href="../travel/01TravelMain.html">대만</a></li>
                                            <li><a href="../travel/01TravelMain.html">몰디브</a></li>
                                            <li><a href="../travel/01TravelMain.html">말레이시아</a></li>
                                            <li><a href="../travel/01TravelMain.html">발리</a></li>
                                            <li><a href="../travel/01TravelMain.html">베트남</a></li>
                                            <li><a href="../travel/01TravelMain.html">부탄</a></li>
                                            <li><a href="../travel/01TravelMain.html">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="../travel/01TravelMain.html">일본</a></li>
                                            <li><a href="../travel/01TravelMain.html">인도</a></li>
                                            <li><a href="../travel/01TravelMain.html">인도네시아</a></li>
                                            <li><a href="../travel/01TravelMain.html">중국</a></li>
                                            <li><a href="../travel/01TravelMain.html">캄보디아</a></li>
                                            <li><a href="../travel/01TravelMain.html">태국</a></li>
                                            <li><a href="../travel/01TravelMain.html">필리핀</a></li>
                                            <li><a href="../travel/01TravelMain.html">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">미국</a></li>
                                            <li><a href="../travel/01TravelMain.html">하와이</a></li>
                                            <li><a href="../travel/01TravelMain.html">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="../travel/01TravelMain.html">그리스</a></li>
                                            <li><a href="../travel/01TravelMain.html">노르웨이</a></li>
                                            <li><a href="../travel/01TravelMain.html">네덜란드</a></li>
                                            <li><a href="../travel/01TravelMain.html">독일</a></li>
                                            <li><a href="../travel/01TravelMain.html">덴마크</a></li>
                                            <li><a href="../travel/01TravelMain.html">록셈부르크</a></li>
                                            <li><a href="../travel/01TravelMain.html">루마니아</a></li>
                                            <li><a href="../travel/01TravelMain.html">몰타</a></li>
                                            <li><a href="../travel/01TravelMain.html">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="../travel/01TravelMain.html">스위스</a></li>
                                            <li><a href="../travel/01TravelMain.html">스웨덴</a></li>
                                            <li><a href="../travel/01TravelMain.html">스페인</a></li>
                                            <li><a href="../travel/01TravelMain.html">슬로바키아</a></li>
                                            <li><a href="../travel/01TravelMain.html">아이슬란드</a></li>
                                            <li><a href="../travel/01TravelMain.html">아일랜드</a></li>
                                            <li><a href="../travel/01TravelMain.html">영국</a></li>
                                            <li><a href="../travel/01TravelMain.html">이탈리아</a></li>
                                            <li><a href="../travel/01TravelMain.html">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="../travel/01TravelMain.html">체코</a></li>
                                            <li><a href="../travel/01TravelMain.html">터키</a></li>
                                            <li><a href="../travel/01TravelMain.html">러시아</a></li>
                                            <li><a href="../travel/01TravelMain.html">에스토니아</a></li>
                                            <li><a href="../travel/01TravelMain.html">크로아티아</a></li>
                                            <li><a href="../travel/01TravelMain.html">헝가리</a></li>
                                            <li><a href="../travel/01TravelMain.html">프랑스</a></li>
                                            <li><a href="../travel/01TravelMain.html">폴란드</a></li>
                                            <li><a href="../travel/01TravelMain.html">포르투칼</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /cbp-hrsub-inner -->
                            </div>
                            <!-- /cbp-hrsub -->
                        </li>
                        <li>
                            <a href="#">커뮤니티</a>
                            <div class="cbp-hrsub" style="width:20%!important; left:700px;">
                                <div class="cbp-hrsub-inner" style="width:300px;">
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-left:40px; margin-right: 20px;">
			                            <h4><a href="../review/01reviewMain.html">후기</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="#">제목1</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; ">
			                            <h4><a href="#">제목2</a></h4>
		                           	</div>
	                           	</div>
                           	</div>            
                        </li>
	                    
	                    <li>
	                        <a href="#">이벤트</a>
	                        <div class="cbp-hrsub" style="width:20%!important; left:800px;">
                                <div class="cbp-hrsub-inner" style="width:300px;">
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-left:40px; margin-right: 20px;">
			                            <h4><a href="../event/01event.html">이벤트</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="#">제목1</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; ">
			                            <h4><a href="#">제목2</a></h4>
		                           	</div>
	                           	</div>
                           	</div>
	                    </li>
                        
                        <li>
                            <a href="#">문의사항</a>
                            <div class="cbp-hrsub" style="width:20%!important; left:800px;">
                                <div class="cbp-hrsub-inner" style="width:300px;">
		                           	<div class="sub_comunity" style="position:relative; margin-left:80px; margin-right : 20px; display:block; float:left;">
			                            <h4><a href="../qna/01qnaMain.html">Q&amp;A</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="../qna/08faqlist.html">FAQ</a></h4>
		                           	</div>
	                           	</div>
                           	</div>
                        </li>
                    </ul>
                </div>

                <div class="right_nav">
                    <!-- main_join -->
                    <div class="right_nav_join"><a>회원가입</a></div><!-- end join -->
                    
                    <!-- main_login -->
								<div id ="login">
									  <section class="modal signup badge-overlay-signin">
										<a class="btn-close badge-overlay-close" id="closepopup" href="#">✖</a>
										<section id="signup">
										<h2>Login</h2>
										<form id="login-email" class="badge-login-form" action="" method="POST">
											<input type="hidden" value="">
											<input type="hidden" id="jsid-login-form-next-url" name="next" value="">
																	<input type="hidden" name="location" value="1">
															<p class="lead">Log in with your id password </p>
											<div class="field">
												<label for="jsid-login-email-name">ID</label>
												<input id="jsid-login-email-name" type="text" name="username" value="" autofocus="autofocus">
											</div>
											<div class="field">
												<label for="login-email-password">PASSWORD</label>
												<input id="login-email-password" type="password" name="password" value="">
														</div>
											<div class="btn-container">
												<input type="submit" value="Log in" onclick="">
												<a class="forgot-password" href="" onclick="">Forgot Password</a>
											</div>
										</form>
										</section>
									</section>
								</div>
								<div class="overlay"></div>
								<div class="demo">
								  <a id="launch" class="fbbutton" href="#">로그인</a>
								</div>
								<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

								<script src="../res/js/index.js"></script>

                    
                    <div class="clear"></div>
                    
                    <!-- main_search -->
                    <div class="right_nav_search">
                        <form method="get">
                            <div>
                                <input id="nav_search" type="search" name="search_keyword" placeholder="여행지를 검색" maxlength="255">
                            </div>
                            <div>
                                <button id="search_button" type="submit"><!--검색--></button>
                            </div>
                        </form>
                    </div><!--end .right_nav_search -->
                </div><!--end .right_nav -->
            </div><!--end .Center-->
        </header>

        <div class="slideshow-container">

            <div class="mySlides fade" style="display:block;">
                <img src="../res/img/faq1.jpg" style="width:100%; ">
            </div>
        </div>

        <main>
            <div class = "board">
	 <table class="boardTable" bgcolor="white" border-style="outset">
	   <colgroup>
             <col width="50" />
             <col width="700" />
             <col width="140" />
             <col width="110" />
        </colgroup>
			<thead>
				<tr>
					<th style="width:50px">번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th style="width:50px">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="post" items="${posts}">
					<tr>
						<td>${post.postNo}</td>
						<td>${post.title}</td>
						<td>${post.writer}</td>
						<td>${post.regDate}</td>
						<td><span class="badge">${post.viewCnt}</span></td>
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
						<a href="list.jsp?currentPage=${idx}">${idx}</a>
					</li>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<li><a href="list.jsp?currentPage=${pageMaker.endPage+1}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
		<div class=boardButton style="float:right;">
        	<input type=button value="글쓰기"  onclick="move('insert.html');">
			<input type=button value="내 글">
			<input type=button value="내 댓글">
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