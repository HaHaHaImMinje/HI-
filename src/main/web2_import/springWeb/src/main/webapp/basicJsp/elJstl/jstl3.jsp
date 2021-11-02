<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   tr#head{
      background-color: black;
      color: white;
   }
</style>
<c:set var="i" value="9" scope="page"/>
<c:set var="j" value="9" scope="page"/>
</head>
<body topmargin="50">
<%--  <c:out value="${i}"></c:out> --%>
<%--  <%=i %> --%>
<%-- ${i} --%>
  <table cellpadding="10" cellspacing="0" border="1" width="90%" align="center" >
    <thead>
     <tr id="head">
       <c:forEach var="h" begin="2" end="${i}" step="1">
          <th>${h}단</th>
       </c:forEach>
     </tr>
    </thead>
    <tbody>
      <c:forEach var="a" begin="1" end="${i}">
       <tr>
         <c:forEach var="b" begin="2" end="${j}">
           <td>${b}*${a}=${a*b}</td>
         </c:forEach>
       </tr>
      </c:forEach>
    </tbody>
  </table>
  <br>
  <table cellpadding="10" cellspacing="0" border="1" width="50%" align="center" >
  <c:choose>
    <c:when test="${param.file eq 'img1' }">
    <thead>
    <tr>
      <th><c:import url="img1.jsp"></c:import>  </th>
    </tr>
    </thead>
    </c:when>
    <c:otherwise>
      <tfoot>
     <tr>
       <th><c:import url="img2.jsp"></c:import></th>
     </tr>
    </tfoot>
    </c:otherwise>  
    
    
  </c:choose>   

  </table>
</body>
</html>




