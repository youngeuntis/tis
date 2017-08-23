<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.travel.blog.service.SearchService"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDaoImpl"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDao"%>
<%@page import="youngun.tis.travel.blog.domain.Blog"%>
<%@page import="youngun.tis.travel.blog.dao.TravelDao"%>
<%@page import="youngun.tis.travel.blog.domain.Country"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.travel.blog.mapper.TravelMapper"%>
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
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <style>
    .editorSelect{
    	background-color: #5c9cd8;
    	margin-bottom : 5px;
    	font-size : 15px;
    	height : 25px;
    	color : #fff;
    }
    </style>
	
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
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=네팔">네팔</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=대만">대만</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=몰디브">몰디브</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=말레이시아">말레이시아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=발리">발리</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=베트남">베트남</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=부탄">부탄</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=싱가폴">싱가폴</a></li>
                                        </ul>
                                        </div>
                                        <div class="asia_r">
                                            <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=일본">일본</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=인도">인도</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=인도네시아">인도네시아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=중국">중국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=캄보디아">캄보디아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=태국">태국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=필리핀">필리핀</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=홍콩">홍콩</a></li>
                                        </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <h4>미/대양주</h4>
                                        <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=미국">미국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=하와이">하와이</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=호주">호주</a></li>
                                        </ul>
                                    </div>
                                    <div class="eu" style="width:300px">
                                        <h4>유럽</h4>
                                        <div class="eu_l">
                                        <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=그리스">그리스</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=노르웨이">노르웨이</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=네덜란드">네덜란드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=독일">독일</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=덴마크">덴마크</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=룩셈부르크">록셈부르크</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=루마니아">루마니아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=몰타">몰타</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=벨기에">벨기에</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_c">
                                            <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=스위스">스위스</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=스웨덴">스웨덴</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=스페인">스페인</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=슬로바키아">슬로바키아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=아이슬란드">아이슬란드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=아일랜드">아일랜드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=영국">영국</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=이탈리아">이탈리아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=오스트리아">오스트리아</a></li>
                                        </ul>
                                        </div>
                                        <div class="eu_r">
                                            <ul>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=체코">체코</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=터키">터키</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=러시아">러시아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=에스토니아">에스토니아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=크로아티아">크로아티아</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=헝가리">헝가리</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=프랑스">프랑스</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=폴란드">폴란드</a></li>
                                            <li><a href="../travel/05TravelAfter.jsp?trParam=포르투칼">포르투칼</a></li>
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
		<script src="../res/js/nicEdit.js" type="text/javascript"></script>
        <script type="text/javascript">
        bkLib.onDomLoaded(function() {

            new nicEditor({fullPanel : true}).panelInstance('area2');
        });
        </script>
            
		<%
			Blog selectBlog = null;
			String title = "";
			String content= "";
			BlogDao blogDao = new BlogDaoImpl();
			SearchService service = new SearchService(blogDao);
			List<Blog> blogs = blogDao.getBlogListNoPara();
			String blogNum = request.getParameter("blogNum");
			String continent = request.getParameter("continent");
			if(blogNum == null){
				title = "";
				content = "";
			}else{
				selectBlog = service.searchBlog(blogs, blogNum);			
				title = selectBlog.getBlogTitle();
				content = selectBlog.getBlogContent();
			}
			
		%>
		
        <main>
            <div class="editor" style="position: relative; height: 900px; width:1200px; left:50%; margin-left: -600px;">
                <form action="04BlogAfter.jsp" method="get">
                    
                    <!-- <input type="text" name="editor_title" style="width:1200px;">
                    </div> -->
                    <div style="width:1200px; overflow : hidden;">
                    <textarea cols="60" style="width:1300px; height:20px;" name="editor_title"><%=title %></textarea>
                    </div>
                    <select class="editorSelect" id="mySelect" name="continent" onchange="subCategory();">
                    <%
                    	switch(continent){
                    	case "대한민국" : out.print("<option value=\"c6\" selected>대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\">미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "유럽" : out.print("<option value=\"c6\">대한민국</option><option value=\"c2\" selected>유럽</option><option value=\"c3\">미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "미대양주": out.print("<option value=\"c6\">대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\" selected>미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "아시아": out.print("<option value=\"c6\">대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\" selected>미대양주</option><option value=\"c1\" selected>아시아</option>"); break;
                    	}
                    %>
                    	<!-- <option value="c6">대한민국</option>
                    	<option value="c2">유럽</option>
                    	<option value="c3">미대양주</option>
                    	<option value="c1">아시아</option> -->
                    </select>
                    <select class="editorSelect" id="subSelect" name="country">
                 <!--    	<option value="n49">서울</option>
                    	<option value="n50">부산</option>
                    	<option value="n51">제주</option>
                    	<option value="n52">경기</option>
                    	<option value="n53">강원도</option>
                    	<option value="n54">충청도</option>
                    	<option value="n55">전라도</option>
                    	<option value="n56">경상도</option> -->
                    </select>
                    <%
                   			TravelDao travelDao = new TravelDao();
							List<Country> countries = travelDao.getCountryList("c1");
							List<Country> countries2 = travelDao.getCountryList("c2");
							List<Country> countries3 = travelDao.getCountryList("c3");
							List<Country> countries4 = travelDao.getCountryList("c6");
          			%>
                    <script>
                    	var firstSel = document.getElementById("mySelect").value;
                   		
            				
                    		if(firstSel=="c1"){
                    			<%
                    			String str = "";
            					for(int i=0; i< countries.size(); i++){
	            				%>
	            					str += "<option value=\"<%=countries.get(i).getNationalCode()%>\"><%=countries.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str; 
                    		}else if(firstSel=="c2"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries2.size(); i++){
	            				%>
	            				str += "<option value=\"<%=countries2.get(i).getNationalCode()%>\"><%=countries2.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str;
                    		}else if(firstSel=="c3"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries3.size(); i++){
	            				%>
	            				str += "<option value=\"<%=countries3.get(i).getNationalCode()%>\"><%=countries3.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str;
                    		}else if(firstSel=="c6"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries4.size(); i++){
	            				%>
	            				str += "<option value=\"<%=countries4.get(i).getNationalCode()%>\"><%=countries4.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str;
                    		}           			
                    	function subCategory(){
                    		var x = document.getElementById("mySelect").value;
                    		            				
                    		if(x=="c1"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries.size(); i++){
	            				%>
	            					str += "<option value=\"<%=countries.get(i).getNationalCode()%>\"><%=countries.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str; 
                    		}else if(x=="c2"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries2.size(); i++){
	            				%>
	            				str += "<option value=\"<%=countries2.get(i).getNationalCode()%>\"><%=countries2.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str;
                    		}else if(x=="c3"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries3.size(); i++){
	            				%>
	            				str += "<option value=\"<%=countries3.get(i).getNationalCode()%>\"><%=countries3.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str;
                    		}else if(x=="c6"){
                    			<%
                    			str = "";
            					for(int i=0; i< countries4.size(); i++){
	            				%>
	            				str += "<option value=\"<%=countries4.get(i).getNationalCode()%>\"><%=countries4.get(i).getCountryName()%></option>";
	            				<%
	            					}
	            				%>
                    			var str = <%=str%>
                    			document.getElementById("subSelect").innerHTML =str;
                    		}
                    	}
                    </script>
                    <textarea cols="60" id="area2" style="height: 800px; width:1200px; position:relative; left: 50%; overflow:scroll;" name="editor_content"><%=content %></textarea>
                    <% 
                    	if(blogNum != null){
                    %>
                    <input type="hidden" name="blogNum" value="<%=blogNum%>">
                    <% 
                    	}
                    %>
                    <input type="hidden" name="userNum" value="<%=dto.getMemberNum() %>">
                    <button type="submit" class="action-button shadow animate blue" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">저장</button>
                </form>
                	<button onclick="cancelMove()" class="action-button shadow animate red" style="border-top : 0px; border-left:0px; border-right:0px; font-family:hanna; font-size:20px;">취소</button>
            </div>
            <script>
                    function cancelMove(){
                        var answer = confirm("확인을 누르시면 데이터가 삭제됩니다.삭제를 원하십니까?")
                        if(answer) location.replace("01TravelMain.jsp");
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
