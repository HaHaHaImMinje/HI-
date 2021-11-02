<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Draggable - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #draggable { width: 150px; height: 150px; padding: 0.5em; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "div" ).draggable();
    $("div").mouseover(function(){
    	//$(this).text('');
    	$(this).css({backgroundColor:'blue',color:'white',fontSize:"20px"});    	
    	$("div").mouseout(function(){
        	//$(this).text('');
        	//$(this).css('backgroundColor','white').css("color","white").css("fontSize","20px");
        	$(this).css({backgroundColor:'white',color:'blue',fontSize:"50px"});
        });
    });
    
  });
  </script>
</head>
<body>
 
<div id="draggable" class="ui-widget-content">
  <p>Drag me around1</p>
</div>
<div id="draggable" class="ui-widget-content">
  <p>Drag me around2</p>
</div>
<div id="draggable" class="ui-widget-content">
  <p>Drag me around3</p>
</div>
<div id="draggable" class="ui-widget-content">
  <p>Drag me around4</p>
</div>
 
 
</body>
</html>