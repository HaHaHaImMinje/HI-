<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  select {
	 width: 200px;
	 color: white;
	 background: gray;
   }
</style>
<script type="text/javascript">
  function changeLoc(obj){
	  //alert(obj.value+' '+obj.selectedIndex);
	  var array=new Array(7);
	  array[0]="��ü,������,������,���ϱ�,������,���Ǳ�,������";
	  array[1]="��ü,������,����,���ؽ�,��ô��,���ʽ�,���ֱ�,���ֽ�";
	  array[2]="��ü,����,����,���籸,������";
	  array[3]="��ü,���ֽ�,���ؽ�,��õ��";
	  array[4]="��ü,���ֽ�,���ֽ�,��õ��,������";
	  var loc2=document.getElementById("loc2");
	  if(obj.selectedIndex!=0){
		  loc2.style.display='inline';
	  }else{
		  loc2.style.display='none';
	  }
	  var flag=parseInt(obj.selectedIndex);
	 
	   var temp_view="";
	  if(flag>0 && flag<6){
		  temp_view=array[flag-1].split(",");
	  }
	  loc2.length=1;
	  for(i=0;i<temp_view.length;i++){
		  loc2.options[i]=new Option(temp_view[i],temp_view[i]);//label,value
	  }
  }
</script>
</head>
<body>
  <select id="loc" name="loc" onchange="changeLoc(this)">
    <option selected="selected">����</option>
    <option value="����">����</option>
    <option value="����">����</option>
    <option value="���">���</option>
    <option value="�泲">�泲</option>   
    <option value="����">����</option>
       
  </select>
  &nbsp;&nbsp;
  <select id="loc2" name="loc2" style="display: none;">
     <option selected="selected">�����ϼ���</option>
  </select>
</body>


</html>











