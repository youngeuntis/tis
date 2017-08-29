<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDaoImpl"%>
<%@page import="youngun.tis.travel.blog.domain.PageTravel"%>
<%@page import="youngun.tis.travel.blog.service.SearchService"%>
<%@page import="youngun.tis.travel.blog.dao.BlogDao"%>
<%@page import="youngun.tis.travel.blog.dao.TravelDao"%>
<%@page import="youngun.tis.travel.blog.domain.Blog"%>
<%@page import="youngun.tis.travel.blog.mapper.BlogMapper"%>
<%@page import="youngun.tis.travel.blog.domain.Country"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.travel.blog.mapper.TravelMapper"%>
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
    <link rel="stylesheet" href="../res/css/travelMain.css">
    <link rel="stylesheet" href="../res/css/selectOption.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
</head>
<style>
	
</style>
<body>

    <div id="fullweb">
        <%@include file="../headerNav.jsp" %>
        <%
				TravelDao travelDao = new TravelDao();
				
				String continentCode = request.getParameter("continent");
				String nationName = request.getParameter("nation");
				nationName = (nationName==null)? "--Country--" : nationName;
				
				/* session.setAttribute("continent", continentCode);
          		if(!(nationName.equals("--Country--")))
          			session.setAttribute("country", nationName); */
				
          		String index="";
				if(continentCode.equals("대한민국")) index = "%c6%";
				else if(continentCode.equals("유럽")) index = "%c2%";
				else if(continentCode.equals("미대양주")) index = "%c3%";
				else if(continentCode.equals("아시아")) index = "%c1%";

				List<Country> countries = travelDao.getCountryList(index);
				
				
		%>
		

        <div class="picture">
            <div class="nation_title">
                <h2><%= continentCode %></h2>
            </div>
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
			
            
			<div class="centerSelect">
              <select name="sources" id="sources" class="custom-select sources" placeholder="<%=nationName%>">
            <% for(int i=0; i<countries.size(); i++){
            %>
                <option value="<%=countries.get(i) %>"><%=countries.get(i)%></option>
			<%
            	}
			%>
              </select>
            </div>
            
	    	<script>
		    	$(".custom-select").each(function() {
		    		  var classes = $(this).attr("class"),
		    		      id      = $(this).attr("id"),
		    		      name    = $(this).attr("name");
		    		  var template =  '<div class="' + classes + '">';
		    		      template += '<span class="custom-select-trigger">' + $(this).attr("placeholder") + '</span>';
		    		      template += '<div class="custom-options">';
		    		      $(this).find("option").each(function() {
		    		        template += '<a href=05TravelAfter.jsp?continent=<%=continentCode%>&nation='+$(this).attr("value")+'>'+'<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>' +'</a>';
		    		      });
		    		  template += '</div></div>';
		    		  
		    		  $(this).wrap('<div class="custom-select-wrapper"></div>');
		    		  $(this).hide();
		    		  $(this).after(template);
		    		});
		    		$(".custom-option:first-of-type").hover(function() {
		    		  $(this).parents(".custom-options").addClass("option-hover");
		    		}, function() {
		    		  $(this).parents(".custom-options").removeClass("option-hover");
		    		});
		    		$(".custom-select-trigger").on("click", function() {
		    		  $('html').one('click',function() {
		    		    $(".custom-select").removeClass("opened");
		    		  });
		    		  $(this).parents(".custom-select").toggleClass("opened");
		    		  event.stopPropagation();
		    		});
		    		$(".custom-option").on("click", function() {
		    		  $(this).parents(".custom-select-wrapper").find("select").val($(this).data("value"));
		    		  $(this).parents(".custom-options").find(".custom-option").removeClass("selection");
		    		  $(this).addClass("selection");
		    		  $(this).parents(".custom-select").removeClass("opened");
		    		});
		    		
		    		
		    		
		    		$(".custom-select2").each(function() {
		    			  var classes = $(this).attr("class"),
		    			      id      = $(this).attr("id"),
		    			      name    = $(this).attr("name");
		    			  var template =  '<div class="' + classes + '">';
		    			      template += '<span class="custom-select-trigger2">' + $(this).attr("placeholder") + '</span>';
		    			      template += '<div class="custom-options2">';
		    			      $(this).find("option").each(function() {
		    			        template += '<a href=05TravelAfter.jsp?continent='+$(this).attr("value")+'>'+'<span class="custom-option2 ' + $(this).attr("class") + '" data-value2="' + $(this).attr("value") + '">' + $(this).html() + '</span>' +'</a>';
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
			BlogDao blogDao = new BlogDaoImpl();
			SearchService service = new SearchService(blogDao);
			//대륙별 데이터 조회
			String indexCountry = "%" + index +"%";
			List<Blog> informations = blogDao.getBlogListContinent(indexCountry);
			
			//나라별 데이터 조회
			if(!(nationName.equals("--Country--"))){
				//SearchService searchService = new SearchService();
				indexCountry = service.transferCode(countries, nationName);
				informations = blogDao.getBlogList(indexCountry);
				
			}
			
		
			
		%>
		
        <main>
			<div class="travel_main">
				<h1><%= continentCode %>여행기</h1>
				
				<%if(dto!=null){ %>
                <a href="02BlogMain.jsp?userNum=<%=dto.getMemberNum() %>&continent=<%=continentCode %>" class="action-button shadow animate blue"  style="margin-left: 90px;">글작성</a>
                <%} %>
                <div class="clear"></div>
				<div class="travel_box">
				<%	
				PageTravel pageTravel = new PageTravel(informations.size());

 				// 게시글이 8 미만일 때 한페이지에서만 다 나오게 할 경우
					if(pageTravel.getCONTENT_PER_PAGE() > informations.size()){
						for(int i=0; i < informations.size(); i++){				
				%>
	                        <a href="03SelectContent.jsp?blognum=<%=informations.get(i).getBlogNum() %>">
							<div class="box1" >
								<img src="<%=informations.get(i).getImg()%>" style="width:290px; height:200px; margin-bottom : 30px;">
								<h3 style="color : chocolate;"><%=informations.get(i).getBlogTitle() %></h3>
								<p style="font-size:12px; display:inline;">Hits : <%=informations.get(i).getHits() %></p>
								<p style="font-size:12px; display:inline;">작성자 : <%=service.printNickName(informations.get(i).getMemberNum()) %></p>
							</div>
	                        </a>
                <%
                		}
				%>
				<% 		
						if(informations.size()!=0){ 
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
						
						for(int i=intFirstContent*pageTravel.getCONTENT_PER_PAGE(); i< (intFirstContent*pageTravel.getCONTENT_PER_PAGE())+8; i++){
							if(i==informations.size()) break;
						
				%>
							<a href="03SelectContent.jsp?blognum=<%=informations.get(i).getBlogNum() %>">
							<div class="box1" >
								<img src="<%=informations.get(i).getImg()%>" style="width:290px; height:200px; margin-bottom : 30px;">
								<h3 style="color : chocolate;"><%=informations.get(i).getBlogTitle() %></h3>
								<p style="font-size:12px; display:inline;">Hits : <%=informations.get(i).getHits() %></p>
								<p style="font-size:12px; display:inline;">작성자 : <%=service.printNickName(informations.get(i).getMemberNum()) %></p>
							</div>
			                </a>
				<%			
						}
				%>
						<div class="clear" style="width:0px; height:0px; display:none;"></div>
						<div id="page_index">
							<ul>
				<%
						
						if(informations.size()!=0){
							for(int i=0; i<pageTravel.getPageAmount(); i++){
				%>
								<a href="05TravelAfter.jsp?continent=<%= continentCode %>&nation=<%=nationName %>&page=<%=i %>" style="color:black;"><li><%=i+1 %></li></a>	
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
                        <%="사이즈" + informations.size() %>
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
