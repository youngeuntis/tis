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
		<script src="../res/js/nicEdit.js" type="text/javascript"></script>
        <script type="text/javascript">
        bkLib.onDomLoaded(function() {

            new nicEditor({fullPanel : true}).panelInstance('area2');
        });
        </script>
            
		<%
			Review selectReview = null;
			String title = "";
			String content= "";
			ReviewDao reviewDao = new ReviewDaoImpl();
			SearchService service = new SearchService(reviewDao);
			List<Review> reviews = reviewDao.getReviewListNoPara();
			String reviewNum = request.getParameter("reviewNum");
			String continent = request.getParameter("continent");
			String category = null;
			selectReview = service.searchReview(reviews, reviewNum);			
			title = selectReview.getReviewTitle();
			content = selectReview.getReviewContent();
			
		%>
		
        <main>
            <div class="editor" style="position: relative; height: 900px; width:1200px; left:50%; margin-left: -600px;">
                <form action="reviewInsert2.jsp" method="get">
                   
                    <div style="width:1200px; overflow : hidden;">
                    <textarea cols="60" style="width:1300px; height:20px;" name="review_title"><%=title %></textarea>
                    </div>
                    <select class="editorSelect" id="mySelect" name="continent" onchange="subCategory();">
                    <%
                   
                    if(continent!=null){
                    	switch(continent){
                    	case "대한민국" : out.print("<option value=\"c6\" selected>대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\">미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "유럽" : out.print("<option value=\"c6\">대한민국</option><option value=\"c2\" selected>유럽</option><option value=\"c3\">미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "미대양주": out.print("<option value=\"c6\">대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\" selected>미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "아시아": out.print("<option value=\"c6\">대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\" selected>미대양주</option><option value=\"c1\" selected>아시아</option>"); break;
                    	}
                    }else{
                    	switch(category){
                    	case "대한민국" : out.print("<option value=\"c6\" selected>대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\">미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "유럽" : out.print("<option value=\"c6\">대한민국</option><option value=\"c2\" selected>유럽</option><option value=\"c3\">미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "미대양주": out.print("<option value=\"c6\">대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\" selected>미대양주</option><option value=\"c1\">아시아</option>"); break;
                    	case "아시아": out.print("<option value=\"c6\">대한민국</option><option value=\"c2\">유럽</option><option value=\"c3\" selected>미대양주</option><option value=\"c1\" selected>아시아</option>"); break;
                    	}
                    }
                    %>
                    
                    </select>
                    <select class="editorSelect" id="subSelect" name="country">
                 
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
                    <textarea cols="60" id="area2" style="height: 800px; width:1200px; position:relative; left: 50%; overflow:scroll;" name="review_content"><%=content %></textarea>
                    <% 
                    	if(reviewNum != null){
                    %>
                    <input type="hidden" name="reviewNum" value="<%=reviewNum%>">
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
                        var answer = confirm("확인을 누르시면 이전 페이지로 이동합니다. 이동를 원하십니까?")
                        if(answer) history.go(-1);
                    }
            </script>
            
            <form action="reviewInsert2.jsp" method="post">
			<input type="text" name ="review_title" placeholder="<%=selectReview.getReviewTitle()%>">
			<textarea name=review_content><%=selectReview.getReviewContent() %></textarea>
			
			<input type="hidden" name="reviewNum" value="<%=selectReview.getReviewNum() %>">
			<input type="hidden" name="continent" value="<%=selectReview.getContinentCode()%>">
			<input type="hidden" name="country" value="<%=selectReview.getNationCode()%>">
			<input type="submit">
	</form>
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
