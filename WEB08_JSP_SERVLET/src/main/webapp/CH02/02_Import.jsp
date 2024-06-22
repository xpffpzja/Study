<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Calendar" %>    
<%@ page import = "java.util.Date" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Import</title>
</head>
<body>
<%
	Calendar date = Calendar.getInstance();
	SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>
<h1>오늘은 <br>
<%
	Date d = date.getTime();
	out.print(d);
%><br>
<%
	out.print(today.format(d));
%> <br>입니다.
</h1>
<h1>지금 시각은
<%
	out.print(now.format(d));	
%>
</h1>

</body>
</html>