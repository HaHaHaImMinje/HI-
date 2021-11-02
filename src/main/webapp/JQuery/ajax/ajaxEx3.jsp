<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function ajaxProc(url, type, dataType) {
		$.ajax({
			url : url,
			type : type,
			dataType : dataType,
			success : function(v) {	//url, type, dataType, success를 Json으로 만듬
				$("div").text(v);	//div 태그를 text로 바꿔서 v를 불러와라
			}
		});
	}
	$(function() {
		$("BUTTON").dblclick(function() {	//버튼 더블클릭하면 ajaxProc의 아이디 lang name을 불러온다.
			ajaxProc(this.id, this.lang, this.name);
			
		});
	});
	
</script>
</head>
<body>
	<button id="/web/student.do1?cmd=stud" lang="GET" name="text">STUDENT</button>	<!-- 버튼 클릭시 web.xml의 서블릿 매핑한 *.do1을 부른다. -->
	<button id="/web/professor.do1?cmd=professor" lang="POST" name="html">PROFESSOR</button>
	<div></div>
</body>
</html>