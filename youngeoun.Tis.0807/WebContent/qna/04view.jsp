<%@page import="youngun.tis.user.login.domain.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="youngun.tis.qna.domain.Reply"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.qna.dao.mapper.ReplyMapper"%>
<%@page import="com.sun.scenario.effect.impl.prism.PrImage"%>
<%@page import="youngun.tis.qna.domain.Post"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.PostMapper"%>
<% Login dto = (Login)session.getAttribute("Login"); %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

PostMapper postMapper = Configuration.getMapper(PostMapper.class);
String qnaNum = request.getParameter("qna_num");
int postNo = 0;
if(qnaNum!=null) postNo = Integer.parseInt(qnaNum);

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
    <script src="https://use.fontawesome.com/e5f23f0337.js"></script>
    <!--end main_menu_nav-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
	<style type="text/css">
	
.abc{
    background-color: #fcfcfc;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
    margin-left: 100px;
    min-height: 60px;
    position: relative;
    padding: 15px;
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
                    <div class="board_button" style="float:right;">
                        <a href="01qnaMain.jsp"><button type="button" class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px;">목록으로</button></a>
                        <a href="05modified.jsp?qna_num=<%=postNo%>"><button type="button" class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px;">수정</button></a>
                        <a href="07delSucssess.jsp?qna_num=<%=postNo%>" onclick="aler()"><button type="button" class="action-button shadow animate blue" style="padding: 10px 10px; font-size:15px;">삭제</button></a>
                    </div>
                </div> 
                 <div class="comment-form" style="margin-top:100px;">
				    <div class="comment-avatar">
				      <img src="http://lorempixel.com/200/200/people">
				    </div>
				    <form action="04view.jsp" class="form">
				      <div class="form-row">
				        <textarea name="qna_reply_content" class="input" placeholder="Add comment..." required></textarea>
				      </div>
				      <div class="form-row">
				        <input type="submit" value="Add Comment">
				      </div>
				      <input type="hidden" name="qna_num" value="<%=postNo%>">
				    </form>
				  </div>
                <%
                	ReplyMapper replyMapper = Configuration.getMapper(ReplyMapper.class);
                             	
              		String replyContent ="";
                	replyContent = request.getParameter("qna_reply_content");
					
                	int replyNo = 0;
                	String replyNum = request.getParameter("qna_reply_num");
                	if(replyNum!=null) replyNo = Integer.parseInt(replyNum);
                	String delCheck = "";
					delCheck = request.getParameter("checkDelete");
					     	
					List<Reply> oldReplies = (List<Reply>)session.getAttribute("replies");
					Reply oldRep = (Reply)session.getAttribute("reply");
                	Reply reply = null;
                	String changeable = request.getParameter("index");
                	
					if(replyContent != null) {
							reply = new Reply();
							reply.setReplyContent(replyContent);
		                	reply.setPostNo(postNo);
		                	reply.setReplyNo(replyNo);
		                	session.setAttribute("reply", reply);
		                	if((oldRep==null||!oldRep.getReplyContent().equals(replyContent))&&changeable==null)
		             		   	replyMapper.inputReply(reply);
		            }
					
					if(changeable!=null){
						for(int i=0; i<oldReplies.size(); i++){
							String stri = i+"";
							if(stri.equals(changeable)){
								reply = new Reply();
								reply.setReplyContent(replyContent);
			                	reply.setPostNo(postNo);
			                	reply.setReplyNo(replyNo);
								replyMapper.updateReply(reply);
							}
						}
					}
                	
                	if(delCheck != null && replyNo != 0){
                		replyMapper.delReply(replyNo);
                	}
                	
                   	List<Reply> replies = replyMapper.selectReplies(postNo);
                   	session.setAttribute("replies", replies);
                	for(int i=0; i<replies.size(); i++){
                %>
                <div class="comment-form">   
                	<div class="comment-avatar">
				      	<img src="http://lorempixel.com/200/200/people">
				    </div>	    
                	<div class="abc">	
	                	 <div class="reply-font">
	                	 		<form action="04view.jsp">
									<button>
										<i class="fa fa-times" aria-hidden="true"></i>
										<input type="hidden" name="qna_num" value="<%=postNo%>">
										<input type="hidden" name="qna_reply_num" value=<%=replies.get(i).getReplyNo()%>>
										<input type="hidden" name="checkDelete" value="yes">
									</button>
									
								</form>	
									<button onclick="writeNow<%=i%>();">
										<i class="fa fa-pencil" aria-hidden="true"></i>
									</button>							

										<input type="hidden" name="checkDelete" value="delete">
									</button>
						 </div>	 
          				<div id="con<%=i%>"><%=replies.get(i).getReplyContent() %></div>
                		<%-- <p><%=replies.get(i).getReplyNo() %></p> --%>
                		<p style="text-align: right;"><%=replies.get(i).getReplyDate() %>
                	</div>	
                </div>  
                             
                <%
                	}
                %>
                <script type="text/javascript">
                <% 
                for(int i=0; i<replies.size(); i++){
                %>
	                function writeNow<%=i%>(){
	                	document.getElementById("con<%=i%>").innerHTML = "<form action=04view.jsp><textarea name=qna_reply_content cols=60 rows=5><%=replies.get(i).getReplyContent()%></textarea><input type=submit><input type=hidden name=qna_num value=<%=postNo%>><input type=hidden name=index value=<%=i%>><input type=hidden name=qna_reply_num value=<%=replies.get(i).getReplyNo()%>></form>";
	                }
	            <%
                }
                %>
                </script>
                
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
		    <script language='javascript'>
		
		function noEvent() {
		if (event.keyCode == 116) {
		event.keyCode= 2;
		return false;
		}
		else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
		{
		return false;
		}
		}
		document.onkeydown = noEvent;
		
		</script>

</body>
</html>