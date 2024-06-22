<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Theader.css">
<link rel="stylesheet" href="css/Tmain.css">
<link rel="stylesheet" href="css/Tfooter.css">
<link rel="stylesheet" href="css/Tdetail.css">
<link rel="stylesheet" href="css/kind.css">
<link rel="stylesheet" href="css/genre.css">


<script src="function/Tmain.js"></script>
</head>
<body>
<div id="full">
	<header>
		<nav id="rightlink">
			<div id="logo">			
				<a href="twoving.do?command=index">TWOVING</a>
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div id ="Category">
				<a href="twoving.do?command=kind&kind=0" >시리즈</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="twoving.do?command=kind&kind=1" >영화</a>	
			</div>
		</nav>
		<nav id ="search">				
			<input type="text" placeholder="search"  height="50">
			<div id = "dbg"><a href=""><img src="images/dbg.png" width="50" height="50"></a></div>
			 &nbsp;&nbsp;&nbsp;&nbsp;
			<div class="mypage"><img src="images/iconm.png">
				<div class="profileclick" ><a href="twoving.do?command=mypage">My페이지</a></div>
				<div class="profileclick" ><a href="twoving.do?command=qnaList">고객센터</a></div>
				<div class="profileclick" ><a href="twoving.do?command=logout">로그아웃</a></div>
			</div>
		</nav>	
	</header>	
	