<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function ajaxACtion(url, type, dataType) {
		$.ajax({
			url : url,
			type : type,
			dataType : dataType,
			success : function(v) {
				console.log(v);
			}
		});
	}
	$(function() {
		$("button").click(function() {
			if (this.id == 'stud') {
				ajaxAction('/springWeb/studAjax.do', 'GET', 'json');
			}if (this.id == 'map') {
				ajaxACtion('/springWeb/mapAjax.do', 'POST', 'json');
			}if (this.id == 'object') {
				ajaxACtion('/springWeb/ObjectAjax.do', 'POST', 'json');
			}
		});
	});
</script>
<body>
	<button id="stud">Student</button>
	<button id="map">MapJson</button>
	<button id="object">ObjectValue</button>
</body>
</html>