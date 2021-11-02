<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div, p {		/*div와 p를 밑에 처럼 바꾼다.  */
	padding: 10px;
	background: gray;
	margin: 10px;
	border: 1px solid red;
}

div {
	background: gray;
}

div>div { /* div 안에 있는 div는 배경을 빨간색으로 한다.  */
	background: red;
}

div p { /* > 넣으면 자신이 된다 */
	background: yellow;
	color: white;
}
</style>
</head>
<body>
	<div>
		<p>Child Selector1(자식선택자)</p>
		<div>Child Selector2(자식선택자)</div>
		<h1> <!-- 글자 크기 -->
			<p>P ELEMENT!</p>
		</h1>
	</div>

</body>
</html>