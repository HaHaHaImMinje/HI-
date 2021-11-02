<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   div,p{
      padding: 20px;
      margin: 50px;      
   }
   div{
      background: yellow;
      color: white;
   }
   div + p{
     background: red;
     color: blue;
   }
   p+p{
    background: green;
    color: yellow;
   } 
</style>
</head>
<body>
<div>DIVELEMENT!</div>
<p>Sibling Selector(인접선택자1)</p>
<p>Sibling Selector(인접선택자2)</p>

</body>
</html>