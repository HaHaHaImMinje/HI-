<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
      function showMessage(obj){
    	//alert('Message'+obj.innerHTML);
    	//console.log(obj.id+" Contents:"+obj.innerHTML);
      } 
      function hide(element){
    	  element.innerHTML="";
      }
</script>
</head>
<body>
   <!-- <p id="p1" onclick="showMessage(this)">ActionServlet1</p>
   <p id="p2" onclick="showMessage(this)">ActionServlet2</p>
   <p id="p3" onclick="showMessage(this)">ActionServlet3</p> -->
  
   <pre ondblclick="hide(this)">
    ���ع��� ��λ���
   ������ �⵵�� �ϳ����� �����ϻ�
   �츮���� ����
   </pre>
   <pre ondblclick="hide(this)">
    ���ع��� ��λ���
   ������ �⵵�� �ϳ����� �����ϻ�
   �츮���� ����
   </pre>
   <pre ondblclick="hide(this)">
    ���ع��� ��λ���
   ������ �⵵�� �ϳ����� �����ϻ�
   �츮���� ����
   </pre>   
   
     <p onclick="hide(this)">
    ���ع��� ��λ���
   ������ �⵵�� �ϳ����� �����ϻ�
   �츮���� ����
   </p>
   <p onclick="hide(this)">
    ���ع��� ��λ���
   ������ �⵵�� �ϳ����� �����ϻ�
   �츮���� ����
   </p>
   <p onclick="hide(this)">
    ���ع��� ��λ���
   ������ �⵵�� �ϳ����� �����ϻ�
   �츮���� ����
   </p>
</body>
</html>










