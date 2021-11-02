<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		var path="";
		
		$("button").click(function() {
			switch (this.id) {
			case "action1":
				path = "aopActionDemo1.do";
				break;
			case "action2":
				path = "/springWeb/aopActionDemo2.do";
				break;
			default:
				break;
			}
				alert(path);
			document.location.href = path;
		});
	});
</script>
</head>
<body>
	<button id="action1">Action1</button>
	<button id="action2">Action2</button>
</body>
</html>