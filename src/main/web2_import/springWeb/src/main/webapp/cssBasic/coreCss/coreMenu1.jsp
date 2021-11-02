<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   .accordion{
      font: bold 1em/2 맑은고딕;
      border: 2px solid #1d1d1d;
      width: 300px;
      border-radius: 5px;      
   }
   .accordion > ul{
     margin: 0;
     padding: 0;
   }
    .accordion ul, .accordion li{
     list-style: none;
    }
    .accordion >ul > li{
       background: #292929;
       margin: 0;
       padding: 0;
    }
    
    .accordion > ul >li ul{
        opacity: 0;
        margin: 0;
        padding:0;
    }
    .accordion >ul li li{
       background: #525252;
    }
    
    .accordion a{
       display: block;
       color: #ccc;
       text-align: center;
       text-decoration: none;
    }
    .accordion >ul >li >a{
       border-top: 1px solid #353535;
       border-bottom: 1px solid #161616; 
    }
    .accordion >ul >li ul li a{
      color: #fff;
       height: 0; 
    }
    
    .accordion > ul >li:hover ul li a{
       height: 30px;
    }
    
    .accordion >ul >li:hover ul{
       opacity: 1;
    }
    
    .accordion >ul >li li:hover{
      box-shadow: inset 0 1px #479544,inset 0 -1px #479544;
      background: #58b754;
    }
    div#divImg{
       background-color: #292929;
       position: absolute;
       left: 350px;
       top: 10px;
       width: 1000px;
       height: 900px;
       color: white;
       font-size: 20px;
       
    }

</style>

</head>
<body>


<div class="accordion">
   <ul>
      <li>
         <a href="#">Menu1</a>
         <ul>
           <li><a href="#" id="sub1-1" onclick="showImage(this)">SubMenu1</a></li>
           <li><a href="#" id="sub1-2" onclick="showImage(this)">SubMenu2</a></li>
           <li><a href="#" id="sub1-3" onclick="showImage(this)" >SubMenu3</a></li>
         </ul>
      </li>
   </ul>
   
   <ul>
      <li>
         <a href="#">Menu2</a>
         <ul>
           <li><a href="">SubMenu2-1</a></li>
           <li><a href="">SubMenu2-2</a></li>
           <li><a href="">SubMenu2-3</a></li>
         </ul>
      </li>
   </ul>
   
   <ul>
      <li>
         <a href="#">Menu3</a>
         <ul>
           <li><a href="">SubMenu3-1</a></li>
           <li><a href="">SubMenu3-2</a></li>
           <li><a href="">SubMenu3-3</a></li>
         </ul>
      </li>
   </ul>
   
   <ul>
      <li>
         <a href="#">Menu4</a>
         <ul>
           <li><a href="">SubMenu4-1</a></li>
           <li><a href="">SubMenu4-2</a></li>
           <li><a href="">SubMenu4-3</a></li>
         </ul>
      </li>
   </ul>
   
   <ul>
      <li>
         <a href="#">Menu5</a>
         <ul>
           <li><a href="">SubMenu5-1</a></li>
           <li><a href="">SubMenu5-2</a></li>
           <li><a href="">SubMenu5-3</a></li>
         </ul>
      </li>
   </ul>
</div>

<div id="divImg">

</div>

<script type="text/javascript">
   function showImage(obj){
	   /* console.log(obj.id+' '+obj.innerHTML+' '+obj.firstChild.nodeValue+' '+obj.nodeName+' '+obj.nodeType+' '+obj.firstChild.nodeType);
	   alert(obj.id+' '+obj.innerHTML+' '+obj.firstChild.nodeValue+' '+obj.nodeName+' '+obj.nodeType+' '+obj.firstChild.nodeType); */
	   /* alert(obj.nodeType==1?obj.nodeName:'Error');
	   alert(obj.firstChild.nodeType==3?obj.firstChild.nodeValue:'Error'); */
	   var div=document.getElementById("divImg");	 
	    switch (obj.firstChild.nodeValue) {
	    case 'SubMenu1':	
	     div.innerHTML=obj.firstChild.nodeValue+'선택';
		break;
	    case 'SubMenu2':
	    	div.innerHTML=obj.firstChild.nodeValue+'선택';
		break;
	    case 'SubMenu3':		
	    	div.innerHTML=obj.firstChild.nodeValue+'선택';
		break;
	default:
		break;
	} 
	   
	   
   }
</script>
</body>
</html>




