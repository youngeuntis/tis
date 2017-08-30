<%@page import="youngun.tis.user.admin.service.PageServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.PageService"%>
<%@page import="youngun.tis.user.admin.domain.Page"%>
<%@page import="youngun.tis.user.admin.service.UserServiceImpl"%>
<%@page import="youngun.tis.user.admin.service.UserService"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.user.admin.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Page myPage = null;
	String currentPage = request.getParameter("currentPage");
	String rowCnt = "27";
	if(currentPage != null) myPage = new Page(Integer.parseInt(currentPage),Integer.parseInt(rowCnt));
	else myPage = new Page(1,Integer.parseInt(rowCnt));
	
	UserService userService = new UserServiceImpl();
	PageService pageService = new PageServiceImpl(5, myPage, 3);
	pageContext.setAttribute("pageMaker", pageService);
	
	List<User> posts = userService.StepUsers(myPage);
	pageContext.setAttribute("posts", posts);
%>


<style type="text/css">
    .text-center{text-align:center;}
	.pagination>li{display:inline-block;}
	.pagination>li>a,.pagination>li>span{
		height: 20px;
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
    <meta name="description" content="해외 자유여행 컨텐츠 정보 공유">
    <meta name="keywords" content="해외여행, 자유여행, 싱가포르, 싱가폴
			파리, 미국, 미주, 미국 자유여행, 일본, 태국, 하와이, 대만, 홍콩, 베트남, 필리핀,
			인도네시아, 프랑스, 스페인, 이탈리아, 영국">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Design Your TRip</title>
    <link rel="stylesheet" href="../../res/css/styleMain.css">
    <script type="text/javascript" src="js/custom.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <link rel = "stylesheet" href =  "../../res/css/AdminStyleSub.css"/>
    <script type="text/javascript" src="../../res/js/admin.js"></script>

</head>

<body>

   <div id="fullweb">
		<header>
			<div class="Center">
				<div class="site-logo">
					<img src="../../res/img/DYTR.png"
						style="display: inline-block; width: 15%; height: auto; margin-top: -15px;">
					<h1>
						<a href="../../main.jsp">Design Your Trip</a>
					</h1>
				</div>
			</div>
			<div id="cbp-hrmenu" class="cbp-hrmenu" >
			<ul style=" width: 900px; height: 80px;
			margin-left: 80px;">
				<li><a href="adminmain.jsp">메인</a></li>
				<li><a href="adminFull.jsp">회원 관리</a></li>
				<li><a href="adminBlind.jsp">제재 회원 관리</a></li>
				<li><a href="adminForcedBlind.jsp">강퇴 회원 관리</a></li>
				<li><a href="adminStep.jsp">스텝 관리</a></li>
			
			</ul>
			</div>
		</header>



    
		
		
		<!-- 메인 작업부분 -->
		
		
		
        <main>
        

     <div class="main">
       <div class="mainB"><h1>스텝 관리</h1>
            <div class="mainSerch">
              <div class="mainSerch1"><select class="serchOption" size = "1" style="width: 65px; height: 22px;">
                   <option>아이디</option>
                   <option>이름</option>
               </select></div>
              <div class="mainSerch2"><input id="search" type="search" style="width: 170px; height: 22px; name="search_member" placeholder="검색" maxlength="255"></div>
                  <div class="mainSerch3">
                      <button id="member_button" type="submit"><!--검색--></button>
                  </div>
               
              
              
            </div>
             <div class="mainBb">
              <ul id="gnb9">
                    <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
		            <li><a href="#">처리일▼</a></li>
                    <li><a href="#">등급▼</a></li>
                 </ul>
             </div>
              
             
             <div class="mainB2Step"> 
             <c:forEach var="post" items="${posts}">
                        <div class="memberstepDataBcheck"><p><input type="checkbox"></p></div>
                        <div class="memberstepDataBid">${post.userId}</div>
                        <div class="memberstepDataBname">${post.userName}</div>
                        <div class="memberstepDataBdate"><p></p></div>
                        <div class="memberstepDataBgrade"><p></p></div>
         	</c:forEach>
             </div>
                     
             <div class="memberNum">
					<div class="memberNumin">
						
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li><a href="adminStep.jsp?currentPage=${pageMaker.startPage-1}&#mainAa1">&laquo;</a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<li <c:out value ="${pageMaker.page.currentPage==idx? 'class=active':'' }"/>>
						<a href="adminStep.jsp?currentPage=${idx}&#mainAa1">${idx}</a>
					</li>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<li><a href="adminStep.jsp?currentPage=${pageMaker.endPage+1}&#mainAa1">&raquo;</a></li>
				</c:if>
			</ul>
	
					</div>
					
				</div>
        </div>
          <div class="mainBoption">
                    <ul id="gnb5">
		            <li><a href="javascript:popUpEmail(620, 670)" >메일</a></li>
                    <li><a href="javascript:ClearMassage(625, 285)">스텝 해제</a></li>
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
            

                <p> copyright DESIGN YOUR TRIP</p>
            </div>
        </footer> <!--p태그로 잡으면 안되나봐 -->

    </div> <!-- end fullweb -->

    <!--main_menu_nav-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/cbpHorizontalMenu.min.js"></script>
    <script>$(function() {cbpHorizontalMenu.init();});</script>

    <!--main_login-->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script src="js/index.js"></script>

</body>

</html>
