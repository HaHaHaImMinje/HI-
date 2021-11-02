<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.accordion {
	font: bold 1em/2 �������;
	border: 3px solid #1d1d1d;
	width: 300px;
	border-radius: 5px; /* �𼭸� �ձ۰� */
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

.accordion>ul>li ul { /* > : �ڽ� ' ' : �ڼ� */
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
	text-align: center; /* ��� ���� �ϱ�  */
	text-decoration: none; /* ������ �������. */
}

.accordion>ul>li>a {
	border-top: 1px solid #353535; /* �޴� ���� ž�� �� ����. */
	border-bottom: 1px solid 161616; /* �޴� ���� ž�� �� ����. */
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
		
		alert(obj.nodeType == 1 ? obj.nodeName : 'Error'); //nodeType�� 1 �̸�  true, false �̸� nodeName�� ������ �����
		alert(obj.firstChild.nodeType == 3? obj.firstChild.nodeValue : 'Error');  //nodeŸ�Կ� ���� Ÿ���� ���´�. children�� �ϸ� �迭 �ȿ� ��� ���� �ִ´�

		var div = document.getElementById("divImg");

		switch (obj.firstChild.nodeValue) {
		case 'SubMenu1':
			div.innerHTML = obj.firstChild.nodeValue + '����';
			break;
		case 'SubMenu2':
			div.innerHTML = obj.firstChild.nodeValue + '����';
			break;
		case 'SubMenu3':
			div.innerHTML = obj.firstChild.nodeValue + '����';
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
			<li><a href="#">Menu1</a> <!--ul li �ڽİ���  -->
				<ul>
					<li><a href="#" id="sub2-1" onclick="showImage(this)">SubMenu1</a></li>
					<!-- firstChild�� SubMenu1,2,3�̴�, text�̸� nodevalue �� �޴´�-->
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