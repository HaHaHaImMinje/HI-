<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" charset="UTF-8" content="width=device-width,initial-scale=1"><!--viewport �ش�� ����̽��� ȭ�� ���߱�  -->
<style type="text/css">
  #wrapper{
      width: 96%;
      margin:0 auto; 
  }
  header{
     width: 100%;
     height: 120px;
     background-color: gray;
     border-bottom: 1px solid black;
  }
  .header-text{
     font-size: 2em;
     color: white;
     text-align: center;
     line-height: 120px;
  }
  .content{
     float: left;
     width: 62.5%;
     height: 400px;
     padding: 1.5625%;
     background-color:#ffd800;
     text-align: center;
     line-height: 380px;
     font-size: 1.5em; 
  }
  .right-side{
   float: right;
   width: 31.25%;
   height: 400px;
   padding: 1.5625%;
   background-color: red;
   text-align: center;
   line-height: 380px;
   font-size: 1.5em; 
   
  }
  footer{
    width: 100%;
    height: 120px;
    background-color: blue;
    text-align: center;
    line-height: 380px;
    font-size: 1.5em; /*  em�� �ش� ��Ʈ�� ��� rem�� ?? �ֻ����� ���*/
    
  }
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<header>
			<h1 class="header-text">�����׸��� ���̾ƿ�</h1>
		</header>
		<section class="content">
			<h4>����</h4>
		</section>
		<aside class="right-side">
			<h4>���̵��</h4>
		</aside>
		<footer>
			<h4>Ǫ��</h4>
		</footer>
	</div>
</body>
</html>