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

/* 속성값이 변수를 포함하는 태그  */
p[title~='second'] { /*속성명 ~= "속성값" -> 공백으로 작성된 합성어는 선택이 가능하다  */
	background: gray;
}

/* 속성값이 변수로 시작하는 태그  */ /* "second"~로 시작하는것들 을 선택*/
p[class^="second"] { /* [속성명 |= "속성값"] 선택자는 언더바_ 및 공백이 없는 합성어는 선택할 수 없습니다. 하지만 ^= 기호를 사용하는 속성값은 선택할 수 있습니다. */
	background: green;
}

/* 속성값이 변수로 끝나는 태그  */
p[class$="wrap"] { /* 접미사가 class인 모든 속성값이 선택됩니다. 공백이 있는 경우, 공백 없이 붙은 합성어, 하이픈(-), 언더바 (_) 모두 접미사에만 있으면 선택 가능합니다. */
	background: blue;
}

[class*='two'] { /* 속성값이 공백으로 띄어져 있는 경우 뿐만 아니라 하이픈(-), 언더바(_)및 공백 없이 이어진 단어 조합에도 적용됩니다. */
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