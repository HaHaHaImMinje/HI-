<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("input[type='button']").eq(0).click(function() {
			document.location.href='springWeb/Java.do';
		});
		$("input[type='button']").eq(1).click(function() {
			document.location.href='springWeb/Xml.do';
		});
		$("input[type='button']").eq(2).click(function() {
			document.location.href='springWeb/Oracle.do';
		});
	});
</script>
</head>
<body>
	<input type="button" value="Click1">
	<input type="button" value="Click2">
	<input type="button" value="Click3">
	
	<form action="/springWeb/modelArgDemo.do">
		<input type="text" name="no">
		<input type="text" name="id">
		<input type="text" name="scrapno">
		<input type="submit" name="Send">
	</form>
</body>
</html>