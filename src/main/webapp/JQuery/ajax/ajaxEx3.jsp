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
			success : function(v) {	//url, type, dataType, success�� Json���� ����
				$("div").text(v);	//div �±׸� text�� �ٲ㼭 v�� �ҷ��Ͷ�
			}
		});
	}
	$(function() {
		$("BUTTON").dblclick(function() {	//��ư ����Ŭ���ϸ� ajaxProc�� ���̵� lang name�� �ҷ��´�.
			ajaxProc(this.id, this.lang, this.name);
			
		});
	});
	
</script>
</head>
<body>
	<button id="/web/student.do1?cmd=stud" lang="GET" name="text">STUDENT</button>	<!-- ��ư Ŭ���� web.xml�� ���� ������ *.do1�� �θ���. -->
	<button id="/web/professor.do1?cmd=professor" lang="POST" name="html">PROFESSOR</button>
	<div></div>
</body>
</html>