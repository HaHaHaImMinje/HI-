<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div, p {		/*div�� p�� �ؿ� ó�� �ٲ۴�.  */
	padding: 10px;
	background: gray;
	margin: 10px;
	border: 1px solid red;
}

div {
	background: gray;
}

div>div { /* div �ȿ� �ִ� div�� ����� ���������� �Ѵ�.  */
	background: red;
}

div p { /* > ������ �ڽ��� �ȴ� */
	background: yellow;
	color: white;
}
</style>
</head>
<body>
	<div>
		<p>Child Selector1(�ڽļ�����)</p>
		<div>Child Selector2(�ڽļ�����)</div>
		<h1> <!-- ���� ũ�� -->
			<p>P ELEMENT!</p>
		</h1>
	</div>

</body>
</html>