<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#all").click(function() {
			$("img").attr('width', function(index) {
				return (index + 1) * 100;
				//return 100;
			});
		});
		$("button#all2").click(function() {
			$("img").attr({
				width : function(index) {
					return (index + 1) * 100;
					//return 100;
				},
				height : function(index) {
					return (index + 2) * 300;
				} //JSON
			});
		});

		$("img").click(function() {
			$(this).attr('width', function(index) {
				return (index + 1) * 100;
				//return 100;
			});
		});
	});
</script>

</head>
<body>
	<button id="all">ALLImage</button>
	<br>
	<img id="effects" alt="" src="/web/images/그랜저.jpg">
	<img id="effects" alt="" src="/web/images/산타페.jpg">
	<img id="effects" alt="" src="/web/images/카니발.jpg">
</body>
</html>