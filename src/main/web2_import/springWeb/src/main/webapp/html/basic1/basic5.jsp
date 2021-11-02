<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
  function change(e){
	  e.src='/web/img/5.jpg';
	  e.border=5;
  }
</script>
</head>
<body>
<%
  for(int i=0;i<=20;i++){
%>
<img alt="" src="/web/img/6.jpg" width="200" height="200" border="1"
                       hspace="10" vspace="5" onclick="change(this)">
<%
  }
%>
</body>
</html>