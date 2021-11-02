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
     font-family:휴먼매직체;
     font-size: 20px;
     margin: 2.1em;
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
  ul li {
  margin: 1em;
  float: left;
  }
  ul li a{
    text-decoration: none;
    color: #000;
    background: pink;
    display: block;
    height: 10em;
    width: 10em;
    padding: 1em;
    -moz-box-shadow:5px 5px 7px rgba(33,33,33,1);/* 파이어폭스 */
    -webkit-box-shadow:10px 10px 10px rgba(255,255,255,0.3);/* 크롬 사파리 */
    box-shadow:10px 10px 10px rgba(255,255,255,0.3);
  }
  ul li h2{
    font-size: 140%;
    font-weight: bold;
    padding-bottom: 10px;
  }
  ul li p{
    font-family: "Reenie Beanie",arial,sans-serif;
    font-size: 100%;
  }
  ol{
    text-align: center;
  }
  ol li{
    display: inline;padding-right: 1.5em;
  }
  ol li a{
   color: #fff;
  }
</style>
</head>
<body>
  <ol>
    <li><a href="core1.jsp">Step #1 </a></li>
    <li><strong>Step#2</strong> </li>
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
    <li>
       <a href="#">
       <h2>Title #6</h2>
       <p>Text Content#6</p>
       </a>
    </li>  
    <li>
       <a href="#">
       <h2>Title #7</h2>
       <p>Text Content#7</p>
       </a>
    </li>  
    <li>
       <a href="#">
       <h2>Title #8</h2>
       <p>Text Content#8</p>
       </a>
    </li>  
  </ul>
</body>
</html>