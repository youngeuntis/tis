<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.travel.blog.domain.Wish"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDaoImpl"%>
<%@page import="youngun.tis.travel.blog.service.SearchService"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="youngun.tis.travel.blog.mapper.TravelMapper"%>
<%@page import="youngun.tis.travel.blog.domain.Country"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.travel.blog.mapper.BlogMapper"%>
<%@page import="youngun.tis.travel.blog.domain.Blog"%>
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
        <header>
            <div class="Center">
                <div class="site-logo">
                    <img src="../res/img/logo/DYTR.png" style="display:inline-block; width:15%;height:auto; margin-top:-15px;">
                    <h1><a href="../main.jsp">Design Your Trip</a></h1>
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
                                            <li><a href="../review/01reviewMain.jsp">후기</a></li>
                                        </ul>
                                    </div>
                                    <div class="sub_ham" id="sub_ham_event" >
                                        <h4>이벤트</h4>
                                        <ul>
                                            <li><a href="../event/01event.jsp">이벤트</a></li>
                                        </ul>
                                    </div>
									<div class="sub_ham">
                                        <h4>문의사항</h4>
                                        <ul>
                                            <li><a href="../qna/01qnaMain.jsp">Q&amp;A</a></li>
                                            <li><a href="../qna/08faqlist.jsp">FAQ</a></li>
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
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=서울">서울</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=경기">경기</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=제주">제주</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=부산">부산</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=강원도">강원도</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=충청도">충청도</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=전라도">전라도</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=대한민국&nation=경상도">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=네팔">네팔</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=대만">대만</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=몰디브">몰디브</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=말레이시아">말레이시아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=발리">발리</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=베트남">베트남</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=부탄">부탄</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=싱가폴">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=일본">일본</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=인도">인도</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=인도네시아">인도네시아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=중국">중국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=캄보디아">캄보디아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=태국">태국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=필리핀">필리핀</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=아시아&nation=홍콩">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=미대양주&nation=미국">미국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=미대양주&nation=하와이">하와이</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=미대양주&nation=호주">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=그리스">그리스</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=노르웨이">노르웨이</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=네덜란드">네덜란드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=독일">독일</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=덴마크">덴마크</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=룩셈부르크">록셈부르크</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=루마니아">루마니아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=몰타">몰타</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=벨기에">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=스위스">스위스</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=스웨덴">스웨덴</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=스페인">스페인</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=슬로바키아">슬로바키아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=아이슬란드">아이슬란드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=아일랜드">아일랜드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=영국">영국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=이탈리아">이탈리아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=오스트리아">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=체코">체코</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=터키">터키</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=러시아">러시아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=에스토니아">에스토니아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=크로아티아">크로아티아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=헝가리">헝가리</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=프랑스">프랑스</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=폴란드">폴란드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?continent=유럽&nation=포르투칼">포르투칼</a></li>
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
			                            <h4><a href="../review/01reviewMain.jsp">후기</a></h4>
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
			                            <h4><a href="../event/01event.jsp">이벤트</a></h4>
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
			                            <h4><a href="../qna/01qnaMain.jsp">Q&amp;A</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="../qna/08faqlist.jsp">FAQ</a></h4>
		                           	</div>
	                           	</div>
                           	</div>
                        </li>
                    </ul>
                </div>

                <div class="right_nav">
					<!-- signup -->
					<%if(dto == null){ %>
					<div class="right_nav_join">
						<a href="user/signup/signup.jsp">회원가입</a>
					</div>
					<%} %>
					<!-- end join -->

					<!-- main_login -->
					<div id="login">
						<section class="modal signup badge-overlay-signin">
							<a class="btn-close badge-overlay-close" id="closepopup" href="#">✖</a>
							<section id="signup">
								<h2>Login</h2>
								<form id="login-email" class="badge-login-form" action="user/login/loginoutControl.jsp" method="POST">
									<input type="hidden" name="action" value="login">
									<input type="hidden" id="jsid-login-form-next-url" name="next" value=""> 
									<input type="hidden" name="location" value="1">
									<p class="lead">Log in with your id password</p>
									<div class="field">
										<label for="jsid-login-email-name">ID</label> <input
											id="jsid-login-email-name" type="text" name="login_user_id"
											value="" autofocus="autofocus">
									</div>
									<div class="field">
										<label for="login-email-password">PASSWORD</label> <input
											id="login-email-password" type="password" name="login_user_pw"
											value="">
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

					<%if(dto != null){ %>

					<div class="demo">
						<a id="my" class="my" href="mypage/myPage.jsp"><label>마이페이지</label></a>
						<a id="launch" class="fbbutton"
							href="user/login/loginoutControl.jsp?action=logout"><label>로그아웃</label>
						</a>
						<%if(dto.getUserId().equals("admin")){ %>
						<a id="launch" class="fbbutton"
							href="user/login/loginoutControl.jsp?action=logout"><label>관리자페이지</label>
						</a>
						<%} %>
					</div>
					<%}else{ %>
					<div class="demo">
						<a id="launch" class="fbbutton" href="#">로그인</a>
					</div>
					<%} %>
					<script
						src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

					<script src="res/js/index.js"></script>
					<div class="clear"></div>

					<!-- main_search -->
					<div class="right_nav_search">
						<form method="get">
							<div>
								<input id="nav_search" type="search" name="search_keyword"
									placeholder="여행지를 검색" maxlength="255">
							</div>
							<div>
								<button id="search_button" type="submit">
									<!--검색-->
								</button>
							</div>
						</form>
					</div>
					<!--end .right_nav_search -->
				</div>
            </div><!--end .Center-->
        </header>

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
		
		
		
        <main>
        <div class="travel_container">
				<!-- #region Jssor Slider Begin -->
				    <!-- Generator: Jssor Slider Maker -->
				    <!-- Source: https://www.jssor.com -->
				    <script src="../res/js/jquery-1.11.3.min.js" type="text/javascript"></script>
				    <script src="../res/js/jssor.slider-25.2.1.min.js" type="text/javascript"></script>
				    <script type="text/javascript">
				        jQuery(document).ready(function ($) {
				
				            var jssor_1_SlideshowTransitions = [
				              {$Duration:1200,$Zoom:1,$Easing:{$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
				              {$Duration:1000,$Zoom:11,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
				              {$Duration:1200,$Zoom:1,$Rotate:1,$During:{$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
				              {$Duration:1000,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
				              {$Duration:1200,x:0.5,$Cols:2,$Zoom:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
				              {$Duration:1200,x:4,$Cols:2,$Zoom:11,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
				              {$Duration:1200,x:0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:$Jease$.$Swing,$Opacity:2,$Round:{$Rotate:0.5}},
				              {$Duration:1000,x:-4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
				              {$Duration:1200,x:-0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:$Jease$.$Swing,$Opacity:2,$Round:{$Rotate:0.5}},
				              {$Duration:1000,x:4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
				              {$Duration:1200,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
				              {$Duration:1000,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Top:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.7}},
				              {$Duration:1200,x:-4,y:2,$Rows:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Row:28},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
				              {$Duration:1200,x:1,y:2,$Cols:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:19},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.8}}
				            ];
				
				            var jssor_1_options = {
				              $AutoPlay: 1,
				              $SlideshowOptions: {
				                $Class: $JssorSlideshowRunner$,
				                $Transitions: jssor_1_SlideshowTransitions,
				                $TransitionsOrder: 1
				              },
				              $BulletNavigatorOptions: {
				                $Class: $JssorBulletNavigator$
				              },
				              $ThumbnailNavigatorOptions: {
				                $Class: $JssorThumbnailNavigator$,
				                $Cols: 4,
				                $Orientation: 2,
				                $Align: 150
				              }
				            };
				
				            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
				
				            /*#region responsive code begin*/
				            function ScaleSlider() {
				                var containerElement = jssor_1_slider.$Elmt.parentNode;
				                var containerWidth = containerElement.clientWidth;
				                if (containerWidth) {
				                    var MAX_WIDTH = 1200;
				
				                    var expectedWidth = containerWidth;
				
				                    if (MAX_WIDTH) {
				                        expectedWidth = Math.min(MAX_WIDTH, expectedWidth);
				                    }
				
				                    jssor_1_slider.$ScaleWidth(expectedWidth);
				                }
				                else {
				                    window.setTimeout(ScaleSlider, 30);
				                }
				            }
				
				            ScaleSlider();
				            $(window).bind("load", ScaleSlider);
				            $(window).bind("resize", ScaleSlider);
				            $(window).bind("orientationchange", ScaleSlider);
				            /*#endregion responsive code end*/
				        });
				    </script>
				    <style>
				        /* jssor slider loading skin double-tail-spin css */
				
				        .jssorl-004-double-tail-spin img {
				            animation-name: jssorl-004-double-tail-spin;
				            animation-duration: 1.2s;
				            animation-iteration-count: infinite;
				            animation-timing-function: linear;
				        }
				
				        @keyframes jssorl-004-double-tail-spin {
				            from {
				                transform: rotate(0deg);
				            }
				
				            to {
				                transform: rotate(360deg);
				            }
				        }
				
				
				        .jssorb056 .i {position:absolute;cursor:pointer;}
				        .jssorb056 .i .b {fill:#000;fill-opacity:0.3;stroke:#fff;stroke-width:400;stroke-miterlimit:10;stroke-opacity:0.7;}
				        .jssorb056 .i:hover .b {fill-opacity:.7;}
				        .jssorb056 .iav .b {fill-opacity: 1;}
				        .jssorb056 .i.idn {opacity:.3;}
				
				        .jssort051 .p {position:absolute;top:0;left:0;background-color:#000;}
				        .jssort051 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.45;}
				        .jssort051 .p:hover .t{opacity:.8;}
				        .jssort051 .pav .t, .jssort051 .pdn .t, .jssort051 .p:hover.pdn .t{opacity:1;}
				    </style>
				    <%
				    BlogDao blogDao = new BlogDaoImpl();
				    SearchService service = new SearchService(blogDao);
				    
              		String blogNum = request.getParameter("blognum");
              		List<Blog> blogs = blogDao.getBlogListNoPara();
              		Blog selectBlog = service.searchBlog(blogs, blogNum);
  					List<String> imgStr = new ArrayList<>();
              		
  					if(selectBlog.getImg() != null){
	              		StringTokenizer sh = new StringTokenizer(selectBlog.getImg(), ",");
	            		while(sh.hasMoreTokens()){
	            			imgStr.add(sh.nextElement().toString());
	            		}
  					}
                %>
                
				    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
				        <!-- Loading Screen -->
				        <div data-u="loading" class="jssorl-004-double-tail-spin" style="position:absolute;top:0px;left:0px;text-align:center;background-color:rgba(0,0,0,0.7);">
				            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/double-tail-spin.svg" />
				        </div>
				        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
				<%
						for(int i=0; i<imgStr.size(); i++){
				%>	          
							<div>
								<img data-u="image" src="<%=imgStr.get(i) %>" />
				                <img data-u="thumb" src="<%=imgStr.get(i) %>" />
							</div>
				<% 
						}
				%>
				   
				            <a data-u="any" href="https://www.jssor.com" style="display:none">bootstrap slider</a>
				        </div>
				        <!-- Thumbnail Navigator -->
				        <div data-u="thumbnavigator" class="jssort051" style="position:absolute;left:0px;top:0px;width:200px;height:380px;" data-autocenter="2" data-scale-left="0.75">
				            <div data-u="slides">
				                <div data-u="prototype" class="p" style="width:200px;height:100px;">
				                    <div data-u="thumbnailtemplate" class="t"></div>
				                </div>
				            </div>
				        </div>
				        <!-- Bullet Navigator -->
				        <div data-u="navigator" class="jssorb056" style="position:absolute;bottom:12px;right:12px;" data-scale="0.5">
				            <div data-u="prototype" class="i" style="width:16px;height:16px;">
				                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
				                    <rect class="b" x="2200" y="2200" width="11600" height="11600"></rect>
				                </svg>
				            </div>
				        </div>
				    </div>
				    <!-- #endregion Jssor Slider End -->
            <div class="travel_content">
                
                <div class="content_buttons">
                    <a href="02BlogMain.jsp?blogNum=<%=selectBlog.getBlogNum() %>" class="action-button shadow animate blue">수정</a>
                    <button onclick="delBlog()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">삭제</button>
                    
                </div>
           <%
           		selectBlog.setHits(selectBlog.getHits()+1);
           		blogDao.updateHits(selectBlog);
           		session.setAttribute("Blog", selectBlog);
           %>     
           <div class="content_title">
                    <h2><%=selectBlog.getBlogTitle() %></h2>
                </div>
                
          <%
          		int memberNum = 2;
          		if(service.configureWish(memberNum, Integer.parseInt(blogNum))==null){
          %>
          		<button onclick="addWish()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">즐겨찾기 추가♥</button>
   		  <% 
        		}else{
          %>
          		<button onclick="delWish()" class="action-button shadow animate blue" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">즐겨찾기 삭제</button>
          <%
          			
        		}
          %>
                <div class="content_content">
                	
                   <%=selectBlog.getBlogContent() %>
                </div>
            </div>
        </div>
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
	<script>
		var isOnOff = false;
        
		function delBlog(){
            var answer = confirm("확인을 누르시면 데이터가 삭제됩니다.삭제를 원하십니까?")
            if(answer==true){
            	location.replace("01TravelMain.jsp?del=y");
            }
            return false;
        }
        function addWish(){
        	alert('즐겨찾기에 추가되었습니다.');
        	isOnOff = true;
        	location.replace("01TravelMain.jsp?wish="+isOnOff);
        }
        function delWish(){
        	alert('즐겨찾기에 삭제되었습니다.');
        	isOnOff = false;
        	location.replace("01TravelMain.jsp?wish="+isOnOff);
        }
    </script>
</body>

</html>

