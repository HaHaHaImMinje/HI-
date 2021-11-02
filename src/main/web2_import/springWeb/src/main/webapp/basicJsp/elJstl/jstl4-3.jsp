<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <h2>DATA1<%=request.getParameter("data1") %></h2><h3>${param.data1}</h3>
  <h2>DATA2<%=request.getParameter("data2") %></h2><h3>${param.data2}</h3>
  <ul>
  <%
    String []res=request.getParameterValues("lesson");
    for(String item:res){
  %>
   <li><%=item%></li>
  <%
    }
  %>   
  </ul>
  <c:set var="cnt" value="${functions:length(paramValues.lesson)}"/>
  <c:set var="array" value="${paramValues.lesson}"></c:set>
  
  <c:forEach var="i" begin="0" end="${cnt}">
     ${array[i]}
  </c:forEach>
  
  <c:forEach var="j" items="${array}">
      <h1>${j}</h1>
  </c:forEach>
</body>
</html>


















