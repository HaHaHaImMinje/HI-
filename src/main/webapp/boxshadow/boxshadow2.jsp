<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div {
	/* display: inline; */
	width: 400px;
	background-color: yellow;
	color: pink;
	font-size: 2em;
}

div#dv1 {
	background: red;
	width: 500px;
	height: 300px;
	box-shadow: 10px 20px 10px pink;
}

div#dv2 {
	width:800px;
	height : 500px;
	background: black;
}

div#dv3 {
	width: 500px;
	height:500px;
	background: blue;
	box-shadow: 10px 20px 10px pink;
}
</style>
</head>
<body>
	<div id="dv1"
		style=" position: absolute; left: 400px; top: 300px; ">이지수</div>
	<div id="dv2"
		style=" left: 700px; top: 1000px">김태라</div>
	<div id="dv3"
		style=" position: absolute; left: 500px; top: 400px;">도경진</div>


</body>
</html>