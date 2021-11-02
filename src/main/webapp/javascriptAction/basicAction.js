
/*<input type = "radio" name = "lesson" value = "java" onclick = "changeImage(this)">java
<input type = "radio" name = "lesson" value = "oracle" onclick = "changeImage(this)">oracle
<input type = "radio" name = "lesson" value = "xml" onclick = "changeImage(this)">xml
<input type = "radio" name = "lesson" value = "html" onclick = "changeImage(this)">html
<input type = "radio" name = "lesson" value = "javascipt" onclick = "changeImage(this)">javascipt*/

function changeImage(obj){ 
	console.log(obj.value); //console.은 크롬에서 밖에 안된다.
	var fd=document.getElementById("fd");
	fd.style.display='inline';
	switch (obj.value) {
	case 'java':
		fd.innerHTML="<img src=\"/web/img/아이오닉7.jpg\">"; /*주소에 쌍따옴표가 있으면 역슬러쉬로 해야한다*/
		break;
	case 'oracle':
		break;
	case 'xml':
		break;
	case 'html':
		break;
	case 'javascipt':
		break;

	default:
		break;
	}
}