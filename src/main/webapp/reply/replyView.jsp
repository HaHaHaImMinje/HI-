<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="rss.css">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function delFun(no) {
		ajaxRequest('/springWeb/ajaxDelete.do', {
			no : no
		}, 'json');
	}
	function ajaxReplyList(v) {
		var temp = "";
				$.each(v,
						function(index, dom) {
							temp += "<div class=\"list_cmt\">";
							temp += "<div class=\"cmt_head\"></div>";
							temp += "<div class=\"cmt_body\">";
							temp += "<span class=\"info_append\">";
							temp += "<span class=\"txt_name\">" + dom.id
									+ "</span>";
							temp += "<span class=\"txt_bar\">|</span>";
							temp += "<span class=\"txt_time\">" + dom.regdate
									+ "</span></span>";
							temp += "<p class=\"txt_desc\">" + dom.contents
									+ "";
							temp += "</p>";
							temp += "</div>";
							temp += "<div class=\"cmt_foot\">";
							/* temp += "<a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a href=\"#none\">수정</a><span class=/"txt_bar/">|</span><a href='springWeb/ajaxDelete.do?no='>삭제</a><span class=\"txt_bar\">|</span><a href=\"#none\">신고</a>"; */
							temp += "</div>";
							temp += "</div>";
						});
		$("div#show").html(temp);
		$("textarea#txnew").val('');
		$("textarea#txnew").focus();
	}
	function ajaxRequest(url, data, dataType) {
		$.ajax({
			url : url,
			type : 'POST',
			data : data,
			dataType : dataType,
			success : function(v) {
				ajaxReplyList(v);
			},
			error : function(e) {
				alert('error' + e);
			}
		});
	}
	$(function() {
		$("input#send").click(
				function() {
							ajaxRequest('${pageContext.request.contextPath}/ajaxReplyInsert.do',
									$("form#ajaxForm").serialize(), 'json');
						});

		$("textarea.tf_cmt")
				.focus(
						function() {
							$(this).text('');
							if ('${id}' == null || '${id}' == '') {
								alert('LoginCheck!');
								$(this).blur();
								document.location.href = '/springWeb/springAjax/basic/signin.jsp';
							}
						});
		$("textarea.tf_cmt").keyup(
				function() {
					if ($("textarea").val().length > 30) {
						alert('30글자만 가능!');
						$("textarea.tf_cmt").val(
								$("textarea.tf_cmt").val().substring(0, 30));
					}
					$("span.txt_byte").text($("textarea").val().length);
				});
	});
</script>
</head>
<body>
	<div class="cmt_comm">
		<form action="#" id="ajaxForm" name="ajaxForm">
			<fieldset class="fld_cmt">
				<legend class="screen_out">댓글 작성</legend>
				<textarea name="contents" class="tf_cmt" cols="90" rows="5"
					title="한줄 토크를 달아주세요"> 한줄 토크를 달아주세요!(30자)</textarea>
				<!-- <button type="submit" class="img_sample btn_cmt">등록</button> -->
				<input type="hidden" name="id" value="${id}"> <input
					type="hidden" name="job" value="new"> <input id="send"
					type="button" value="등록"
					style="position: absolute; top: 50px; width: 100px; height: 54px;">
				<p class="info_append">
					<span class="screen_out">입력된 바이트 수 : </span> <span class="txt_byte">30</span>
					<!--30자 -->
					<span class="txt_bar">|</span> <a href="#none">댓글 운영원칙</a>
				</p>
			</fieldset>
		</form>
		<strong class="screen_out">전체 댓글</strong>
		<div id="show"></div>
</body>
</html>