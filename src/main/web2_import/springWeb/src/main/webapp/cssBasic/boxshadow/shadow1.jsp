<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
   <style type="text/css">
     div{
        width: 600px;
        background-color: pink;
        margin-bottom:30px; 
        padding: 10px 20px 30px 40px;
        color: white;
        font-size: 1.9em;
     }
     div.box1{
       box-shadow: 10px 10px black;
     }   
     div.box2{
       box-shadow: 10px 10px 10px black;
     }   
     div.box3{
       box-shadow: 10px 10px 5px 20px black initial;
     }   
     div.box4{
       box-shadow: 10px 10px 5px 20px black inset;
     }   
     div.box5{
       box-shadow: 10px 10px black;
     }   
   </style>
   
</head>
<body>
<!-- x 가로위치 ,y 세로위치 , blur 그림자를 흐릿하게만든 값이 클수록 더 흐릿해진다 spread 양수면 그림자를 확장 축소  color -->
 <div class="box1">
   <p>Box-shadow:10px 10px;</p>
 </div>
 <div class="box2">
   <p>Box-Shadow:10px 10px 10px</p>
 </div>
 <div class="box3">
   <p>Box-Shadow:10px 10px 10px 10px black initial</p>
 </div>
 <div class="box4">
   <p>Box-Shadow:10px 10px 10px 10px black inset</p>
 </div>
  
 <div class="box5">
   <p>Box-Shadow:5px 5px</p>
 </div>
</body>
</html>


