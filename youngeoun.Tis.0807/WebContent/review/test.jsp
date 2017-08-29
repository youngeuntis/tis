<%@page import="youngun.tis.review.domain.Review"%>
<%@page import="java.util.List"%>
<%@page import="youngun.tis.review.service.SearchService"%>
<%@page import="youngun.tis.review.dao.ReviewDaoImpl"%>
<%@page import="youngun.tis.review.dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		ReviewDao reviewDao = new ReviewDaoImpl();
	    SearchService service = new SearchService(reviewDao);
    
		String reviewNum = request.getParameter("reviewNum");
		List<Review> reviews = reviewDao.getReviewListNoPara();
		Review selectReview = service.searchReview(reviews, reviewNum);
	%>
	<form action="reviewInsert2.jsp" method="post">
	<input type="text" name ="review_title" placeholder="<%=selectReview.getReviewTitle()%>">
	<textarea name=review_content><%=selectReview.getReviewContent() %></textarea>
	
	<input type="hidden" name="reviewNum" value="<%=selectReview.getReviewNum() %>">
	<input type="hidden" name="continent" value="<%=selectReview.getContinentCode()%>">
	<input type="hidden" name="country" value="<%=selectReview.getNationCode()%>">
	<input type="submit">
	</form>
</body>
</html>