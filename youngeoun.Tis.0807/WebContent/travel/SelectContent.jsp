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
    <link rel="stylesheet" href="../res/travel/css/styleMainn.css">
    <link rel="stylesheet" href="../res/travel/css/travelMain.css">
    <link rel="stylesheet" href="../res/travel/css/SelectContent.css">
    <script type="text/javascript" src="../res/travel/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/travel/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <!--이미지 슬라이더-->
    <link href="../res/travel/themes/5/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="../res/travel/themes/5/js-image-slider.js" type="text/javascript"></script>
    <!-- <link href="generic.css" rel="stylesheet" type="text/css" /> -->
    
	
</head>

<body>

    <div id="fullweb">
        <header>
            <div class="Center">
                <div class="site-logo">
                    <img src="../res/travel/img/DYTR.png" style="display:inline-block; width:15%;height:auto; margin-top:-15px;">
                    <h1><a href="../main.jsp">Design Your Trip</a></h1>
                </div>
                <div id="cbp-hrmenu" class="cbp-hrmenu">
                    <ul>
                        <li>
							<!-- 햄버거 -->
                            <a href="#"><i class="fa fa-bars"></i></a>
                            <div class="cbp-hrsub" style="width:600px;">
                                <div class="cbp-hrsub-inner" style="width:600px;">
                                    
									<div class="sub_ham">
                                        <h4>커뮤니티</h4>
                                        <ul>
                                            <li><a href="#">후기</a></li>
                                            <li><a href="#">Q&amp;A</a></li>
                                            <li><a href="#">FAQ</a></li>
                                        </ul>
                                    </div>
                                    <div class="sub_ham" id="sub_ham_event" >
                                        <h4>이벤트</h4>
                                        <ul>
                                            <li><a href="#">이벤트</a></li>
                                        </ul>
                                    </div>
									<div class="sub_ham">
                                        <h4>문의사항</h4>
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
                                            <li><a href="#">서울</a></li>
                                            <li><a href="#">경기</a></li>
                                            <li><a href="#">제주</a></li>
                                            <li><a href="#">부산</a></li>
                                            <li><a href="#">강원도</a></li>
                                            <li><a href="#">충청도</a></li>
                                            <li><a href="#">전라도</a></li>
                                            <li><a href="#">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="#">네팔</a></li>
                                            <li><a href="#">대만</a></li>
                                            <li><a href="#">몰디브</a></li>
                                            <li><a href="#">말레이시아</a></li>
                                            <li><a href="#">발리</a></li>
                                            <li><a href="#">베트남</a></li>
                                            <li><a href="#">부탄</a></li>
                                            <li><a href="#">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="#">일본</a></li>
                                            <li><a href="#">인도</a></li>
                                            <li><a href="#">인도네시아</a></li>
                                            <li><a href="#">중국</a></li>
                                            <li><a href="#">캄보디아</a></li>
                                            <li><a href="#">태국</a></li>
                                            <li><a href="#">필리핀</a></li>
                                            <li><a href="#">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="#">미국</a></li>
                                            <li><a href="#">하와이</a></li>
                                            <li><a href="#">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="#">그리스</a></li>
                                            <li><a href="#">노르웨이</a></li>
                                            <li><a href="#">네덜란드</a></li>
                                            <li><a href="#">독일</a></li>
                                            <li><a href="#">덴마크</a></li>
                                            <li><a href="#">록셈부르크</a></li>
                                            <li><a href="#">루마니아</a></li>
                                            <li><a href="#">몰타</a></li>
                                            <li><a href="#">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="#">스위스</a></li>
                                            <li><a href="#">스웨덴</a></li>
                                            <li><a href="#">스페인</a></li>
                                            <li><a href="#">슬로바키아</a></li>
                                            <li><a href="#">아이슬란드</a></li>
                                            <li><a href="#">아일랜드</a></li>
                                            <li><a href="#">영국</a></li>
                                            <li><a href="#">이탈리아</a></li>
                                            <li><a href="#">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="#">체코</a></li>
                                            <li><a href="#">터키</a></li>
                                            <li><a href="#">러시아</a></li>
                                            <li><a href="#">에스토니아</a></li>
                                            <li><a href="#">크로아티아</a></li>
                                            <li><a href="#">헝가리</a></li>
                                            <li><a href="#">프랑스</a></li>
                                            <li><a href="#">폴란드</a></li>
                                            <li><a href="#">포르투칼</a></li>
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
		                            <div class="sub_comunity" style="position:relative; margin-left:50px; margin-right : 20px; display:block; float:left;">
			                            <h4 style="margin-top:4px;">Q&A</h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4>FAQ</h4>
		                           	</div>
                                    <div class="sub_comunity" style="display:block; margin-top: -25px;">
			                            <h4>후기</h4>
		                           	</div>
	                           	</div>
                           	</div>            
                        </li>
                        <li>
                            <a href="#">이벤트</a>
                        </li>
                        <li>
                            <a href="#">문의사항</a>
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
															<p class="lead">Log in with your email address </p>
											<div class="field">
												<label for="jsid-login-email-name">Email</label>
												<input id="jsid-login-email-name" type="text" name="username" value="" autofocus="autofocus">
											</div>
											<div class="field">
												<label for="login-email-password">Password</label>
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

								<script src="../res/travel/js/index.js"></script>

                    
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
	    		<script src="../res/travel/js/indexOption.js"></script>
                
			</div>
			
    		
            <div class="mySlides fade" style="display:block;">
                <img src="../res/travel/img/trip/p.jpg" style="width:100%; ">
            </div>

            <div class="mySlides fade">
                <img src="../res/travel/img/trip/m.jpg" style="width:100%; ">
            </div>

            <div class="mySlides fade">
                <img src="../res/travel/img/trip/g.jpg" style="width:100%; ">
            </div>

            <div class="mySlides fade">
                <img src="../res/travel/img/trip/pr.jpg" style="width:100%;">
            </div>

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

        </div>
		
		
		<!-- 메인 작업부분 -->
		
		
		
        <main>
        <div class="travel_container">
			<div class="content_pictures">
                <div id="sliderFrame">
                    <div id="slider">
                        <!--<a>
                            <img src="images/image-slider-1.jpg"/>
                        </a>-->
                        <a class="lazyImage" href="../res/travel/images/spain.jpg" />
                        <a class="lazyImage" href="../res/travel/images/spain2.jpg" />
                        <a class="lazyImage" href="../res/travel/images/p.jpg" />
                        <a class="lazyImage" href="../res/travel/images/pr.jpg"/>
                        <a class="lazyImage" href="../res/travel/images/m.jpg"/>
                        <a class="lazyImage" href="../res/travel/images/g.jpg"/>
                        <a class="lazyImage" href="../res/travel/images/p.jpg"/>
                        <a class="lazyImage" href="../res/travel/images/pr.jpg"/>
                        
                    </div>
                    <div style="display: none;">
                        <div id="htmlcaption3">
                            <em>HTML</em> caption. Back to <a href="http://www.menucool.com/">Menucool</a>.
                        </div>
                        <div id="htmlcaption5">
                            Smart Lazy Loading Image
                        </div>
                    </div>

                <!--thumbnails-->
                    <div id="thumbs">
                        <div class="thumb"><img src="../res/travel/images/spain_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/spain2_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/p_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/pr_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/m_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/g_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/p_thumb.jpg" /></div>
                        <div class="thumb"><img src="../res/travel/images/pr_thumb.jpg" /></div>
                    </div>
                </div>
            </div>
            <div class="travel_content">
                
                <div class="content_buttons">
                    <a href="BlogMain.jsp" class="action-button shadow animate blue">수정</a>
                    <a href="#" onclick="aler()" class="action-button shadow animate red">삭제</a>
                </div>
                
                <div class="content_title">
                    <h2>정말 즐거운 스페인여행</h2>
                </div>
                
                <script type="text/javascript">
                	function aler(){
                		var answer = confirm("작성된 내용이 취소됩니다. 괜찮으십니까?");
                		if(answer) location.replace("TravelMain.jsp");
                	}
                </script>
                <div class="content_content">
                    <p>7박 8일간의 스페인여행은 정말 꿀이였다.</p>
                    <p>꽃보다 할배를 보고서는 스페인에 가고 싶어졌다.</p>
                    <p>아래 사진으로나마 스페인 아름다움을 느껴보세요!</p>
                    <a href="../res/travel/img/trip/spain.jpg"><img src="../res/travel/img/trip/spain.jpg"></a>
                    <br>
                    <a href="../res/travel/img/trip/spain2.jpg"><img src="../res/travel/img/trip/spain2.jpg"></a>
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
    <script src="../res/travel/js/cbpHorizontalMenu.min.js"></script>
    <script>$(function() {cbpHorizontalMenu.init();});</script>

    <!--main_login-->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script src="../res/travel/js/index.js"></script>
	
</body>

</html>
