<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function sendAjax() {
		$.ajax({
			url : '/web/ajaxInsert.do?cmd=ajaxInsert', //cmd= 는 path나 redirect로
			type : 'POST',
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			dataType : 'text',
			//data:{name:$("input#name").val(),email:$("input#email").val(),pwd:$("input#pwd").val()},
			data : $("form#frm").serialize(),
			success : function(result) {
				console.log(result);
			}
		});
	}
	$(function() {
		$("button").click(function() {
			sendAjax();
		});
	});
</script>
</head>
<body>

	<div class="container">
		<h2>Ajax Form Insert</h2>
		<form enctype="application/x-www-form-urlencoded" name="frm" id="frm">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" name="name"
					placeholder="Enter email">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="Enter email">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" name="pwd"
					placeholder="Enter password">
			</div>

			<button type="button" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>



