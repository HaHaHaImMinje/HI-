<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 경로 -->
<a href="basic4.jsp">Click1</a>
<a href="./../../basic4.jsp">Click2</a>
<a href="/web/basic4.jsp">Click3</a>
<a href="/web/html/basic1/basic4.jsp">Click4</a>
<a href="#">Click5</a>
<a href="javascript:messageDialog()">FunctionCall</a>
</body>
<script type="text/javascript">
function messageDialog(){
	alert('firstMessage');
}
</script>
</html>


