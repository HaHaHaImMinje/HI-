<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button").click(function() {
			if (this.id == 'h1') {
				path = '/springWeb/headerEx1.do';
			}
			
			if (this.id == 'h2') {
				path = '/springWeb/headerEx2.do';
			}
			if (this.id == 'h3') {
				path = '/springWeb/nullPoint.do?no=' + this.lang;
			}
			if (this.id == 'h5') {
				path = '/springWeb/cast.do';
			}
			if (this.id == 'h6') {
				path = '/springWeb/numberFormat.do';
			}
			document.location.href = path;
		});
	});
</script>
</head>

<body>
	<button id="h1">HEADER1</button>
	<button id="h2">HEADER2</button>
	<button id="h3" lang="5">NullPoint</button>
	<button id="h3" lang="50">NullPoint2</button>
	<button id="h5">CastEx</button>
	<button id="h6">NumberForMat</button>
</body>
</html>