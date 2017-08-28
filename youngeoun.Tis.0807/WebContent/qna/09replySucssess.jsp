<%@page import="youngun.tis.config.Configuration"%>
<%@page import="youngun.tis.qna.dao.mapper.ReplyMapper"%>
<%@page import="youngun.tis.qna.domain.Reply"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String qnaNum = request.getParameter("qna_num");
		int postNo = 0;
		if(qnaNum!=null) postNo = Integer.parseInt(qnaNum);

		ReplyMapper replyMapper = Configuration.getMapper(ReplyMapper.class);
		
		String replyContent ="";
		replyContent = request.getParameter("qna_reply_content");
		
		int replyNo = 0;
		String replyNum = request.getParameter("qna_reply_num");
		if(replyNum!=null) replyNo = Integer.parseInt(replyNum);
		
		String delCheck = "";
		delCheck = request.getParameter("checkDelete");
					                	
		Reply reply = null;
		if(replyContent != null) {
		reply = new Reply();
		reply.setReplyContent(replyContent);
		reply.setPostNo(postNo);
		reply.setReplyNo(replyNo);
		replyMapper.inputReply(reply);
		session.setAttribute("replyDB", reply);	
		}

		if(delCheck != null && replyNo != 0){
			replyMapper.delReply(replyNo);
			
		response.sendRedirect("04qnaMain.jsp");
}
%>