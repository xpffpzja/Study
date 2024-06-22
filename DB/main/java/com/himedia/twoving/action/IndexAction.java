package com.himedia.twoving.action;

import java.io.IOException;
import java.util.ArrayList;

import dao.productDao;
import dto.productVO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public  class IndexAction  implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		productDao pdao = productDao.getInstance();
		ArrayList<productVO> list = pdao.mainList();	
		ArrayList<productVO> blist = pdao.bestList(); 
		ArrayList<productVO> nlist = pdao.newList();
		
	  
		request.setAttribute("newList", nlist); 
		request.setAttribute("bestList", blist);	
		request.setAttribute("mainList", list);
		
		request.getRequestDispatcher("Tmain.jsp").forward(request, response);
		
	}

}
