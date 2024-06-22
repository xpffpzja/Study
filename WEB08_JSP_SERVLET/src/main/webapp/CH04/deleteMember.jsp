<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
    
    
<%
//deleteMember.jsp
//스크립트를 이용해서 정말로 삭제할까요? 라고 물어보고 학인 삭제, 취소는 원래대로 돌아가도록 함.
// 삭제가 완료되면 MemberMGR.jsp로 가기전에 삭제가 완료되었습니다. 라고 경고창 보여주기.
%>
<script type="text/javascript">
var ans = confirm("정말로 삭제하시겠습니까?");
if(!ans)location.href='MemberMGR.jsp';
</script>
<%
Connection con = null;
PreparedStatement pstmt = null;

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/scott";
String id="root";
String pw="adminuser";

String Id = request.getParameter("id");

String sql = "delete from members where id=?"; 
try{
		Class.forName(driver);
		con = DriverManager.getConnection(url, id, pw);	
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, Id);
		
		pstmt.executeUpdate();		
	}catch(Exception e){e. printStackTrace();
	}finally{
		try{
			if(con!=null) con.close();
			if(pstmt!=null) pstmt.close();
		}catch(Exception e){e. printStackTrace();
		}
	}
%>
<script type="text/javascript">

alert("삭제가 완료되었습니다.");
location.href='MemberMGR.jsp';
</script>