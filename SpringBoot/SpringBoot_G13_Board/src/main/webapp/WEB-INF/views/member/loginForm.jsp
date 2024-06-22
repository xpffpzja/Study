<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/board.css">
</head>
<body>
<form class="login-form" action="login" method="post" bane="login">
    <h2>Login</h2>
    <div class="field">
        <label>User ID</label><input type="text" name="userid" value="${dto.userid}">
    </div>
    <div class="field">
        <label>Password</label><input type="password" name="pwd">
    </div>
    <div class= "field">${message}</div>
    <div class="login-button">
        <input type="submit" class="btn-login" value="log in" />
        <input type="button" class="btn-login" value="join"
               onClick="location.href='joinForm'"/>
    </div>
    <div class="sns-login">
        <input type="button" class="btn facebook" value="Facebook" />
        <input type="button" class="btn twitter" value="Twitter" />
        <input type="button" class="btn google" value="Google" />
        <input type="button" class="btn kakao" value="Kakao" onclick="location.href='kakaostart'"/>
    </div>
</form>

</body>
</html>