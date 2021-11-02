<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>
          
   
	
[
<c:forEach var="i" items="${AjaxList}" varStatus="cnt">
    {"no":${i.no},
    "name":"${i.name}",
    "email":"${i.email}",
    "pwd":"${i.pwd}",
     "regdate":"${i.regdate}"
    }
    <c:choose>
      <c:when test="${functions:length(AjaxList)!= cnt.count }">,</c:when>
    </c:choose>
    
</c:forEach>
]