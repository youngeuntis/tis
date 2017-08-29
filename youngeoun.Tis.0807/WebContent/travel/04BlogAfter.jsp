<%@page import="youngun.tis.travel.blog.domain.Country"%>
<%@page import="youngun.tis.travel.blog.dao.TravelDao"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDaoImpl"%>
<%@page import="youngun.tis.travel.blog.service.SearchService"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDao"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="youngun.tis.travel.blog.domain.Blog"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.travel.blog.mapper.BlogMapper"%>
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
    <link rel="stylesheet" href="../res/css/SelectContent.css">
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
		<% 
			BlogDao blogDao = new BlogDaoImpl();
			SearchService service = new SearchService(blogDao);
			String title = request.getParameter("editor_title");
			String content = request.getParameter("editor_content");
			String continent = request.getParameter("continent");
			String country = request.getParameter("country");
			String blogNum = request.getParameter("blogNum");
			String userNum = request.getParameter("userNum");
			Pattern p = Pattern.compile("(http://i.imgur.com/)+(([a-zA-Z0-9]*.jpg)|([a-zA-Z0-9]*.png)|([a-zA-Z0-9]*.jpeg))");
			Matcher m = p.matcher(content);
			List<Blog> blogs = blogDao.getBlogListNoPara();
			Blog blog = null;
			if(blogNum == null){
				blog = new Blog();
				service.writeBlog(blog, title, content, continent, country, m, Integer.parseInt(userNum));
				blogDao.insertInfo(blog);
			}else{
				blog = service.searchBlog(blogs, blogNum);
				service.writeBlog(blog, title, content, continent, country, m, Integer.parseInt(userNum));
				service.modifyBlog(blog);
			}
			
			/* blog.setContinentCode(continent);
			blog.setNationCode(country);
			blog.setBlogTitle(title);
			blog.setBlogContent(content);
			while(m.find()){
				blog.setImg(m.group());
			} */			
		%>
		
		
        <main>
        <%
        	TravelDao travelDao = new TravelDao();
        	Country con = travelDao.searchParam("%"+country+"%");
        %>
        	<h2>글이 등록되었습니다.</h2>
        	<button onclick="move()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">메인으로</button>
        	<script>
        		function move(){
        			location.replace("05TravelAfter.jsp?continent=<%=con.getNationalCode()%>&nation=<%=con.getCountryName()%>")	
        		}
        	</script>
		</main>
        <div class="clear"></div>
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

