<%@page import="youngun.tis.review.service.SearchService"%>
<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.review.domain.Review"%>
<%@page import="youngun.tis.review.domain.PageReview"%>
<%@page import="youngun.tis.review.domain.Country"%>
<%@page import="youngun.tis.review.dao.ReviewDaoImpl"%>
<%@page import="youngun.tis.review.dao.ReviewDao"%>
<%@page import="youngun.tis.review.dao.TravelDao"%>
<%@page import="youngun.tis.review.mapper.ReviewMapper"%>
<%@page import="youngun.tis.review.mapper.TravelMapper"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
    <link rel="stylesheet" href="../res/css/review.css">
    <link rel="stylesheet" href="../res/css/selectOption2.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <script type="text/javascript" src="../res/js/indexOption.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">

</head>

            

<body>

    <div id="fullweb">
       <%@include file="../headerNav.jsp" %>
         <%
				TravelDao travelDao = new TravelDao();
				
				String continentCode = request.getParameter("continent");
				String nationName = request.getParameter("nation");
				nationName = (nationName==null)? "--Country--" : nationName;
				
				
          		String index="";
				if(continentCode.equals("대한민국")) index = "%c6%";
				else if(continentCode.equals("유럽")) index = "%c2%";
				else if(continentCode.equals("미대양주")) index = "%c3%";
				else if(continentCode.equals("아시아")) index = "%c1%";

				List<Country> countries = travelDao.getCountryList(index);
		%>
		

        <div class="picture">
            <div class="centerSelect2">
              <select name="sources2" id="sources2" class="custom-select2 sources2" placeholder="<%=continentCode%>">
                <option value="대한민국">대한민국</option>
                <option value="유럽">유럽</option>
                <option value="미대양주">미대양주</option>
                <option value="아시아">아시아</option>
              </select>
            </div>
		<%
				
		%>
			
            
			<div class="centerSelect3">
              <select name="sources3" id="sources3" class="custom-select3 sources3" placeholder="<%=nationName%>">
            <% for(int i=0; i<countries.size(); i++){
            %>
                <option value="<%=countries.get(i) %>"><%=countries.get(i)%></option>
			<%
            	}
			%>
              </select>
            </div>
            
	    	<script>

    		$(".custom-select2").each(function() {
    			  var classes = $(this).attr("class"),
    			      id      = $(this).attr("id"),
    			      name    = $(this).attr("name");
    			  var template =  '<div class="' + classes + '">';
    			      template += '<span class="custom-select-trigger2">' + $(this).attr("placeholder") + '</span>';
    			      template += '<div class="custom-options2">';
    			      $(this).find("option").each(function() {
    			        template += '<a href=reviewMain2.jsp?continent='+$(this).attr("value")+'>'+'<span class="custom-option2 ' + $(this).attr("class") + '" data-value2="' + $(this).attr("value") + '">' + $(this).html() + '</span>' +'</a>';
    			      });
    			  template += '</div></div>';
    			  
    			  $(this).wrap('<div class="custom-select-wrapper2"></div>');
    			  $(this).hide();
    			  $(this).after(template);
    			});
    			$(".custom-option2:first-of-type").hover(function() {
    			  $(this).parents(".custom-options2").addClass("option-hover2");
    			}, function() {
    			  $(this).parents(".custom-options2").removeClass("option-hover2");
    			});
    			$(".custom-select-trigger2").on("click", function() {
    			  $('html').one('click',function() {
    			    $(".custom-select2").removeClass("opened2");
    			  });
    			  $(this).parents(".custom-select2").toggleClass("opened2");
    			  event.stopPropagation();
    			});
    			$(".custom-option").on("click", function() {
    			  $(this).parents(".custom-select-wrapper2").find("select").val($(this).data("value"));
    			  $(this).parents(".custom-options2").find(".custom-option2").removeClass("selection2");
    			  $(this).addClass("selection2");
    			  $(this).parents(".custom-select2").removeClass("opened2");
    			});		
	    	
		    		
    			$(".custom-select3").each(function() {
		    		  var classes = $(this).attr("class"),
		    		      id      = $(this).attr("id"),
		    		      name    = $(this).attr("name");
		    		  var template =  '<div class="' + classes + '">';
		    		      template += '<span class="custom-select-trigger3">' + $(this).attr("placeholder") + '</span>';
		    		      template += '<div class="custom-options3">';
		    		      $(this).find("option").each(function() {
		    		        template += '<a href=reviewMain2.jsp?continent=<%=continentCode%>&nation='+$(this).attr("value")+'>'+'<span class="custom-option3 ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>' +'</a>';
		    		      });
		    		  template += '</div></div>';
		    		  
		    		  $(this).wrap('<div class="custom-select-wrapper3"></div>');
		    		  $(this).hide();
		    		  $(this).after(template);
		    		});
		    		$(".custom-option3:first-of-type").hover(function() {
		    		  $(this).parents(".custom-options3").addClass("option-hover3");
		    		}, function() {
		    		  $(this).parents(".custom-options3").removeClass("option-hover3");
		    		});
		    		$(".custom-select-trigger3").on("click", function() {
		    		  $('html').one('click',function() {
		    		    $(".custom-select3").removeClass("opened3");
		    		  });
		    		  $(this).parents(".custom-select3").toggleClass("opened3");
		    		  event.stopPropagation();
		    		});
		    		$(".custom-option").on("click", function() {
		    		  $(this).parents(".custom-select-wrapper3").find("select").val($(this).data("value"));
		    		  $(this).parents(".custom-options3").find(".custom-option3").removeClass("selection3");
		    		  $(this).addClass("selection3");
		    		  $(this).parents(".custom-select3").removeClass("opened3");
		    		});
		    		
		    		
	    	</script>
    		
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
			ReviewDao reviewDao = new ReviewDaoImpl();
			//대륙별 데이터 조회
			String indexCountry = "%" + index +"%";
			List<Review> reviewNotice = reviewDao.getReviewListContinent(indexCountry);
			
			//나라별 데이터 조회
			if(!(nationName.equals("--Country--"))){
				SearchService searchService = new SearchService();
				indexCountry = searchService.transferCode(countries, nationName);
				reviewNotice = reviewDao.getReviewList(indexCountry);
				
			}
			
		
			
		%>
		
        <main>
			<div class="travel_main">
				<center><h1><%= continentCode %> 여행 후기</h1></center>
				
				<%if(dto!=null){ %>
                <a href="reviewInsert.jsp?userNum=<%=dto.getMemberNum() %>&continent=<%=continentCode %>" class="action-button shadow animate blue"  style="margin-left: 90px;">글작성</a>
                <%} %>
                <div class="clear"></div>
				<div class="travel_box">
				<%	
				PageReview pageReview = new PageReview(reviewNotice.size());
				

 				// 게시글이 8 미만일 때 한페이지에서만 다 나오게 할 경우
					if(pageReview.getCONTENT_PER_PAGE() > reviewNotice.size()){
						for(int i=0; i < reviewNotice.size(); i++){				
				%>
	                        <a href="reviewView.jsp?reviewNum=<%=reviewNotice.get(i).getReviewNum() %>">
	                        
	                        
			        <table class="type02">
						<tr>
							<th rowspan="2"><img src="<%=reviewNotice.get(i).getReviewImg()%>"  style="width:100%; height: 300px;"></th>
							<th><%= reviewNotice.get(i).getReviewTitle() %></th>
						</tr>
						<tr>
							<td><%= reviewNotice.get(i).getReviewContent() %></td>
						</tr>
		             </table>
	                        </a>
                <%
                		}
				%>
				<% 		
						if(reviewNotice.size()!=0){ 
				%>
							<div id="page_index">
								<ul>
									<li><a href="#">1</a></li>
								</ul>
							</div>
				<%
						}
				%>
				<%
					}else{ // 게시글이 8개 이상일 때
						String firstContent = request.getParameter("page"); // 한 페이지에서 시작될 첫번째 게시글
						
						if(firstContent == null || firstContent.equals("")) firstContent="0";
						int intFirstContent = Integer.parseInt(firstContent);
						
						for(int i=intFirstContent*pageReview.getCONTENT_PER_PAGE(); i< (intFirstContent*pageReview.getCONTENT_PER_PAGE())+8; i++){
							if(i==reviewNotice.size()) break;
						
				%>
							<a href="reviewView.jsp?reviewNum=<%=reviewNotice.get(i).getReviewNum() %>">
							<table class="type02">
						<tr>
							<th rowspan="2"><img src="<%=reviewNotice.get(i).getReviewImg()%>"  style="width:100%; height: 300px;"></th>
							<th><%= reviewNotice.get(i).getReviewTitle() %></th>
						</tr>
						<tr>
							<td><%= reviewNotice.get(i).getReviewContent() %></td>
						</tr>
		             </table>
			                </a>
				<%			
						}
				%>
						<div class="clear" style="width:0px; height:0px; display:none;"></div>
						<div id="page_index">
							<ul>
				<%
						
						if(reviewNotice.size()!=0){
							for(int i=0; i<pageReview.getPageAmount(); i++){
				%>
								<a href="reviewView.jsp?continent=<%= continentCode %>&nation=<%=nationName %>&page=<%=i %>" style="color:black;"><li><%=i+1 %></li></a>	
				<%			
							}	
						}
					}
				%>	
							</ul>
						</div>
					
						
				</div>
			</div>

        
			<div class="clear"></div>
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