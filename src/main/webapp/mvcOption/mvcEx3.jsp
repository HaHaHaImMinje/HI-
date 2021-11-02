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
		$("button").click(function() {
			if(this.id=='c1'){
			document.location.href = '/springWeb/clickAction.do';				
			}else if(this.id=='c2'){
			document.location.href ='/springWeb/mouseAction.do'
			}
		});
	});
</script>
</head>
<body>
	<button id="c1">Click</button>
	<button id="c2">Click2</button>
</body>
</html>