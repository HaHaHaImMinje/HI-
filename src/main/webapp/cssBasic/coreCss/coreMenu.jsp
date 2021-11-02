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

  .accordion > ul >li:hover ul li a{
       height: 30px;
    }


.accordion>ul>li:hover ul {
	opacity: 1;
}
.accordion>ul> li li:hover{
 box-shadow: inset 0 1px #479544,inset 0 -1px #479544;
background: #58b754 
}

</style>
</head>
<body>
	<div class="accordion">
		<ul>
			<li><a href="#">Menu1</a> <!--ul li 자식관계  -->
				<ul>
					<li><a href="">SubMenu1</a></li>
					<li><a href="">SubMenu2</a></li>
					<li><a href="">SubMenu3</a></li>
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
</body>
</html>