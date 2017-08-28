<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.qna.domain.Post"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.PostMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<%
PostMapper postMapper = Configuration.getMapper(PostMapper.class);

String title = request.getParameter("qna_title");
String content = request.getParameter("qna_content");
String openCheck = request.getParameter("open_check");
int postNo = Integer.parseInt(request.getParameter("qna_num"));

Post post = new Post();
post.setPostNo(postNo);
post.setTitle(title);
post.setContent(content);
post.setOpenCheck(openCheck);

postMapper.updateBoard(post);

session.setAttribute("qnaUpDB", post);
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
    <link rel="stylesheet" href="../res/css/qna.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <!--main_menu_nav-->
    <script src="../res/js/modernizr.custom.js"></script>
    <!--end main_menu_nav-->

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
            <div class="successMsg">
                <br><br><br><br><br><br><br><br><br><br><br><br>
                <h2>수정이 완료되었습니다.</h2>
                <br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
            <div class="goToList">
                <p><a href="01qnaMain.jsp" style="font-size:21px;" />목록으로</p>
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
		    <script language='javascript'>
		
		function noEvent() {
		if (event.keyCode == 116) {
		event.keyCode= 2;
		return false;
		}
		else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
		{
		return false;
		}
		}
		document.onkeydown = noEvent;
		
		</script>
</body>
</html>