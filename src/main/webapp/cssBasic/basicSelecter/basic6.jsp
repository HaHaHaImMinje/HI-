<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div, p {
	padding: 20px;
	margin: 50px;
}

 div {
	background: yellow;
	color: blue ;
} 

div+p {
	background: red;
	color: blue;
}

p+p {
	background: green;
	color: yellow;
}
</style>
</head>
<body>
	<div>
		DIVELEMENT!
		<p>Sibling Selector(인접선택자1)</p>
		<p>Sibling Selector(인접선택자2)</p>
	</div>
	<p>div와 가까운 p</p>

</body>
</html>