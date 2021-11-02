<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Accordion - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
/* var nodeValue(obj){
	alert(obj);
} */ //parseInt 정수로 바꾸기
	$(function() {
		$("#accordion").accordion();
		$("h3").click(function() {
			 if(parseInt($(this).text().split(' ')[1])==4){
		          $("p").eq(parseInt($(this).text().split(' ')[1])-1).css("color","red");
		          $("p").eq(parseInt($(this).text().split(' ')[1])).css("color","red");
		       }else{
		       $("p").eq(parseInt($(this).text().split(' ')[1])-1).css("color","red");
		       }

			/* switch(parseInt($(this).text().split(' ')[1])) { 
			case 1:
				alert('1');
				break;
			case 2:
				alert('2');
				break;
			case 3:
				alert('3');
				break;
			} */
		});
	});
	 	
</script>
</head>
<body>

	<div id="accordion" style="width: 1000px">
		<h3>안녕</h3>
		<div>
			<p>안녕 나는 지금 복습 중이야!</p>
		</div>
		<h3>잘자</h3>
		<div>
			<p>더열심히해야 취업할 수있을것 같은데?</p>
		</div>
		<h3>힘내</h3>
		<div>
			<p>힘내자</p>
			<ul>
				<li>List item one</li>
				<li>List item two</li>
				<li>List item three</li>
			</ul>
		</div>
		<h3>Section 4</h3>
		<div>
			<p>Cras dictum. Pellentesque habitant morbi tristique senectus et
				netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum
				primis in faucibus orci luctus et ultrices posuere cubilia Curae;
				Aenean lacinia mauris vel est.</p>
			<p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim
				consequat lectus. Class aptent taciti sociosqu ad litora torquent
				per conubia nostra, per inceptos himenaeos.</p>
		</div>
	</div>


</body>
</html>