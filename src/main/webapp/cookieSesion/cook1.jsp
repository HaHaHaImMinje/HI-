<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>
</head>
<body>
<form action="/springWeb/cookieTest.do" method="POST">
	<input type ="radio" value="red" name="color">RED
	<input type ="radio" value="blue" name="color">BLUE
	<input type ="radio" value="green" name="color">GREEN
	<input type ="radio" value="black" name="color">BLACK
	<input type ="submit" value="Send">
</form>
</body>
</html>