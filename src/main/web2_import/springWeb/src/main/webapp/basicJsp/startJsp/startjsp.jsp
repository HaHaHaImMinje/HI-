<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css"></style>
<script type="text/javascript">

</script>
</head>
<body>
<%
  int cnt=Integer.parseInt(request.getParameter("cnt"));
%>
<%
  for(int i=0;i<cnt;i++){
%>
<img alt="" src="/web/imgBook/01TCSC2005.jpg">
<%
  }
%>

</body>
</html>