<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#stud").click(function() {
			$.ajax({
				url : '/springWeb/studentList.do',
				type : 'POST',
				dataType : 'json', //text가 아닌 json으로 해야하는데 왜?
				success : function(v) {
					/* $.each(v, function(index, dom) {
						$.each(v, function(index, dom) {
							console.log(dom.studno + ' ' + dom.name);
						}); 
					});*/
				},
				error : function(e) {
					alert('error' + e);
				}
			});
		});

		$("button#emp").click(function() {
			$.ajax({
				url : '/springWeb/EmpList.do',
				type : 'POST',
				dataType : 'json', //text가 아닌 json으로 해야하는데 왜?
				success : function(v) {
					console.log(v);
				},
				error : function(e) {
					alert('error' + e);
				}
			});
		});

		$("button#dept").click(function() {
			$.ajax({
				url : '/springWeb/DeptInfo.do',
				type : 'POST',
				data : {no:10},
				dataType : 'json', //text가 아닌 json으로 해야하는데 왜?
				success : function(v) {
					console.log(v);
				},
				error : function(e) {
					alert('error' + e);
				}
			});
		});
	});
</script>
</head>
<body>
	<button id="stud">Student</button>
	<button id="emp">EMP</button>
	<button id="dept">DEPT</button>
</body>
</html>