<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Draggable - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<style>
#draggable {
	width: 200px;
	height: 200px;
	padding: 0.5em;
}
body {
background-image : url(/web/Himage/venuemain.jpg)
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("div").draggable();
		$("div").mouseover(function() { //마우스 올리면 실행
			//$(this).text(''); 
			$(this).css('backgroundColor', 'blue');

			$("div").mouseout(function() {
				//$(this).text(''); 
				//$(this).css('backgroundColor','white').css("color","white").css("fontSize","20px");
				$(this).css({
					backgroundColor : 'gray',
					color : 'white',
					fontSize : "50px"
				});
			});
		});
	});
</script>
</head>
<body>
	<div id="draggable" class="ui-widget-content">
		<img src="/web/Himage/KakaoTalk_20210808_144228756.jpg" width=300
			height=300>
	</div>

	<div id="draggable" class="ui-widget-content">
		<button>움직여봐</button>
		<button>click!!</button>
	</div>
	<div id="draggable" class="ui-widget-content"></div>
	<div id="draggable" class="ui-widget-content">
		<p>짱이당</p>
	</div>
	<div id="draggable" class="ui-widget-content">
		<p>짱이당</p>
	</div>
	<div id="draggable" class="ui-widget-content">
		<p>짱이당</p>
	</div>
	<div id="draggable" class="ui-widget-content">
		<p>짱이당</p>
	</div>


</body>
</html>