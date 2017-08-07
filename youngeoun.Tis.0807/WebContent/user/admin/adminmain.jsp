<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<head>
</head>
<link rel = "stylesheet" href =  "../../res/css/AdminStyle.css"/>
<body>
<header>
	<ul id="gnb">
		<li><a href="adminmain.jsp">메인</a></li>
		<li><a href="full.jsp">회원 관리</a></li>
		<li><a href="Blind.jsp">제재 회원 관리</a></li>
		<li><a href="forcedBlind.jsp">강제 탈퇴 회원 관리</a></li>
		<li><a href="step.jsp">스텝 관리</a></li>
	</ul>
</header>
     <div class="main">
       
        <div class="mainA">
            <div class="mainA1"><h1>최근 방문 회원</h1><br />
                <ul id="gnb2">
                    <li><a href="#">날짜▼</a></li>
		            <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
                 </ul>
                 <div class="mainAa1">
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                   </div>
                 <div class="mainAbutton">
                     <a href="untilVisit.jsp">더보기</a>
            </div>
             </div>
            <div class="mainA2"><h1>최근 가입 회원</h1><br />
                <ul id="gnb2">
                    <li><a href="#">날짜▼</a></li>
		            <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
                 </ul>
                 <div class="mainAa2">
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                 </div>
                 <div class="mainAbutton">
                     <a href="untlJoin.jsp">더보기</a>
                 </div>
            </div>
            <div class="mainA3"><h1>최근 제재 회원</h1><br />
                <ul id="gnb2">
                    <li><a href="#">날짜▼</a></li>
		            <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
                 </ul>
                 <div class="mainAa3">
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                     <p>2017.08.02 &nbsp;&nbsp;&nbsp;TIS1234 &nbsp;&nbsp;&nbsp;&nbsp; 길동잉</p>
                 </div>
                  <div class="mainAbutton">
                      <a href="untilBlind.jsp">더보기</a>
                  </div>
             </div>
           </div>
         <div class="mainB"><h1>전체 회원</h1>
            <div class="mainSerch">
               <select class="serchOption">
                   <option>아이디</option>
                   <option>이름</option>
               </select>
              <input id="search" type="search" name="search_member" placeholder="검색" maxlength="255">
              <button id="search_button" type="submit">검색</button>
            </div>
             <div class="mainBb">
              <ul id="gnb3">
                    <li><a href="#">아이디▼</a></li>
		            <li><a href="#">이름▼</a></li>
		            <li><a href="#">가입일▼</a></li>
                    <li><a href="#">최근방문일▼</a></li>
                    <li><a href="#">게시글수▼</a></li>
                    <li><a href="#">댓글수▼</a></li>
                    <li><a href="#">방문수▼</a></li>
                 </ul>
             </div>
              
             
             <div class="mainB2"> 
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                        <li><input type="checkbox">&nbsp;&nbsp; TIS1234 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;길동잉 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017.08.02 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2503</li>
                 
                    </div>
                    
             <div class="memberNum">◀ 1 2 3 4 5 ▶</div>
            
             <div class="mainBoption">
                    <ul id="gnb4">
                    <li><a href="#">제재</a></li>
		            <li><a href="#">강제 탈퇴</a></li>
		            <li><a href="#">메일</a></li>
                    <li><a href="#">쪽지</a></li>
                    <li><a href="#">스텝 기능</a></li>
                 </ul>
            </div>
              <div class="mainBbutton">
              <a href="full.jsp">더보기</a>
              </div>
        </div>
         <div class="clear"></div>
    </div>
</body>
</html>