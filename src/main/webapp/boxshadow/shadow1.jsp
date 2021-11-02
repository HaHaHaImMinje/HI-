<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div {
	width: 600px;
	background-color: blue;
	margin-bottom: 50px; /* margin 밑으로 공간이 넓어진다. */
	padding: 10px 20px 30px 40px; /*  빨간색이 padding에 채워진다 */
	font-size: 1.9em; /* 소수로도 가능  */
	color: green;
}

div.box1 {
	box-shadow: 10px 10px 10px gold;
}

div.box2 {
	box-shadow: 20px 30px 10px 10px;
}

div.box3 {
	box-shadow: 20px 20px 100px 50px pink;
	/* 초기값으로 돌아간다 */
	/*x값(가로) y값(세로), blur 그림자 음영 흐릿하게 숫자커지면 더커진다., spread 양수면 그림자를 확장 축소  */
}

div.box4 {
	box-shadow: inset 40px 50px black; /*inset 안쪽으로 음영을 준다.  */
}

div.box5 {
	box-shadow: 10px 10px green, -1em 0.4em gold;
}

div.box6 {
	box-shadow: 10px 10px green, -1em 0.4em gold initial;
}
</style>
</head>
<body>
	<div class="box1">
		<p>Box-shadow:10px 10px</p>
	</div>
	<div class="box2">
		<p>Box-shadow:10px 10px</p>
	</div>
	<div class="box3">
		<p>Box-shadow:15px 15px 10px 10px black</p>
	</div>
	<div class="box4">
		<p>Box-shadow:5px 5px</p>
	</div>
	<div class="box5">
		<p>Box-shadow:5px 5px </p>
	</div>
	<div class="box6">
		<p>Box-shadow:5px 5px initial</p>
	</div>


</body>
</html>