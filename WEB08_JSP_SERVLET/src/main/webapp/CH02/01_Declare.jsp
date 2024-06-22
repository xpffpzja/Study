<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_Declare.jsp</title>
<!-- jsp는 실행영역과 선언부 영역으로 구분됨. 보통 실행영역은 body 안에서 <% %>로 표시된 곳에 기술되지만, 
선언부는 head부분에서 <%! %>로 표시된곳에 대부분 기술 -->
<%!
	// 선언부의 시작 : 선언부 영역은 변수, 메서드등이 정의됨.
	// 변수 선언
	String str = "안녕하세요";
	int a =5, b=-5;
	
	// 메서드 정의
	public int abs(int n){
		if(n<0) n=-n; // n=-1*n
			return n;	
	} //jsp의 메서드는 static으로 선언하지 않아도 사용이 가능

%>	
</head>
<body>
<%
	int c= 10;
	c++;
	a++;
%>
<h2><br><br>
str 변수 : <%=str %><br>
a 변수 : <%=a %><br>
c 변수 : <%=c %><br>
</h2>
</body>
</html>