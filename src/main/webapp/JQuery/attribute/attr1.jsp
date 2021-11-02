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
	$(function() {
		/* alert($("div").length);
		alert($("div").attr("id")); */
		$("div").attr("id", function(i, data) {
			return "div-id" + i;

		}).each(function(i2, dom) {
			//alert("i2="+i2+' '+dom.id+' '+this.id);
			//alert("i="+i+"i2="+i+this.id);
			$("span", this).html("(ID='<B>" + this.id + "</B>')"); //this는 div 의미
		});
		
		//alert($($("img")[0])).attr("alt", $($("img")[0])).attr("src")); //alt 마우스 올리면 설명 나오는 값
		/* for(var i = 0; i<$("img").length; i++){
		$($("img")[i]).attr("title",($($("img")[0])).attr("src")));
		} */
		
		$("div").eq(0).click(function() {
			$("img").attr("src", function(index, data) {
				return "/web/images/anya9.jpg"; //글 클릭하면 모든 사진 바꿈
			}).each(function(index2, dom) {
				//alert(dom.src);
				//$(this).attr("title", dom.src); //이거 사용해도 되고 밑에것 사용해도됨
				this.title = $(dom).attr("src");
			});
		});
	});
</script>
</head>
<body>
	<div id="d1" lang="show1">
		ZERO-TH<span></span>
	</div>
	<div id="d2" lang="show2">
		FIRST<span></span>
	</div>
	<div id="d3" lang="show3">
		SECOND<span></span>
	</div>
	<img src="/web/images/anya9.jpg" width=200 height=200>
	<img src="/web/images/anya8.jpg" width=200 height=200>
	<img src="/web/images/anya7.jpg" width=200 height=200>
</body>
</html>