<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<% 
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
String updateid = request.getParameter("id");

try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, id, pw);	
		pstmt=con.prepareStatement(sql);
		
		pstmt.setString(1, Name);
		pstmt.setString(2, Pwd);		
		pstmt.setString(3, Phone);
		pstmt.setString(4, updateid);
		
		
		pstmt.executeUpdate();		
	}catch(Exception e){e. printStackTrace();
	}finally{
		try{
			if(con!=null) con.close();
			if(pstmt!=null) pstmt.close();
		}catch(Exception e){e. printStackTrace();
		}
	}
response.sendRedirect("MemberMGR.jsp");
%>
