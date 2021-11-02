<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <c:forEach var="i" items="${number }" varStatus="cnt">
    <h1>${cnt.count }:${i}</h1>
  </c:forEach>

   <c:forEach var="i" items="${vector }" varStatus="cnt">
    <h1>${cnt.count }:${i.author} ${i.subject} ${i.password} ${i.contents}</h1>
  </c:forEach>
</body>
</html>