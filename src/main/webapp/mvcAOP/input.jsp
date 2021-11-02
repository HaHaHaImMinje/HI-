<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
	
</script>
</head>
<body>
	<form action="/springWeb/transActionPro.do" method="post">
		<input type="text" name="no"> 
		<input type="text" name="msg">
		<input type="submit" value="Send">
	</form>

</body>
</html>
