<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- ${function :length(AjaxList)}
${AjaxList} --%>
[ 
<c:forEach var="i" items=" ${AjaxList}" varStatus="cnt">
	{"no":${i.no},
	"name":"${i.name}",
	"email":"${i.email}",
	"pwd":"${i.pwd}",
	"regdate":"${i.regdate}"
	}
	<c:choose>
		<c:when test="${functions:length(AjaxList) != cnt.count}">,</c:when>
	</c:choose>
</c:forEach>
]
