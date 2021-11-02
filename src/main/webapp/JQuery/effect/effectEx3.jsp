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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
	function callback() {
		setTimeout(function(){
		   $("img#effects").show();
		},1000); 
	}
	$(function() {
		$("button").click(function(e) {
			e.preventDefault();
			var selectedEffect = $("select#effectsType").val();
			$("img#effects").effect(selectedEffect, 3000, callback);
		});
	});
</script>
</head>
<body>
	<div>
		<img id="effects" alt="" src="/web/images/그랜저.jpg">
	</div>
	<br>
	<select name="effects" id="effectsType">
		<option value="blind">blind</option>
		<option value="bounce">bounce</option>
		<option value="clip">clip</option>
		<option value="drop">drop</option>
		<option value="exlode">exlode</option>
		<option value="fade">fade</option>
		<option value="puff">puff</option>
		<option value="pulsate">pulsate</option>
		<option value="shake">shake</option>
	</select>
	<button id="button">Run Effect</button>
</body>
</html>












