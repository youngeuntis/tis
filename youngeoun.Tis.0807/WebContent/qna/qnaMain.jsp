<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
    <link rel="stylesheet" href="../res/faq/css/styleMain.css">
    <script type="text/javascript" src="../res/faq/js/custom.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script type="text/javascript">
        function move(url){
            location.href=url;
        }
    </script>
</head>

<body>
    <header>
        <div class="Center">
            <div class="site-logo">
                <img src="../res/img/DYTR.png" style="display:inline-block; width:15%;height:auto; margin-top:-15px;">
                <h1><a href="#">Design Your Trip</a></h1>
            </div>
            <div id="mobile_sec">
                <div class="mobile"><i class="fa fa-bars"></i><i class="fa fa-times"></i></div>
                <div class="menumobile">
                    <nav class="Navigation">
                        <ul>
                            <li class="active">
                                <a href="#home"><i id="ham" class="fa fa-bars" aria-hidden="true"></i></a>
                                <span class="menu-item-bg"></span>
                                <ul class="active_ul">
                                    <li>menu1</li>
                                    <li>menu2</li>
                                    <li>menu3</li>
                                    <li>menu4</li>
                                    <li>menu5</li>
                                </ul>
                            </li>
                            <li>
                                <a href="#about">Places</a>
                                <span class="menu-item-bg"></span>

                            </li>
                            <li>
                                <a href="#services">Community</a>
                                <span class="menu-item-bg"></span>

                            </li>
                            <li>
                                <a href="#pricing">Event</a>
                                <span class="menu-item-bg"></span>

                            </li>
                            <li>
                                <a href="#contact">Contact</a>
                                <span class="menu-item-bg"></span>

                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="right_nav">
            <div class="right_nav_join"><a>회원가입</a></div>
            <div class="right_nav_login"><a>로그인</a></div>
            <div class="clear"></div>
            <form method="get">
                <div class="right_nav_search">
                    <div>
                    <input id="nav_search" type="search" name="search_keyword" placeholder="여행지를 검색" maxlength="15">
                    </div>
                    <div>                   
                        <button id="search_button" type="submit"><!--검색--></button>
                    </div>
                </div>
            </form>
        </div>
    </header>

    <div class="slideshow-container">

        <div class="mySlides fade" style="display:block;">
            <img src="../res/img/faq1.jpg" style="width:100%; ">
        </div>
    </div>

    <section>
	<!-- 여기부터  -->
	<div class="bo">
		<div class="board">
		<table class="boardTable" width="1000" height="800" bgcolor="white" border-style="outset">
			<colgroup>
				<col width="50"/>
				<col width="500"/>
				<col width="100"/>
				<col width="70"/>
			</colgroup>
			<thead>
				<tr>
					<th>번 호</th>
					<th>제 목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조 회</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td align="center">10</td>
					<td><a href="view.html">게시판 글입니다. 10</a></td>
					<td align="center">영빈</td>
					<td align="center">2017/07/27</td>
					<td align="center">123</td>
				</tr>
		</table>
		</div>
		<div class=boardButton>
        <input type=button value="글쓰기"  onclick="move('insert.html');">
		<input type=button value="내 글">
		<input type=button value="내 댓글">
		</div>
        <br><br><br><br><br><br><br><br>
        <div id="page_index">
				<ul>
				    <li><a href="#">&laquo;prev</a></li>
				    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">next&raquo;</a></li>
                </ul>   
        </div>
	</div>
        
    </section>
	<!--<div class="main_player">
    <div class="player_overlay"></div>
    <iframe src="https://www.youtube.com/embed/p2vI7IEvGJg?version=2&amp;autoplay=1&amp;loop=1&amp;vq=hd1080&amp;playlist=p2vI7IEvGJg" frameborder="0" allowfullscreen="" class="video"></iframe>
	</div> -->
 
	<footer>                                                                                             
		<div class="footer_nav"> 
		<p>
			<ul>
				<li><a href="#">회사소개</a></li>
				<li><a href="#">제휴제안</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</p>
		<p> copyright  DESIGN YOUR TRIP</p>
		</div>
	</footer>
</body>
</html>
