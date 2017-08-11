<%@page import="youngun.tis.travel.blog.Blog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        <div class="picture">
			<div class="option_box">
				<select id="sl" onchange="zzz()">
				    <option value="hide">-- Continent --</option>
				    <option value="Korea" rel="icon-temperature">대한민국</option>
				    <option value="Europe">유럽</option>
				    <option value="America">미/대양주</option>
				    <option value="Asia">아시아</option>
				</select> 
				
				<select id="country_select">
				    <option value="hide">-- Nation --</option>
				</select>
				
				<select id="country">
				    <option value="hide">-- Area --</option>
				    <option value="2010">2010</option>
				    <option value="2011">2011</option>
				    <option value="2012">2012</option>
				    <option value="2013">2013</option>
				    <option value="2014">2014</option>
				    <option value="2015">2015</option>
				</select>
				<script>
                    
                    function zzz(){
                         var firstSelect = document.getElementById("sl").value;
                        alert(firstSelect);
                        /*if(firstSelect=="a") document.getElementById("country_select").innerHTML
                        = '<option value="hide">-- Country --</option>'
                        + '<option value="서울">서울</option>'
                        + '<option value="경기">경기</option>'
                        + '<option value="제주">제주</option>'
                        + '<option value="부산">부산</option>'
                        + '<option value="강원도">강원도</option>'
                        + '<option value="충청도">충청도</option>'
                        + '<option value="경상도">경상도</option>'
                        + '<option value="전라도">전라도</option>';*/
                    }
                </script>
				<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	    		<script src="../res/js/indexOption.js"></script>
                
			</div>
			
    		
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
				    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
				        <!-- Loading Screen -->
				        <div data-u="loading" class="jssorl-004-double-tail-spin" style="position:absolute;top:0px;left:0px;text-align:center;background-color:rgba(0,0,0,0.7);">
				            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/double-tail-spin.svg" />
				        </div>
				        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
				            <div>
				                <img data-u="image" src="../res/img/travelImg/spain.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/spain.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/g.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/g.jpg" />
				            </div>
				            <!-- <div>
				                <img data-u="image" src="../res/img/travelImg/p.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/p.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/pr.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/pr.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/spain.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/spain.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/g.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/g.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/p.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/p.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/pr.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/pr.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/g.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/g.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/p.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/p.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/pr.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/pr.jpg" />
				            </div>
				            <div>
				                <img data-u="image" src="../res/img/travelImg/spain.jpg" />
				                <img data-u="thumb" src="../res/img/travelImg/spain.jpg" />
				            </div> -->
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
                    <a href="02BloglMain.html" class="action-button shadow animate blue">수정</a>
                    <button onclick="aler()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">삭제</button>
                </div>
                <%
                	Blog blog = (Blog)session.getAttribute("BlogDB");
                	
                %>
                <div class="content_title">
                    <h2><%=blog.getBlogTitle() %></h2>
                </div>
                
                <script>
                    function aler(){
                        var answer = confirm("확인을 누르시면 데이터가 삭제됩니다.삭제를 원하십니까?")
                        if(answer) location.replace("01TravelMain.html");
                    }
                </script>
                <div class="content_content">
                   <%=blog.getBlogContent() %>
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
	
</body>

</html>

