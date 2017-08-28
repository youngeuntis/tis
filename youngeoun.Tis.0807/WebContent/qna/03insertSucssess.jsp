<%@page import="youngun.tis.qna.service.PostService"%>
<%@page import="youngun.tis.qna.dao.PostDaoImpl"%>
<%@page import="youngun.tis.qna.dao.PostDao"%>
<%@page import="youngun.tis.qna.service.PostServiceImpl"%>
<%@page import="youngun.tis.qna.domain.Post"%>
<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.PostMapper"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	PostMapper postMapper = Configuration.getMapper(PostMapper.class);

	String title = request.getParameter("qna_title");
	String content = request.getParameter("qna_content");
	String openCheck = request.getParameter("open_check");
	String qnaImg = request.getParameter("qna_img");
	
	Post post = new Post();
	post.setTitle(title);
	post.setContent(content);
	post.setOpenCheck(openCheck);
	post.setQnaImg(qnaImg);
	
	postMapper.write(post);
	
	session.setAttribute("qnaDB", post);
		
	response.sendRedirect("01qnaMain.jsp");
%>
