<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="../Theader.jsp" %>
<div id="container">

	<div>
		<div id="title"> ${productVO.name}</div><br>
		<div id="label"><label>${productVO.age}</label><label>${productVO.year}</label>
				<label>${productVO.genre}</label><label>${productVO.time}</label>
		</div><br>
				
		<div id="link">
			<div id="view"><a href>시청하기</a></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<div class ="linkicon"><img src = images/heartWB.png><br>찜</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class ="linkicon"><img src = images/linkb.png><br>공유</div><br>
			
			<div>${procuctVO.content}</div>
		</div>	
	</div>
	
	<div>${porductVO.savefilename}</div>


</div>
<%@ include file="../Tfooter.jsp" %>