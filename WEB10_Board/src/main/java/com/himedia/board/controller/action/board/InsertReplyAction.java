package com.himedia.board.controller.action.board;

import java.io.IOException;

import com.himedia.board.controller.action.Action;
import com.himedia.board.dao.BoardDao;
import com.himedia.board.dto.ReplyDto;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class InsertReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReplyDto rdto = new ReplyDto();
		rdto.setUserid(request.getParameter("userid"));
		rdto.setBoardnum(Integer.parseInt(request.getParameter("boardnum")));
		rdto.setContent(request.getParameter("content"));
		
		BoardDao bdao = BoardDao.getInstance();
		bdao.insertReply(rdto);
		
		
		/*
		 * request .getRequestDispatcher("board.do?command=boardview?num="
		 * +rdto.getBoardnum()) .forward(request, response);
		 */
		response.sendRedirect("board.do?command=boardViewWithoutCnt&num=" + rdto.getBoardnum());
		
	}

}
