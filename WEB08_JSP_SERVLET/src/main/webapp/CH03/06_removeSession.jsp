<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_removeSession.jsp</title>
</head>
<body>
<%
	session.setAttribute("s_name1", "세션에 저장된 첫번째 값.");
	session.setAttribute("s_name2", "세션에 저장된 두번째 값.");
	session.setAttribute("s_name3", "세션에 저장된 세번째 값.");
	
	out.print("<h1> >>세션값을 삭제하기 전<<</h1>");
	
	String value = (String)session.getAttribute("s_name1");
	out.println("<h3>s_name1 : " + value + "</h3>");
	
	value = (String)session.getAttribute("s_name2");
	out.println("<h3>s_name2 : " + value + "</h3>");
	
	value = (String)session.getAttribute("s_name3");
	out.println("<h3>s_name3 : " + value + "</h3>");
	
	
	
	
	session.removeAttribute("s_name2");
	out.print("<h1> >>세션값을 한개 삭제<<</h1>");
	
	value = (String)session.getAttribute("s_name1");
	out.println("<h3>s_name1 : " + value + "</h3>");
	
	value = (String)session.getAttribute("s_name2");
	out.println("<h3>s_name2 : " + value + "</h3>");
	
	value = (String)session.getAttribute("s_name3");
	out.println("<h3>s_name3 : " + value + "</h3>");
	
	
	
	
	
	session.invalidate();
	out.print("<h1> >>세션값을 모두 삭제<<</h1>");
	out.println("세션 모두 삭제됨.");
	
	
	
	
%>

</body>
</html>