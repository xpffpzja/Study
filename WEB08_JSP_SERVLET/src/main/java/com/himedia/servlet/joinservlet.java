package com.himedia.servlet;

import java.io.IOException;




import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class joinservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public joinservlet() {
    	super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//현재 서블릿이 method="get"으로 호출될때 실행되는 메서드
		//jsp 페이지에 있던 request와 response가 전송되어 와서 매개변수(request , response)에 저장됨.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String content = request.getParameter("content");
		String job = request.getParameter("job");
		String[] item =request.getParameterValues("item");
		
		if(id.equals("scott")&&pwd.equals("1234")) {
			request.setAttribute("id", id);
			request.setAttribute("pwd", pwd);
			request.setAttribute("gender", gender);
			request.setAttribute("content", content);
			request.setAttribute("job" , job); 
			
			String[] itemName = new String[item.length];
			for(int i =0; i<item.length; i++) {
				switch(item[i]) {
				case"1": itemName[i] = "신발"; break;
				case"2": itemName[i] = "가방"; break;
				case"3": itemName[i] = "벨트"; break;
				case"4": itemName[i] = "모자"; break;
				}
			}
			request.setAttribute("item", itemName);
			
	
			RequestDispatcher rd = request.getRequestDispatcher("CH02/092_JSP_ServletEx.jsp");
			rd.forward(request, response);
			
		}else {
			response.sendRedirect("CH02/091_JSP_ServletEx.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		//현재 서블릿이 method="post"로 호출될때 실행되는 메서드
	}

}
