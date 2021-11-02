<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  *{
     margin: 0;
     padding: 0;
  }
  body{
     font-family:arial,sans-serif;
     font-size: 100%;
     margin: 3em;
     background: #666;
     color: #fff;
  }
  h2,p{
    font-size: 100%;
    font-weight: normal;
  }
  ul,li{
  list-style: none;
  }
  ul{
   overflow:hidden;
   padding: 3em; 
  }
  ul li a{
    text-decoration: none;
    color: #000;
    background: #ffc;
    display: block;
    height: 10em;
    width: 10em;
    padding: 1em;
  }
  ul li{
    margin: 1em;
    float: left;
  }
  ol{
    text-align: center;
  }
  ol li{
    display: inline; padding-right: 1.5em;
  }
  ol li a{
   color: #fff;
  }
</style>
</head>
<body>
  <ol>
    <li><strong>Step#1</strong></li>
    <li><a href="core2.jsp">Step #2</a> </li>
    <li><a href="core3.jsp">Step #3 </a></li>
    <li><a href="core4.jsp">Step #4</a> </li>
    <li><a href="core5.jsp">Step #5</a> </li>
  </ol>
  
  <ul>
    <li>
       <a href="#">
       <h2>Title #1</h2>
       <p>Text Content#1</p>
       </a>
    </li>  
    <li>
       <a href="#">
       <h2>Title #2</h2>
       <p>Text Content#2</p>
       </a>
    </li>  
    <li>
       <a href="#">
       <h2>Title #3</h2>
       <p>Text Content#3</p>
       </a>
    </li>  
    <li>
       <a href="#">
       <h2>Title #4</h2>
       <p>Text Content#4</p>
       </a>
    </li>  
    <li>
       <a href="#">
       <h2>Title #5</h2>
       <p>Text Content#5</p>
       </a>
    </li>  
  </ul>
</body>
</html>