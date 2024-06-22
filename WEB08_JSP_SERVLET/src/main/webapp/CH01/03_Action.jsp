<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Action.jsp</title>
</head>
<body>
		<form method="get" action = "03_Action_to.jsp" name="joinForm">
			<!--
				- form 태그내의 submit 버튼을 누르면 form에 입력한 입력사항들이 name과 value로 쌍을 이뤄서
					action, 에 지정한 곳으로 전송됨. action에  지정되는 곳은 서버내의 특정페이지 또는 서블릿들이 지정될 수 있음.
					- action :  입력된 데이터들이 전송되어질 목적지
					- method : get을 지정하면 url 속에 데이터가 노출되고, post를 지정하면 url속에 데이터가 나타나지 않음. 
									따로 쓰지않으며 get.
			  -->
			  
			  <label for = "name">이름</label><input type = "text" id="name" name="name"><br>
			  <label for = "id">아이디</label><input type = "text" name="id"><br>
			  <label for = "pwd">비밀번호</label><input type = "password" id="pwd" name="pwd"><br>
			  <label for = "pwd_re">비밀번호 확인</label><input type = "password" id="pwd_re" name="pwd_re"><br>
			  <input type = "submit" value="회원가입">
			  <input type ="hidden" name="email" value ="hong2@naver.com">
		
		</form>
</body>
</html>