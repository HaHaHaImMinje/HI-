<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  div,p{
     padding: 30px;
     /* background: gray; */
     margin: 55px;
     border: 10px solid red;     
  }
  div {
	background: blue;
  }
  div > div{
     background: red;
  }
  div > p{
     background: yellow;
     color: white;
  }
</style>
</head>
<body>
   <div>
     <p>Child Selector1(자식선택자)</p>
     <div>Chiild Selector2(자식선택자)</div>
     <h1>
        <p>P ELEMENT!</p>
     </h1>
   </div>
</body>
</html>