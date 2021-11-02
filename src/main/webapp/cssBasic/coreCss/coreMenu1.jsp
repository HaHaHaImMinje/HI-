<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.accordion {
	font: bold 1em/2 맑은고딕;
	border: 3px solid #1d1d1d;
	width: 300px;
	border-radius: 5px; /* 모서리 둥글게 */
}

.accordion>ul {
	margin: 0;
	padding: 0;
}

.accordion ul, .accordion li {
	list-style: none;
}

.accordion>ul>li {
	background: gray;
	margin: 0;
	padding: 0;
}

.accordion>ul>li ul { /* > : 자식 ' ' : 자손 */
	opacity: 0;
	margin: 0;
	padding: 0;
}

.accordion>ul li li {
	background: #525252;
}

.accordion a {
	display: block;
	color: #ccc;
	text-align: center; /* 가운데 정렬 하기  */
	text-decoration: none; /* 밑줄이 사라진다. */
}

.accordion>ul>li>a {
	border-top: 1px solid #353535; /* 메뉴 위의 탑에 선 들어간다. */
	border-bottom: 1px solid 161616; /* 메뉴 위의 탑에 선 들어간다. */
}

.accordion>ul>li ul li a {
	color: #fff;
	height: 0;
}

.accordion>ul>li:hover ul li a {
	height: 30px;
}

.accordion>ul>li:hover ul {
	opacity: 1;
}

.accordion>ul>li li:hover {
	box-shadow: inset 0 1px #479544, inset 0 -1px #479544;
	background: #58b754
}

div#divImg {
	background-color: blue;
	position: absolute;
	left: 350px;
	top: 50px;
	width: 300px;
	height: 500px;
	font-size: 20px;
	color: white;
}
</style>
<script type="text/javascript">
	function showImage(obj) {
		/* console.log(obj.id+' '+obj.innerHTML+' '+obj.firstChild.nodeValue+' '+obj.nodeName+' '+obj.nodeType+' '+obj.firstChild.nodeType);
		alert(obj.id+' '+obj.innerHTML+' '+obj.firstChild.nodeValue+' '+obj.nodeName+' '+obj.nodeType+' '+obj.firstChild.nodeType); */
		
		alert(obj.nodeType == 1 ? obj.nodeName : 'Error'); //nodeType이 1 이면  true, false 이면 nodeName을 에러로 띄워라
		alert(obj.firstChild.nodeType == 3? obj.firstChild.nodeValue : 'Error');  //node타입에 따라 타입이 나온다. children을 하면 배열 안에 모든 것을 넣는다

		var div = document.getElementById("divImg");

		switch (obj.firstChild.nodeValue) {
		case 'SubMenu1':
			div.innerHTML = obj.firstChild.nodeValue + '선택';
			break;
		case 'SubMenu2':
			div.innerHTML = obj.firstChild.nodeValue + '선택';
			break;
		case 'SubMenu3':
			div.innerHTML = obj.firstChild.nodeValue + '선택';
			break;
		default:
			break;
		}
	}
</script>
</head>
<body>
	<div class="accordion">
		<ul>
			<li><a href="#">Menu1</a> <!--ul li 자식관계  -->
				<ul>
					<li><a href="#" id="sub2-1" onclick="showImage(this)">SubMenu1</a></li>
					<!-- firstChild는 SubMenu1,2,3이다, text이면 nodevalue 를 받는다-->
					<li><a href="#" id="sub2-2" onclick="showImage(this)">SubMenu2</a></li>
					<li><a href="#" id="sub2-3" onclick="showImage(this)">SubMenu3</a></li>
				</ul></li>
		</ul>
		<ul>
			<li><a href="#">Menu2</a>
				<ul>
					<li><a href="">SubMenu2-1</a></li>
					<li><a href="">SubMenu2-2</a></li>
					<li><a href="">SubMenu2-3</a></li>
				</ul></li>
		</ul>
		<ul>
			<li><a href="#">Menu3</a>
				<ul>
					<li><a href="">SubMenu3-1</a></li>
					<li><a href="">SubMenu3-2</a></li>
					<li><a href="">SubMenu3-3</a></li>
				</ul></li>
		</ul>
		<ul>
			<li><a href="#">Menu4</a>
				<ul>
					<li><a href="">SubMenu3-1</a></li>
					<li><a href="">SubMenu3-2</a></li>
					<li><a href="">SubMenu3-3</a></li>
				</ul></li>
		</ul>
		<ul>
			<li><a href="#">Menu5</a>
				<ul>
					<li><a href="">SubMenu3-1</a></li>
					<li><a href="">SubMenu3-2</a></li>
					<li><a href="">SubMenu3-3</a></li>
				</ul></li>
		</ul>
	</div>
	<div id="divImg">div</div>
</body>
</html>