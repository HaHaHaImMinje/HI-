<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%-- ${param.cnt}
<%=request.getParameter("cnt") %>
 --%>
   <%-- <%
    for(int i=1;i<=Integer.parseInt(request.getParameter("cnt"));i++){
    %>	
    <h<%=i%>>일원짱</h<%=i%>>
    <%	
    }
   %> --%>
   <a:forEach var="i" begin="1" end="${param.cnt}" step="2">
      <h${i}>우진짱</h${i}>
   </a:forEach>
   
   
</body>
</html>




