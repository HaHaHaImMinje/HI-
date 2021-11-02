<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body topmargin="50">
<!-- <table width="70%" border="100" align="center" cellpadding="50" cellspacing="0">
   <tr>
     <td bgcolor="red">&nbsp;</td>
     <td bgcolor="blue">&nbsp;</td>
     <td bgcolor="black" colspan="2">&nbsp;</td>          
   </tr>
   <tr>
     <td bgcolor="yellow">&nbsp;</td>
     <td bgcolor="cyan">&nbsp;</td>
     <td bgcolor="orange">&nbsp;</td>
     <td bgcolor="pink" rowspan="2">&nbsp;</td>
          
   </tr>
   <tr>
     <td bgcolor="green">&nbsp;</td>
     <td bgcolor="gray">&nbsp;</td>
     <td bgcolor="blue">&nbsp;</td>  
    
   </tr>
</table> -->
<table width="90%" border="1" align="center" cellpadding="30" cellspacing="0">
    <tr>
       <%
          for(int i=2;i<=9;i++){
       %>
       <th><%=i%>단</th>
       <%
          }
       %>

    </tr>
    <%
      for(int i=1;i<=9;i++){
    %>
    <tr>
        <%
          for(int j=2;j<=9;j++){
        %>
          <td><%=j%>*<%=i%>=<%=i*j %></td>
        <% 	  
          }
        %>
    </tr>
    <%
      }
    %>

</table>
</body>
</html>
































