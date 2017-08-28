<%@page import="youngun.tis.user.login.domain.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<!DOCTYPE html>
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
    <!-- <script type="text/javascript" src="../res/js/imginput.js"></script> -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <!--main_menu_nav-->
    <script src="../res/js/modernizr.custom.js"></script>
    <!--end main_menu_nav-->
    <script type="text/javascript">
        function move(url) {
            location.href = url;
        }

        function boardViewCheck() {
            var form = document.BoardWriteForm;
            return true;
        }
    </script>
    <style type="text/css">
    .writing{
    	max-width:1000px;
    	height:1050px;
    }
    #holder{
    	width:300px;
    	height:300px;
    	text-align: center;
    	vertical-align: middle;
    	margin: 0 auto;    	
    }
	</style>
</head>
<body>
    <div id="fullweb">
        <%@include file="../headerNav.jsp" %>

        <div class="slideshow-container">

            <div class="mySlides fade" style="display:block;">
                <img src="../res/img/faq1.jpg" style="width:100%; ">
            </div>

            <main>
                <form action="03insertSucssess.jsp">
                    <div class="writing">
                        <div class="board_title">
                            <input type="text" name="qna_title" placeholder="제목을 입력하세요." style="width:1000px; height: 50px;"/>
                        </div>
                        <div class="board_content" style="width:1000px; height: 800px;">     
                        <article style="width:1000px; height: 270px;">
						  <p id="status"><!-- File API & FileReader API not supported --></p>
						  <p><input type=file name="qna_img" id="inp"></p>
						  <div id="holder" style="width:300px; height:200px; overflow:hidden;"></div>
						</article>
						<script>
						var upload = document.getElementById("inp"),
						    holder = document.getElementById('holder'),
						    state = document.getElementById('status');
						
						if (typeof window.FileReader === 'undefined') {
						  state.className = 'fail';
						} else {
						  state.className = 'success';
						  /* state.innerHTML = 'File API & FileReader available'; */
						}
						 
						upload.onchange = function (e) {
						  e.preventDefault();
						
						  var file = upload.files[0],
						      reader = new FileReader();
						  reader.onload = function (event) {
						    var img = new Image();
						    img.src = event.target.result;
						    // note: no onload required since we've got the dataurl...I think! :)
						    if (img.width > 200) { // holder width
						      img.width = 200;
						    }
						    holder.innerHTML = '';
						    holder.appendChild(img);
						  };
						  reader.readAsDataURL(file);
						
						  return false;
						};
						</script>
                        <textarea name="qna_content" style="width:1000px; height: 650px;" placeholder="내용을 입력하세요."></textarea>
                        </div>
                   		<div class="board_button" align="center" style="margin-top: 15px; float: right;">
                        	<!-- <input type="file" name="qna_img"> -->
                        	<input type="radio" name="open_check" value="1" checked/>공개
							<input type="radio" name="open_check" value="0"/>비공개
                            <button type="submit" class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px;">등록</button>
                            <input type="button" class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px;" value="뒤로" onclick="move('01qnaMain.jsp');">
                    	</div>
                    </div>
                </form>
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
        </div><!-- end fullweb -->

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