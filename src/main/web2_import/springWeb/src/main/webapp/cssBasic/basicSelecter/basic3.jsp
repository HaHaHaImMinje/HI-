<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   div,p{
     padding: 10px;
     margin: 10px;
   }
   [title]{
      background: #ffb100;
      color: white;
      font-weight: bold;
   }
   [title='two']{
     border: 20px solid red;
   }
   p[title='two']{
     background: yellow;
     color: pink;
   }
   
   p[title~='second']{
        background: gray;
   }  
   
   p[class^="second"]{
      background: green;
   }
   
   p[class$='wrap']{
      background: cyan;
   }
   [class*='two']{
    background: black;
    color: white;
    border: 10px solid red; 
   }
</style>
</head>

<body>
<div title="one">selector[ATTRIBUTE NAME]</div>
<div title="two">selector[ATTRIBUTE NAME]=value</div>
<p title="two">SELECTOR[ATTRIBUTE NAME]=VALUE</p>
<p title="first second third">SELECTOR[ATTRIBUTE NAME]=VALUE first second third</p>
<p class="second-container">SELECT[ATTRIBUTE]second-container</p>
<p class="second-wrap">SELECT[ATTRIBUTE]second-wap</p>
<div class="onetwothree">DIV SHOW</div>
</body>
</html>