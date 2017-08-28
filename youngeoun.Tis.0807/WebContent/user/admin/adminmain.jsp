<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.user.admin.service.PageServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.PageService"%>
<%@page import="youngun.tis.user.admin.domain.Page"%>
<%@page import="youngun.tis.user.admin.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.UserService"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.user.admin.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Page myPage = null;
	String currentPage = request.getParameter("currentPage");
	String rowCnt = "10";
	//String rowCnt = "10";
	if(currentPage != null) myPage = new Page(Integer.parseInt(currentPage),Integer.parseInt(rowCnt));
	else myPage = new Page(1, Integer.parseInt(rowCnt));
	
	UserService userService = new UserServiceImpl();
	PageService pageService = new PageServiceImpl(5, myPage, 1);
	pageContext.setAttribute("pageMaker", pageService);
	
	List<User> posts = userService.findUsers(myPage);
	pageContext.setAttribute("posts", posts);
%>


<style type="text/css">
    .text-center{text-align:center;}
	.pagination>li{display:inline-block;}
	.pagination>li>a,.pagination>li>span{
		position:relative;float:left;
		padding:5px 10px;
		margin-left:0px;
		line-height:1;
		color:#000;}
</style>

<!doctype html>

<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Design Your TRip</title>
<link rel="stylesheet" href="../../res/css/styleMain.css">
<script type="text/javascript" src="js/custom.js"></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link rel="stylesheet" href="../../res/css/AdminStyle.css" />
<script type="text/javascript" src="../../res/js/admin.js"></script>

</head>

<body>

	<div id="fullweb">
		<%@include file="../../headerNavAdmin.jsp"%>
		<!-- 메인 작업부분 -->
		<main>

		<div class="adminMenu">
			<ul id="gnb">
				<li><a href="adminmain.jsp"><h2>메인</h2></a></li>
				<li><a href="adminFull.jsp"><h2>회원 관리</h2></a></li>
				<li><a href="adminBlind.jsp"><h2>제재 회원 관리</h2></a></li>
				<li><a href="adminForcedBlindControl.jsp"><h2>강제 탈퇴 회원 관리</h2></a></li>
				<li><a href="adminStepControl.jsp"><h2>스텝 관리</h2></a></li>
			</ul>
		</div>
		<div class="main">

			<div class="mainA">
				<div class="mainA1">
					<h1>최근 방문 회원</h1>
					<br />
					<ul id="gnb2">
						<li><a href="#">날짜▼</a></li>
						<li><a href="#">아이디▼</a></li>
						<li><a href="#">이름▼</a></li>
					</ul>
					<div class="mainAa1" id="mainAa1">



						<div class="memberDataAdate">
							<p>2017.08.08</p>
						</div>
						<div class="memberDataAid">
							<p>TIS1234</p>
						</div>
						<div class="memberDataAname">
							<p>길동잉</p>
						</div>



					</div>
					<div class="mainAbutton">
						<a href="adminUntilVisit.jsp">더보기</a>
					</div>
				</div>
				<div class="mainA2">
					<h1>최근 가입 회원</h1>
					<br />
					<ul id="gnb2">
						<li><a href="#">날짜▼</a></li>
						<li><a href="#">아이디▼</a></li>
						<li><a href="#">이름▼</a></li>
					</ul>
					<div class="mainAa1">
						<div class="memberDataAdate">
							<p>2017.08.08</p>
						</div>
						<div class="memberDataAid">
							<p>TIS1234</p>
						</div>
						<div class="memberDataAname">
							<p>길동잉</p>
						</div>

					</div>
					<div class="mainAbutton" id="mainAbutton">
						<a href="adminUntilJoin.jsp">더보기</a>
					</div>
				</div>
				<div class="mainA3">
					<h1>최근 제재 회원</h1>
					<br />
					<ul id="gnb2">
						<li><a href="#">날짜▼</a></li>
						<li><a href="#">아이디▼</a></li>
						<li><a href="#">이름▼</a></li>
					</ul>
					
					<div class="mainAa1">
					
						<div class="memberDataAdate"><p>2017.08.08</p></div>
						<div class="memberDataAid"><p></p></div>
						<div class="memberDataAname"><p></p></div>
					
					
					</div>
					<div class="mainAbutton">
						<a href="adminUntilBlind.jsp">더보기</a>
					</div>
				</div>
			</div>
			<div class="mainB" id="mainB">
				<h1>전체 회원</h1>
				<div class="mainSerch">
					<div class="mainSerch1">
						<select class="serchOption" size = "1" style="width: 65px; height: 22px;">
							<option>아이디</option>
							<option>이름</option>
						</select>
					</div>
					<div class="mainSerch2">
						<input id="search" style="width: 170px; height: 22px; type="search" name="search_member"
							placeholder="검색" maxlength="255">
					</div>
					<div class="mainSerch3">
						<button id="member_button" type="submit">
							<!--검색-->
						</button>
					</div>



				</div>
				<div class="mainBb" id="mainBb">
					<ul id="gnb3">
						<li><a href="#">아이디▼</a></li>
						<li><a href="#">이름▼</a></li>
						<li><a href="#">가입일▼</a></li>
						<li><a href="#">최근방문일▼</a></li>
						<li><a href="#">게시글수▼</a></li>
						<li><a href="#">댓글수▼</a></li>
						<li><a href="#">방문수▼</a></li>
					</ul>
				</div>

				
				<div class="mainB2" id="mainB2">
				<c:forEach var="post" items="${posts}">
					<div class="memberDataBcheck"><input type="checkbox"></div>
					<div class="memberDataBid"><p>${post.userId} </p></div>
					<div class="memberDataBname"><p>${post.userName}</p></div>
					<div class="memberDataBjoindate"><p>${post.joinDate}</p></div>
					<div class="memberDataBvisitdate"><p>${post.untilvisit}</p></div>
					<div class="memberDataBwhite"><p>${post.writeCount}</p></div>
					<div class="memberDataBcoment"><p>${post.replCount}</p></div>
					<div class="memberDataBvisitcount"><p>${post.visitCount}</p></div>
				</c:forEach>
				</div>
				
				<div class="memberNum">
					<div class="memberNumin">
						<div class="text-center" style="text-align:center;">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li><a href="adminmain.jsp?currentPage=${pageMaker.startPage-1}&#mainAa1">&laquo;</a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<li <c:out value ="${pageMaker.page.currentPage==idx? 'class=active':'' }"/>>
						<a href="adminmain.jsp?currentPage=${idx}&#mainAa1">${idx}</a>
					</li>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<li><a href="adminmain.jsp?currentPage=${pageMaker.endPage+1}&#mainAa1">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
					</div>
					<div class="mainBbutton">
						<a href="adminFull.jsp">더보기</a>
					</div>
				</div>

			</div>
			<div class="mainBoption">
				<ul id="gnb4">
					<li><a href="javascript:blindMassage(625, 285)" >제재</a></li>
					<li><a href="javascript:forcedblindMassage(620, 285)" >강제 탈퇴</a></li>
					<li><a href="javascript:popUpEmail(620, 670)" >메일</a></li>
					<li><a href="javascript:popUpMassage(420, 350)" >쪽지</a></li>
					<li><a href="javascript:StepMassage(620, 285)" >스텝 기능</a></li>
				</ul>
			</div>

			<div class="clear"></div>
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
		<!--p태그로 잡으면 안되나봐 -->

	</div>
	<!-- end fullweb -->

	<!--main_menu_nav-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="js/cbpHorizontalMenu.min.js"></script>
	<script>$(function() {cbpHorizontalMenu.init();});</script>

	<!--main_login-->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
	<script src="js/index.js"></script>



</body>

</html>
