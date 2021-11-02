<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <style type="text/css">
body {
background-color: red;
}
/* landscape is 가로 > 세로 */
@media screen and (orientation: landscape) {
   body {
      background-color: blue;
   }
}
/* portrait is 가로 <= 세로 */
@media screen and (orientation: portrait) {
   body {
      background-color: pink;
   }
}
</style>

<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
<script type="text/javascript">
	$(function() {

	});
</script>
</head>
<body>
	<h1>Media Query</h1>
</body>
</html>
