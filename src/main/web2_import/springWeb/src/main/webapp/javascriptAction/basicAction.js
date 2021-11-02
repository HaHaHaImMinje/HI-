/*<input type="radio" name="lesson" value="java" onclick="changeImage(this)">Java
<input type="radio" name="lesson" value="oracle" onclick="changeImage(this)">oracle
<input type="radio" name="lesson" value="xml" onclick="changeImage(this)">xml
<input type="radio" name="lesson" value="html" onclick="changeImage(this)">html
<input type="radio" name="lesson" value="javascript" onclick="changeImage(this)">javascript*/

function changeImage(obj){
	console.log(obj.value);
	var fd=document.getElementById("fd");
	fd.style.display='inline';
	switch (obj.value) {
	case 'java':
		fd.innerHTML="<img src=\"/web/imgBook/02KCAT2001.jpg\" width=200 height=200>";
		break;
	case 'oracle':		
		fd.innerHTML="<img src=\"/web/imgBook/03HYSC2004.jpg\" width=200 height=200>";
		break;
	case 'xml':		
		fd.innerHTML="<img src=\"/web/imgBook/04SAED1907.jpg\" width=200 height=200>";
		break;
	case 'html':		
		fd.innerHTML="<img src=\"/web/imgBook/21LSMT2015.jpg\" width=200 height=200>";
		break;
	case 'javascript':		
		fd.innerHTML="<img src=\"/web/imgBook/25ESG02020.jpg\" width=200 height=200>";
		break;

	default:
		break;
	}
	
	
} 