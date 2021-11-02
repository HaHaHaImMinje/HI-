<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  tr#headtr{
    background: black;
    color: white;
    font-weight: bold;
    font-family: 휴먼매직체;
  }
  /* tr.a{
    background: pink;    
  }
  tr.b{
    background: red;    
  }
  tr.c{
    background: blue;    
  }
  tr.d{
    background: yellow;    
  }
  tr.e{
    background: cyan;    
  } */
  
</style>
</head>
<body topmargin="50">
   <table cellpadding="20" cellspacing="0" width="80%" align="center" border="1">
     <thead>
       <tr id="headtr">
         <th>NO</th>
         <th>NAME</th>
         <th>MESSAGE</th>         
         <th>EXECUTE</th>         
       </tr>       
     </thead>
     <tbody>
       <tr onmouseover="this.style.backgroundColor='pink'"
       onmouseout="this.style.backgroundColor='white'" >
         <td onclick="this.style.backgroundColor='red'" ondblclick="this.style.backgroundColor='white'">1</td>
        <td onclick="this.style.backgroundColor='red'" ondblclick="this.style.backgroundColor='white'">I</td>
         <td>이택체</td>
         <td>안녕하세요<i>여러분</i></td>
       </tr>
       <tr onmouseover="this.style.backgroundColor='pink'"
       onmouseout="this.style.backgroundColor='white'" >
         <td>2</td>
         <td>b</td>
         <td>볼드체</td>
         <td>안녕하세요<b>여러분</b></td>
       </tr>
       <tr onmouseover="this.style.backgroundColor='pink'"
       onmouseout="this.style.backgroundColor='white'" >
         <td>3</td>
         <td>sub</td>
         <td>아래첨자</td>
         <td>안녕하세요<sub>여러분</sub></td>
       </tr>
       <tr onmouseover="this.style.backgroundColor='pink'"
       onmouseout="this.style.backgroundColor='white'" >
         <td>4</td>
         <td>sup</td>
         <td>위첨자</td>
         <td>안녕하세요<sup>여러분</sup></td>
       </tr>
       <tr onmouseover="this.style.backgroundColor='pink'"
       onmouseout="this.style.backgroundColor='white'" >
         <td>5</td>
         <td>u</td>
         <td>밑줄</td>
         <td>안녕하세요<u>여러분</u></td>
       </tr>
     </tbody>
     <tfoot>
       <tr>
         <th colspan="4">쌍용정보통신 사업자 번호111-055-1234 대표 박성종</th>
       </tr>
     </tfoot>
   </table>

</body>
</html>











