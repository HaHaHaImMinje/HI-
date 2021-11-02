<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>FirstHtml</title>
<style type="text/css">
  /*  p#p1{
     font-size: 50px;
     font-family: 굴림;
     color: red;
   }
   p#p2{
     font-size: 150px;
     font-family:궁서;
     color: blue;
   }
   p#p3{
     font-size: 350px;
     font-family: 휴먼매직체;
     color: cyan;
   } */
   
   .a{
     font-size: 50px;
     font-family: 굴림;
     color: red;
   }
   p.b{
     font-size: 150px;
     font-family:궁서;
     color: blue;
   }
   p.c{
     font-size: 350px;
     font-family: 휴먼매직체;
     color: cyan;
   } 
</style>
<script type="text/javascript">
   function showMessage(id){
	   document.getElementById(id).innerHTML='';
   }
</script>
</head>
<body>
  <p align="left" id="p1" class="a" onclick="showMessage('p1')">JavaAction</p>
  <p align="center" id="p2" class="b" onclick="showMessage('p2')">SpringAction</p>
  <p align="right" id="p3" class="c" onclick="showMessage('p3')">HtmlAction</p>
  <pre class="a">PreAction</pre>
</body>
</html>













