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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
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
    <link rel="stylesheet" href="../res/css/selectOption.css">
    <script type="text/javascript" src="../res/js/custom.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../res/js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">

</head>

<body>
    <div id="fullweb">
        <%@include file="../headerNav.jsp" %>
        <div class="slideshow-container">
			<h1 style="position: absolute; top:50%; left:50%; transform: translate(-50%, -50%); font-size:5rem;  color: white;  z-index: 2; text-align: center;">여행후기</h1>
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
           <!--  <div class="selectbox">
                <select id="nation" style="width:165px;height:50px;font-size:20px; margin-right: 5px; font-weight: bold;  border: 3px solid black;
                border-radius: 0px; -webkit-appearance: none;">
                        <option selected value="NATION">국가별</option>
                        <option value="KOREA">한국</option>
                        <option value="JAPAN">일본</option>
                        <option value="USA">미국</option>
                        <option value="SPAIN">스페인</option>
                </select>
                <select id="area" style="width:165px;height:50px;font-size:20px;
                font-weight: bold;  border: 3px solid black;
                border-radius: 0px; -webkit-appearance: none;">
                        <option selected value="AREA">지역별</option>
                        <option value="">서울</option>
                        <option value="">대전</option>
                        <option value="">대구</option>
                        <option value="">부산</option>
                </select>
            </div> -->
            
            <div style="margin-top:5px;">
            
		<select class="editorSelect" id="mySelect" name="continent" onchange="subCategory();" style="width:165px;height:50px;font-size:20px; margin-right: 5px; margin-top:0px; font-weight: bold;  border: 3px solid black;
                border-radius: 0px; -webkit-appearance: none;">
                		<option selected disabled>--국가--</option>
                    	<option value="c2">유럽</option>
                    	<option value="c3">미대양주</option>
                    	<option value="c1">아시아</option>
                    </select>
        <select class="editorSelect" id="subSelect" name="country" style="width:165px;height:50px;font-size:20px; margin-right: 5px; font-weight: bold;  border: 3px solid black;
                border-radius: 0px; -webkit-appearance: none;" placeholder="지역" >
                    	
                    </select>
                    <script>
                    	function subCategory(){
                    		var x = document.getElementById("mySelect").value;
                    		<%
                    			TravelDao travelDao = new TravelDao();
								List<Country> countries = travelDao.getCountryList("c1");
								List<Country> countries2 = travelDao.getCountryList("c2");
								List<Country> countries3 = travelDao.getCountryList("c3");
								List<Country> countries4 = travelDao.getCountryList("c6");
            				%>
            				
                    		if(x=="c1"){
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
                    		}
                    	}
                    	</script>
        
		
            
            </div>
            
			<table class="type11">
					<th rowspan="2">메인 사진을 업로드 해 주세요<p><input type="file" name="uploadFile1" style =  "display:none;">
                    <img src="../res/img/123.jpg" onclick="document.all.uploadFile1.click();"></p></th>
            </table>
            <table class="type12">   
                <td>
                    <textarea name="titleinput" style="width:100%; height:100%; ">제목 입력</textarea>
                </td>
            <table class="type13">
					<th>글 내용안의 동영상 사진 음악 등 업로드
                        <p><input type="file" name="uploadFile2" style =  "display:none;">
                        <img src="../res/img/DYTR.png"
                        onclick="document.all.uploadFile2.click();"></p>
                        <p><input type="file" name="uploadFile3" style =  "display:none;">
                        <img src="../res/img/DYTR.png"
                        onclick="document.all.uploadFile3.click();"></p>
                    </th>
            </table> 
            <table class="type14">
                <td><textarea name="titleinput" style="width:100%; height:100%; ">내용 입력</textarea></td>
			</table>
			<table class="type15">
				
				<th onclick="registrationReview()" >등록</th>
					<script>
	                    function registrationReview(){
	                        var answer = confirm("등록되었습니다 확인을 누르시면 메인페이지로 이동합니다.")
	                        if(answer) location.replace("reviewMain2.jsp");
	                    }
            		</script>
            </table>
            <table class="type15">
            	<th onclick="cancelMove()"> 취소 </th>
            		<script>
	                    function cancelMove(){
	                        var answer = confirm("확인을 누르시면 작성중이던 글이 저장되지 않고 이전 페이지로 돌아갑니다.취소를 원하십니까?")
	                        if(answer) location.replace("reviewMain2.jsp");
	                    }
            		</script>
			</table>
            </table>
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
