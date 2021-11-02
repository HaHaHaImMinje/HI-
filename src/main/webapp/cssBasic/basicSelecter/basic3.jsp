<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div, p {
	padding: 50px;
	margin: 40px;
}

[title] {
	background: #ffb100;
	color: white;
	font-weight: bold;
}

[title='one'] {
	border: 10px solid blue;
	background: black;
}

[title='two'] {
	border: 5px solid red;
	padding: 20px solid gold;
}

p[title='two'] {
	background: yellow;
	color: pink;
}

/* �Ӽ����� ������ �����ϴ� �±�  */
p[title~='second'] { /*�Ӽ��� ~= "�Ӽ���" -> �������� �ۼ��� �ռ���� ������ �����ϴ�  */
	background: gray;
}

/* �Ӽ����� ������ �����ϴ� �±�  */ /* "second"~�� �����ϴ°͵� �� ����*/
p[class^="second"] { /* [�Ӽ��� |= "�Ӽ���"] �����ڴ� �����_ �� ������ ���� �ռ���� ������ �� �����ϴ�. ������ ^= ��ȣ�� ����ϴ� �Ӽ����� ������ �� �ֽ��ϴ�. */
	background: green;
}

/* �Ӽ����� ������ ������ �±�  */
p[class$="wrap"] { /* ���̻簡 class�� ��� �Ӽ����� ���õ˴ϴ�. ������ �ִ� ���, ���� ���� ���� �ռ���, ������(-), ����� (_) ��� ���̻翡�� ������ ���� �����մϴ�. */
	background: blue;
}

[class*='two'] { /* �Ӽ����� �������� ����� �ִ� ��� �Ӹ� �ƴ϶� ������(-), �����(_)�� ���� ���� �̾��� �ܾ� ���տ��� ����˴ϴ�. */
	background: black;
	color: white;
	border: 10px solid red;
}
</style>
</head>
<body>
	<div title="one">selector[ATTRIBUTE NAME1]</div>
	<div title="one">selector[ATTRIBUTE NAME2]</div>
	<p title="two">SELECTOR[ATTRIBUTE NAME3]=VALUE</p>
	<p title="first second third">SELECTOR[ATTRIBUTE NAME4]=VALUE</p>
	<p class="second-container">SELECTOR[ATTRIBUTE5]</p>
	<p class="second-wrap">SELECTOR[ATTRIBUTE6]</p>
	<div class="onetwo three">DIV SHOW</div>
</body>
</html>