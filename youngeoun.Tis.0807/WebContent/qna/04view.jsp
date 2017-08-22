<%@page import="com.sun.scenario.effect.impl.prism.PrImage"%>
<%@page import="youngun.tis.qna.domain.Post"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.PostMapper"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

PostMapper postMapper = Configuration.getMapper(PostMapper.class);

int postNo = Integer.parseInt(request.getParameter("qna_num"));
String content = postMapper.getContent(postNo);
String title = postMapper.getTitle(postNo);

Post post = new Post();
postMapper.updateCnt(postNo);


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
    <!--main_menu_nav-->
    <script src="../res/js/modernizr.custom.js"></script>
    <!--end main_menu_nav-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
	<style type="text/css">
	* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;

  -webkit-box-sizing: border-box;
 	-moz-box-sizing: border-box;
}

body{
  background-color: #dee1e3;
  font-family: "Roboto", "Tahoma", "Arial", sans-serif;,
}

.text-right{ text-align: right; }

.comments-app{
  margin: 50px auto;
  max-width: 680px;
  padding: 0 50px;
  width: 100%;
}

.comments-app h1{
  color: #191919;
  margin-bottom: 1.5em;
  text-align: center;
  text-shadow: 0 0 2px rgba(152, 152, 152, 1);
}

.comment-form{  }
.comment-form .comment-avatar{  }

.comment-form .form{ margin-left: 100px; }

.comment-form .form .form-row{ margin-bottom: 10px; }
.comment-form .form .form-row:last-child{ margin-bottom: 0; }

.comment-form .form .input{
  background-color: #fcfcfc;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
  padding: 5px 10px;
  outline: none;
  width: 100%;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form textarea.input{
  height: 100px;
  padding: 15px;
}

.comment-form .form label{
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
}

.comment-form .form input[type=submit]{
  background-color: #555f77;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #fff;
  cursor: pointer;
  display: block;
  margin-left: auto;
  outline: none;
  padding: 6px 15px;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form .input:focus,
.comment-form .form input[type=submit]:focus,
.comment-form .form input[type=submit]:hover{
  box-shadow: 0 2px 6px rgba(121, 137, 148, .55);
}

.comment-form .form.ng-submitted .input.ng-invalid,
.comment-form .form .input.ng-dirty.ng-invalid{
  box-shadow: 0 2px 6px rgba(212, 47, 47, .55) !important;
}

.comment-form .form .input.disabled {
    background-color: #E8E8E8;
}


.comments{  }

.comment-form,
.comment{
  margin-bottom: 20px;
  position: relative;
  z-index: 0;
}

.comment-form .comment-avatar,
.comment .comment-avatar{
  border: 2px solid #fff;
  border-radius: 50%;
  box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
  height: 80px;
  left: 0;
  overflow: hidden;
  position: absolute;
  top: 0;
  width: 80px;
}

.comment-form .comment-avatar img,
.comment .comment-avatar img{
  display: block;
  height: auto;
  width: 100%;
}

.comment .comment-box{
  background-color: #fcfcfc;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  margin-left: 100px;
  min-height: 60px;
  position: relative;
  padding: 15px;
}

.comment .comment-box:before,
.comment .comment-box:after{
  border-width: 10px 10px 10px 0;
  border-style: solid;
  border-color: transparent #FCFCFC;
  content: "";
  left: -10px;
  position: absolute;
  top: 20px;
}

.comment .comment-box:before{
  border-color: transparent rgba(0, 0, 0, .05);
   top: 22px;
}

.comment .comment-text{
  color: #555f77;
  font-size: 15px;
  margin-bottom: 25px;
}

.comment .comment-footer{
  color: #acb4c2;
  font-size: 13px;
}

.comment .comment-footer:after{
  content: "";
  display: table;
  clear: both;
}

.comment .comment-footer a{
  color: #acb4c2;
  text-decoration: none;

  -webkit-transition: 350ms color;
  -moz-transition: 350ms color;
  -ms-transition: 350ms color;
  -o-transition: 350ms color;
  transition: 350ms color;
}

.comment .comment-footer a:hover{
  color: #555f77;
  text-decoration: underline;
}

.comment .comment-info{
  float: left;
  width: 85%;
}

.comment .comment-author{ }
.comment .comment-date{ }

.comment .comment-date:before{
  content: "|";
  margin: 0 10px;
}

.comment-actions{
  float: left;
  text-align: right;
  width: 15%;
}
	
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
                                            <li><a href="../review/01.html">후기</a></li>
                                        </ul>
                                    </div>
                                    <div class="sub_ham" id="sub_ham_event" >
                                        <h4>이벤트</h4>
                                        <ul>
                                            <li><a href="../event/01.html">이벤트</a></li>
                                        </ul>
                                    </div>
									<div class="sub_ham">
                                        <h4>문의사항</h4>
                                        <ul>
                                            <li><a href="../qna/01.html">Q&amp;A</a></li>
                                            <li><a href="../qna/08.html">FAQ</a></li>
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
                                            <li><a href="../travel/01.html">서울</a></li>
                                            <li><a href="../travel/01.html">경기</a></li>
                                            <li><a href="../travel/01.html">제주</a></li>
                                            <li><a href="../travel/01.html">부산</a></li>
                                            <li><a href="../travel/01.html">강원도</a></li>
                                            <li><a href="../travel/01.html">충청도</a></li>
                                            <li><a href="../travel/01.html">전라도</a></li>
                                            <li><a href="../travel/01.html">경상도</a></li>
                                        </ul>
                                    </div>
                                    <div class="asia" style = "width : 200px;">
                                        <h4>아시아</h4>
                                        <div class="asia_l">
                                        <ul>
                                            <li><a href="../travel/01.html">네팔</a></li>
                                            <li><a href="../travel/01.html">대만</a></li>
                                            <li><a href="../travel/01.html">몰디브</a></li>
                                            <li><a href="../travel/01.html">말레이시아</a></li>
                                            <li><a href="../travel/01.html">발리</a></li>
                                            <li><a href="../travel/01.html">베트남</a></li>
                                            <li><a href="../travel/01.html">부탄</a></li>
                                            <li><a href="../travel/01.html">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="../travel/01.html">일본</a></li>
                                            <li><a href="../travel/01.html">인도</a></li>
                                            <li><a href="../travel/01.html">인도네시아</a></li>
                                            <li><a href="../travel/01.html">중국</a></li>
                                            <li><a href="../travel/01.html">캄보디아</a></li>
                                            <li><a href="../travel/01.html">태국</a></li>
                                            <li><a href="../travel/01.html">필리핀</a></li>
                                            <li><a href="../travel/01.html">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="../travel/01.html">미국</a></li>
                                            <li><a href="../travel/01.html">하와이</a></li>
                                            <li><a href="../travel/01.html">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="../travel/01.html">그리스</a></li>
                                            <li><a href="../travel/01.html">노르웨이</a></li>
                                            <li><a href="../travel/01.html">네덜란드</a></li>
                                            <li><a href="../travel/01.html">독일</a></li>
                                            <li><a href="../travel/01.html">덴마크</a></li>
                                            <li><a href="../travel/01.html">록셈부르크</a></li>
                                            <li><a href="../travel/01.html">루마니아</a></li>
                                            <li><a href="../travel/01.html">몰타</a></li>
                                            <li><a href="../travel/01.html">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="../travel/01.html">스위스</a></li>
                                            <li><a href="../travel/01.html">스웨덴</a></li>
                                            <li><a href="../travel/01.html">스페인</a></li>
                                            <li><a href="../travel/01.html">슬로바키아</a></li>
                                            <li><a href="../travel/01.html">아이슬란드</a></li>
                                            <li><a href="../travel/01.html">아일랜드</a></li>
                                            <li><a href="../travel/01.html">영국</a></li>
                                            <li><a href="../travel/01.html">이탈리아</a></li>
                                            <li><a href="../travel/01.html">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="../travel/01.html">체코</a></li>
                                            <li><a href="../travel/01.html">터키</a></li>
                                            <li><a href="../travel/01.html">러시아</a></li>
                                            <li><a href="../travel/01.html">에스토니아</a></li>
                                            <li><a href="../travel/01.html">크로아티아</a></li>
                                            <li><a href="../travel/01.html">헝가리</a></li>
                                            <li><a href="../travel/01.html">프랑스</a></li>
                                            <li><a href="../travel/01.html">폴란드</a></li>
                                            <li><a href="../travel/01.html">포르투칼</a></li>
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
			                            <h4><a href="../review/01.html">후기</a></h4>
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
			                            <h4><a href="../event/01.html">이벤트</a></h4>
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
			                            <h4><a href="../qna/01.html">Q&amp;A</a></h4>
		                           	</div>
		                           	<div class="sub_comunity" style="display:block; margin-top: -25px; margin-right: 20px;">
			                            <h4><a href="../qna/08.html">FAQ</a></h4>
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
            <div class="board_mod">
                <div class="board_content">
                    <div class="board_title">
                        <h2><%=title %></h2>
                    </div>
                    <script>
                        function aler() {
                            prompt("정말이에요??");
                        }
                    </script>
                    <div class="board_content">
                        <p><%= content %></p>
                      
                    </div>
                    <div class="board_buttons">
                        <a href="01qnaMain.jsp"><button type="button">목록으로</button></a>
                        <a href="05modified.jsp?qna_num=<%=postNo%>"><button type="button">수정</button></a>
                        <a href="07delSucssess.jsp?qna_num=<%=postNo%>" onclick="aler()"><button type="button">삭제</button></a>
                    </div>
                </div>
				                <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">
		
				  
				  <!-- From -->
				  <div class="comment-form">
				    <!-- Comment Avatar -->
				    <div class="comment-avatar">
				      <img src="http://lorempixel.com/200/200/people">
				    </div>
				
				    <form class="form" name="form" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate
				    action="04view.jsp?qna_num=<%=postNo%>">
				      <div class="form-row">
				        <textarea
				                  class="input"
				                  ng-model="cmntCtrl.comment.text"
				                  placeholder="Add comment..."
				                  required></textarea>
				      </div>
				
				      <div class="form-row">
				        <input
				               class="input"
				               ng-class="{ disabled: cmntCtrl.comment.anonymous }"
				               ng-disabled="cmntCtrl.comment.anonymous"
				               ng-model="cmntCtrl.comment.author"
				               ng-required="!cmntCtrl.comment.anonymous"
				               placeholder="Email"
				               type="email">
				      </div>
				
				      <div class="form-row text-right">
				        <input
				               id="comment-anonymous"
				               ng-change="cmntCtrl.anonymousChanged()"
				               ng-model="cmntCtrl.comment.anonymous"
				               type="checkbox">
				        <label for="comment-anonymous">Anonymous</label>
				      </div>
				
				      <div class="form-row">
				        <input type="submit" value="Add Comment">
				      </div>
				    </form>
				  </div>
				
				  <!-- Comments List -->
				  <div class="comments">
				    <!-- Comment -->
				    <div class="comment" ng-repeat="comment in cmntCtrl.comments | orderBy: '-date'">
				      <!-- Comment Avatar -->
				      <div class="comment-avatar">
				        <img ng-src="{{ comment.avatarSrc }}">
				      </div>
				
				      <!-- Comment Box -->
				      <div class="comment-box">
				        <div class="comment-text">{{ comment.text }}</div>
				        <div class="comment-footer">
				          <div class="comment-info">
				            <span class="comment-author">
				              <em ng-if="comment.anonymous">Anonymous</em>
				              <a ng-if="!comment.anonymous" href="{{ comment.author }}">{{ comment.author }}</a>
				            </span>
				            <span class="comment-date">{{ comment.date | date: 'medium' }}</span>
				          </div>
				
				          <div class="comment-actions">
				            <a href="#">Reply</a>
				          </div>
				        </div>
				      </div>
				    </div>
				  </div>
				</div>
				<script type="text/javascript">
				(function(){
					  'use strict';
					  
					  angular
					    .module('commentsApp', [])
					    .controller('CommentsController', CommentsController);
					  
					  // Inject $scope dependency.
					  CommentsController.$inject = ['$scope'];
					  
					  // Declare CommentsController.
					  function CommentsController($scope) {
					    var vm = this;
					    
					    // Current comment.
					    vm.comment = {};

					    // Array where comments will be.
					    vm.comments = [];

					    // Fires when form is submited.
					    vm.addComment = function() {
					      // Fixed img.
					      vm.comment.avatarSrc = 'http://lorempixel.com/200/200/people/';

					      // Add current date to the comment.
					      vm.comment.date = Date.now();

					      vm.comments.push( vm.comment );
					      vm.comment = {};

					      // Reset clases of the form after submit.
					      $scope.form.$setPristine();
					    }

					    // Fires when the comment change the anonymous state.
					    vm.anonymousChanged = function(){
					      if(vm.comment.anonymous)
					        vm.comment.author = "";
					    }
					  }

					})();
				
				</script>
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