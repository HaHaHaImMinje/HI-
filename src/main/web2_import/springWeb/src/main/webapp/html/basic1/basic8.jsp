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
    font-family: �޸ո���ü;
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
      <%
        for(int i=0;i<7;i++){
      %>
       <tr onmouseover="this.style.backgroundColor='pink'"
       onmouseout="this.style.backgroundColor='white'" >
         <td onclick="this.style.backgroundColor='red'" ondblclick="this.style.backgroundColor='white'">1</td>
        <td onclick="this.style.backgroundColor='red'" ondblclick="this.style.backgroundColor='white'">I</td>
         <td onclick="this.style.backgroundColor='red'" ondblclick="this.style.backgroundColor='white'">���¸�</td>
        <td onclick="this.style.backgroundColor='red'" ondblclick="this.style.backgroundColor='white'">��츲</td>
       </tr>       
       <%
        }
       %>
     </tbody>
     <tfoot>
       <tr>
         <th colspan="4">�ֿ�������� ����� ��ȣ111-055-1234 ��ǥ �ڼ���</th>
       </tr>
     </tfoot>
   </table>

</body>
</html>











