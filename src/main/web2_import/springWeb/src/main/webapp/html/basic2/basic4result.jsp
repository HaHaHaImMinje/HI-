<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
    tr{
       background-color: gray;
       color: white;
       font-family: 굴림;
       font-size: 29px;
    }
    a{
       color: white;
       text-decoration: none;       
    }

</style>
</head>
<body topmargin="100">
  
  <table cellpadding="0" cellspacing="0" bgcolor="1" width="70%" align="center">
    <tr>
      <td><a href="basic4.jsp">LESSON:<%=request.getParameter("ls") %>선택하였음</a></td>
      <td><a href="basic4.jsp">GENDER:<%=request.getParameter("gender") %>선택하였음</a></td>
    </tr>
  </table>
</body>
</html>














