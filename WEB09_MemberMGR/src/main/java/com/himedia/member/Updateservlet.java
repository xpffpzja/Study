package com.himedia.member;

import jakarta.servlet.RequestDispatcher;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.himedia.member.dto.MemberDto;


public class Updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Updateservlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		PreparedStatement pstmt =null;
		ResultSet rs =null;

		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/scott";
		String id="root";
		String pw="adminuser";

		String sql  = "select*from members where id=?";
		
		String Id = request.getParameter("id");
		MemberDto mdto = new MemberDto();
		
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pw);	
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, Id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				mdto.setId(rs.getString("id"));
				mdto.setPwd(rs.getString("pwd"));
				mdto.setName(rs.getString("Name"));
				mdto.setPhone(rs.getString("Phone"));
				
				pstmt.executeUpdate();
			}
				
		}catch(Exception e){e. printStackTrace();
		}finally{
			try{
				if(con!=null) con.close();
				if(pstmt!=null) pstmt.close();
			}catch(Exception e){e. printStackTrace();
			}
		}
		request.setAttribute("member",mdto);
		RequestDispatcher rd = request.getRequestDispatcher("updateForm.jsp");
		rd.forward(request,  response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		Connection con = null;
		PreparedStatement pstmt = null;

		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/scott";
		String id="root";
		String pw="adminuser";

		String sql = "update members set name=?, pwd=?, phone=? where id=?"; 


		String Name = request.getParameter("name");
		String Pwd = request.getParameter("pwd");
		String Phone = request.getParameter("phone");
		String Id = request.getParameter("id");

		try{
				Class.forName(driver);
				con = DriverManager.getConnection(url, id, pw);	
				pstmt=con.prepareStatement(sql);
				
				pstmt.setString(1, Name);
				pstmt.setString(2, Pwd);		
				pstmt.setString(3, Phone);
				pstmt.setString(4, Id);
				pstmt.executeUpdate();		
			}catch(Exception e){e. printStackTrace();
			}finally{
				try{
					if(con!=null) con.close();
					if(pstmt!=null) pstmt.close();
				}catch(Exception e){e. printStackTrace();
				}
			}
		RequestDispatcher rd = request.getRequestDispatcher("start.do");
		rd.forward(request,  response);
	
	}

}
