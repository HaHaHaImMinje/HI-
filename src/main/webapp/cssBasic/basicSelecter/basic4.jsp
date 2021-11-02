<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div, p {
	padding: 15px;
	margin-right: 12px;
	font-weught: bold;
}

div {
	background: gray;
	color: white;
}

div div { /*div ' '이부분은 div 의 자손을 의미한다.  */
	background: black;
	color: yellow;
}

div p {
	background: green;
	color:blue;
}
</style>
</head>
<body>
</body>
<div>
	<p>Select [자손선택1]</p>
	<div>
		<div>Hi^_^</div><p>Select [자손선택2]</p>
	</div>
</div>
<p>P ELEMNET</p>
</html>